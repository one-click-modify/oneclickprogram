#include <time.h>
#include <config.h>
#include <thrift/protocol/TCompactProtocol.h>
#include <thrift/transport/TSocket.h>
#include <thrift/transport/TTransportUtils.h>
#include "Monitor.h"

using namespace std;
using namespace apache::thrift;
using namespace apache::thrift::protocol;
using namespace apache::thrift::transport;

using namespace boost;

extern void WriteToLog(const char *pszFormat, ...);

void get_data_from_thrift(std::string local_ip, std::string server_ip, int port, int report_id, std::string str_input,std::string &str_output)
{
	TSocket *tSocekt = new TSocket(server_ip, port);
	tSocekt->setConnTimeout(2000);
//	boost::shared_ptr<TTransport> socket(new TSocket(server_ip, port));
	boost::shared_ptr<TTransport> socket(tSocekt);
	
	boost::shared_ptr<TTransport> transport(new TBufferedTransport(socket));
	boost::shared_ptr<TProtocol> protocol(new TCompactProtocol(transport));
	MonitorClient client(protocol);
	try
	{
		transport->open();
		time_t rawtime;
		time(&rawtime);
		std::string str_rtn;

		client.get(str_rtn,local_ip,(int64_t)time,report_id,str_input);
		str_output = str_rtn;
		transport->close();
	}
	catch( TTransportException ttx )
	{
		WriteToLog("%s%d%s%s","Report ID:",report_id,".Thrift transport error:",ttx.what());
		str_output = "null";
		transport->close();
	}
	catch ( TException &tx ) {
		WriteToLog("%s%d%s%s","Report ID:",report_id,".Thrift other error:",tx.what());
		str_output = "null";
		transport->close();
	}
	catch(...)
	{
		WriteToLog("%s%d%s","Report ID:",report_id,".Something must be error in thrift!!!!");
		str_output = "null";
		transport->close();
		return ;
	}
}