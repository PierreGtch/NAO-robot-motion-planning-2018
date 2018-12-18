#include <iostream>


#include <boost/shared_ptr.hpp>
#include <alerror/alerror.h>
#include <alcommon/albroker.h>
#include <alcommon/albrokermanager.h>

int main(int argc, char* argv[])
{

  if(argc < 2)
  {
    std::cerr << "Usage: custommain NAO_IP" << std::endl;
    return 2;
  }

  // We will try to connect our broker to an running NAOqi:
  const std::string parentBrokerIP = std::string(argv[1]);
  int parentBrokerPort = 9559;

  // Need this to for SOAP serialization of floats to work
  setlocale(LC_NUMERIC, "C");

  // A broker needs a name, an IP and a port:
  const std::string brokerName = "mybroker";
  // FIXME: would be a good idea to look for a free port first
  int brokerPort = 54000;
  const std::string brokerIp   = "0.0.0.0";  // listen to anything

  boost::shared_ptr<AL::ALBroker> broker;
  try
  {
    broker = AL::ALBroker::createBroker(
        brokerName,
        brokerIp,
        brokerPort,
        parentBrokerIP,
        parentBrokerPort,
        0    // you can pass various options for the broker creation,
             // but default is fine
      );
  }
  catch(const AL::ALError& /* e */)
  {
    std::cerr << "Faild to connect broker to: "
              << parentBrokerIP
              << ":"
              << parentBrokerPort
              << std::endl;
    AL::ALBrokerManager::getInstance()->killAllBroker();
    AL::ALBrokerManager::kill();
    return 1;
  }

  // Deal with ALBrokerManager singleton:
  AL::ALBrokerManager::setInstance(broker->fBrokerManager.lock());
  AL::ALBrokerManager::getInstance()->addBroker(broker);

  // Now it's time to load your module with
  // AL::ALModule::createModule<YourModule>(broker, "YourModule");

  return 0;
}
