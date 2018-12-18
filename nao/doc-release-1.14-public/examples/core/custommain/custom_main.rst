.. _cpp-tutos-custom-main:


Creating a custom main
======================

Sometimes you may want to change the main.cpp of your module.

A typicall case may be to change the option parsing, or not use
the big black box which is `ALTools::mainFunction`

:download:`main.cpp <main.cpp>`

.. literalinclude:: main.cpp
   :language: cpp

Some few remarks:

* The call to ``setlocale`` is very important. Due to SOAP issues, you must make
  sure your client and your server are using the same LC_NUMERIC settings.

* In the example there is no parsing of options, so you must add the code to
  handle ``--pip`` and ``--pport`` yourself.
  Using ``boost::program_options``, this looks like:


.. code-block:: cpp


  #include <boost/program_options.hpp>
  namespace po = boost::program_options;
  po::options_description desc("Allowed options");

  int main(int argc, char* argv[])
  {

    std::string parentBrokerIP;
    int parentBrokerPort;


    qi::init(argc, argv);
    po::options_description desc("Allowed options");


    desc.add_options()
      ("pip", po::value<std::string>(&parentBrokerIP)->default_value("127.0.0.1"), "IP of the parent broker. Default: 127.0.0.1")
      ("pport", po::value<int>(&parentBrokerPort)->default_value(9559), "Port of the parent broker. Default: 9559")
      ;


    // Map containing all the options with their values
    po::variables_map vm;

    // program option library throws all kind of errors, we just catch them
    // all, print usage and exit
    try
    {
      po::store(po::parse_command_line(argc, argv, desc), vm);
      po::notify(vm);
    }
    catch(po::error &e)
    {
      std::cerr << e.what() << std::endl;
      std::cout << desc << std::endl;
      exit(1);
    }


    // Now use parentBrokerIP, parentBrokerPort when creating ALBroker







