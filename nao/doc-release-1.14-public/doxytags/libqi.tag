<?xml version='1.0' encoding='ISO-8859-1' standalone='yes' ?>
<tagfile>
  <compound kind="file">
    <name>config.hpp</name>
    <path>/home/opennao/work/doc/release-1.14/public/lib/libqi/qi/</path>
    <filename>config_8hpp</filename>
    <includes id="macro_8hpp" name="macro.hpp" local="no" imported="no">qi/macro.hpp</includes>
    <member kind="define">
      <type>#define</type>
      <name>QI_API</name>
      <anchorfile>config_8hpp.html</anchorfile>
      <anchor>ac45a270021d1bfae15cc079cbc39c4a4</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>QI_API_LEVEL</name>
      <anchorfile>group__qi.html</anchorfile>
      <anchor>ga46fa8083a023cffec6f5fbf9f34df59f</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>error.hpp</name>
    <path>/home/opennao/work/doc/release-1.14/public/lib/libqi/qi/</path>
    <filename>error_8hpp</filename>
    <includes id="macro_8hpp" name="macro.hpp" local="no" imported="no">qi/macro.hpp</includes>
    <includes id="config_8hpp" name="config.hpp" local="no" imported="no">qi/config.hpp</includes>
    <class kind="class">qi::os::QiException</class>
    <namespace>qi</namespace>
    <namespace>qi::os</namespace>
  </compound>
  <compound kind="file">
    <name>log.hpp</name>
    <path>/home/opennao/work/doc/release-1.14/public/lib/libqi/qi/</path>
    <filename>log_8hpp</filename>
    <includes id="config_8hpp" name="config.hpp" local="no" imported="no">qi/config.hpp</includes>
    <includes id="os_8hpp" name="os.hpp" local="no" imported="no">qi/os.hpp</includes>
    <class kind="class">qi::log::LogStream</class>
    <namespace>qi</namespace>
    <namespace>qi::log</namespace>
    <member kind="define">
      <type>#define</type>
      <name>qiLogDebug</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>gab87485b8572032c41e89d03a87bb08f2</anchor>
      <arglist>(...)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>qiLogVerbose</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>gab65475f84c62e24cae63aec6c9c3472c</anchor>
      <arglist>(...)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>qiLogInfo</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>ga6ff5599ad64bcbae2ce9ff1dfcef5207</anchor>
      <arglist>(...)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>qiLogWarning</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>ga99b1c08c85f656dd731c8ddd6d1edc36</anchor>
      <arglist>(...)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>qiLogError</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>ga3c9aae758ef241dc7e142cc7e43a64be</anchor>
      <arglist>(...)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>qiLogFatal</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>ga861349deff9d9360deed286ba845fd2a</anchor>
      <arglist>(...)</arglist>
    </member>
    <member kind="typedef">
      <type>boost::function7&lt; void, const qi::log::LogLevel, const qi::os::timeval, const char *, const char *, const char *, const char *, int &gt;</type>
      <name>logFuncHandler</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>gadf819c6426c79fa7f6e8f5afbb303b82</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <name>LogLevel</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>gae6c7034d798993006c80ca45f56ac5dd</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>silent</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>gae6c7034d798993006c80ca45f56ac5dda5ef82d69bcb5488b995708054bdf0c36</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>fatal</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>gae6c7034d798993006c80ca45f56ac5dda0367f834029b5b790c3f30ca0da079bf</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>error</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>gae6c7034d798993006c80ca45f56ac5dda250edffccd1138a961df809a0af50edc</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>warning</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>gae6c7034d798993006c80ca45f56ac5dda229a79b6ddd0a8ab19c2b9a5af222ce6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>info</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>gae6c7034d798993006c80ca45f56ac5ddaca4a415ffe8450643a5d35d92e7b93ae</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>verbose</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>gae6c7034d798993006c80ca45f56ac5dda6a5464b5bfad9fcaa3aedb2dfd1c907d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>debug</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>gae6c7034d798993006c80ca45f56ac5dda49f643703dddd81c7c06827902c6ad1e</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>QI_API void</type>
      <name>init</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>ga59efd34191b8501bb07f49e2059bf755</anchor>
      <arglist>(qi::log::LogLevel verb=qi::log::info, int ctx=0, bool synchronous=true)</arglist>
    </member>
    <member kind="function">
      <type>QI_API void</type>
      <name>destroy</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>ga33fd98fa824955339382dc97fe14bf94</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>QI_API void</type>
      <name>log</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>gaee44db080aea8279e7c5e9f5b3de3b52</anchor>
      <arglist>(const qi::log::LogLevel verb, const char *category, const char *msg, const char *file=&quot;&quot;, const char *fct=&quot;&quot;, const int line=0)</arglist>
    </member>
    <member kind="function">
      <type>QI_API const char *</type>
      <name>logLevelToString</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>ga78104951a5ca10354e5f3f0f83bf3d2e</anchor>
      <arglist>(const qi::log::LogLevel verb)</arglist>
    </member>
    <member kind="function">
      <type>QI_API qi::log::LogLevel</type>
      <name>stringToLogLevel</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>ga5f98edc083e04586b2faa5e29edb5676</anchor>
      <arglist>(const char *verb)</arglist>
    </member>
    <member kind="function">
      <type>QI_API void</type>
      <name>setVerbosity</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>gad09b775f11040ad55e281b085070fe51</anchor>
      <arglist>(const qi::log::LogLevel lv)</arglist>
    </member>
    <member kind="function">
      <type>QI_API qi::log::LogLevel</type>
      <name>verbosity</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>ga2a0f86188fa6d13182ecd90162647f7c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>QI_API void</type>
      <name>setContext</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>ga7744f59293286b3ce5ff5b76f1aec0a1</anchor>
      <arglist>(int ctx)</arglist>
    </member>
    <member kind="function">
      <type>QI_API int</type>
      <name>context</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>ga8ba6e57339348f416dcb9b0f2019b01a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>QI_API void</type>
      <name>setSynchronousLog</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>ga1c0b4d711826eeb91c17fd33ebc14a9d</anchor>
      <arglist>(bool sync)</arglist>
    </member>
    <member kind="function">
      <type>QI_API void</type>
      <name>addLogHandler</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>gab1027252c216b381889daa1edb71a685</anchor>
      <arglist>(const std::string &amp;name, qi::log::logFuncHandler fct)</arglist>
    </member>
    <member kind="function">
      <type>QI_API void</type>
      <name>removeLogHandler</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>ga4ee259a83a69902124fcf35264077481</anchor>
      <arglist>(const std::string &amp;name)</arglist>
    </member>
    <member kind="function">
      <type>QI_API void</type>
      <name>flush</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>ga7c0ae312862118fc43ba60be542942d0</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>macro.hpp</name>
    <path>/home/opennao/work/doc/release-1.14/public/lib/libqi/qi/</path>
    <filename>macro_8hpp</filename>
    <member kind="define">
      <type>#define</type>
      <name>QI_API_DEPRECATED</name>
      <anchorfile>group__qimacro.html</anchorfile>
      <anchor>gaea06bc58307b46ea3a172b30dc9b6714</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>QI_EXPORT_API</name>
      <anchorfile>group__qimacro.html</anchorfile>
      <anchor>ga25d29c44af844681c08a916ea66eece0</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>QI_IMPORT_API</name>
      <anchorfile>group__qimacro.html</anchorfile>
      <anchor>ga4b015697dac88e5c25f6896b066b6644</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>QI_COMPILER_WARNING</name>
      <anchorfile>group__qimacro.html</anchorfile>
      <anchor>ga30bb2460b66800e0b0fc06464da805ed</anchor>
      <arglist>(x)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>QI_DEPRECATED_HEADER</name>
      <anchorfile>group__qimacro.html</anchorfile>
      <anchor>gad20541acb819d447f16f35e9ac2b9110</anchor>
      <arglist>(x)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>QI_DISALLOW_COPY_AND_ASSIGN</name>
      <anchorfile>group__qimacro.html</anchorfile>
      <anchor>ga9cf2aea04bbf18e2702ef4ce6e9f07e9</anchor>
      <arglist>(type)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>QI_WARN_UNUSED_RESULT</name>
      <anchorfile>macro_8hpp.html</anchorfile>
      <anchor>afb9e48ed3d9f468bf9148637022f5864</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>QI_UNUSED</name>
      <anchorfile>group__qimacro.html</anchorfile>
      <anchor>ga59a17352f6a3730fdc42e54f65d1bbe9</anchor>
      <arglist>(x)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>os.hpp</name>
    <path>/home/opennao/work/doc/release-1.14/public/lib/libqi/qi/</path>
    <filename>os_8hpp</filename>
    <includes id="config_8hpp" name="config.hpp" local="no" imported="no">qi/config.hpp</includes>
    <class kind="struct">qi::os::timeval</class>
    <namespace>qi</namespace>
    <namespace>qi::os</namespace>
    <member kind="function">
      <type>QI_API FILE *</type>
      <name>fopen</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>ga342a8a2f99dcdb247cae04c102d37ad4</anchor>
      <arglist>(const char *filename, const char *mode)</arglist>
    </member>
    <member kind="function">
      <type>QI_API int</type>
      <name>stat</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>gaca54fad9ebe84746e9edd893ce7b86df</anchor>
      <arglist>(const char *filename, struct stat *pstat)</arglist>
    </member>
    <member kind="function">
      <type>QI_API int</type>
      <name>checkdbg</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>ga6dff1e32373088b954202848b6e0bd5e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>QI_API std::string</type>
      <name>home</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>gab8ff4e17104c32dd4cf883897e6f696c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>QI_API std::string</type>
      <name>mktmpdir</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>ga61ff308a6f34f5243455c64e6c7bfeb0</anchor>
      <arglist>(const char *prefix=&quot;&quot;)</arglist>
    </member>
    <member kind="function">
      <type>QI_API std::string</type>
      <name>tmp</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>ga6d2792e3a5a51390408f935a0d19a06f</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>QI_API std::string</type>
      <name>gethostname</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>ga344bf85b74e8978cf16e24c772425f25</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>QI_API int</type>
      <name>getpid</name>
      <anchorfile>namespaceqi_1_1os.html</anchorfile>
      <anchor>a5258bbee7c61ce1724ec4d20c126a2de</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>QI_API int</type>
      <name>kill</name>
      <anchorfile>namespaceqi_1_1os.html</anchorfile>
      <anchor>a9e8a79c94e1f737a819afd8745e8a50a</anchor>
      <arglist>(int pid, int sig)</arglist>
    </member>
    <member kind="function">
      <type>QI_API bool</type>
      <name>hostIPAddrs</name>
      <anchorfile>namespaceqi_1_1os.html</anchorfile>
      <anchor>aed6e0d8a5e63f22eabc8f45d1272e04c</anchor>
      <arglist>(std::map&lt; std::string, std::vector&lt; std::string &gt; &gt; &amp;ifsMap)</arglist>
    </member>
    <member kind="function">
      <type>QI_API_DEPRECATED QI_API std::string</type>
      <name>tmpdir</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>gaffa8e0744dc0318599a17dd2cc3f1d38</anchor>
      <arglist>(const char *prefix=&quot;&quot;)</arglist>
    </member>
    <member kind="function">
      <type>QI_API std::string</type>
      <name>getenv</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>ga1618a98bfcd36dfa1e7661b89f1d4eaa</anchor>
      <arglist>(const char *var)</arglist>
    </member>
    <member kind="function">
      <type>QI_API int</type>
      <name>setenv</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>ga4ee7b375bc27384427fd797e95164cb0</anchor>
      <arglist>(const char *var, const char *value)</arglist>
    </member>
    <member kind="function">
      <type>QI_API void</type>
      <name>sleep</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>ga957b15b60f5c43d548b1bd39014fd987</anchor>
      <arglist>(unsigned int seconds)</arglist>
    </member>
    <member kind="function">
      <type>QI_API void</type>
      <name>msleep</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>ga4484ac8bad4d40063f8240098a6ef499</anchor>
      <arglist>(unsigned int milliseconds)</arglist>
    </member>
    <member kind="function">
      <type>QI_API int</type>
      <name>gettimeofday</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>gacf5aa6bfe7217f0b4873b3d74cef6bfd</anchor>
      <arglist>(qi::os::timeval *tp)</arglist>
    </member>
    <member kind="function">
      <type>QI_API void *</type>
      <name>dlopen</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>ga9def1f3428f7a3c8863b872bcc829d7c</anchor>
      <arglist>(const char *filename, int flag=-1)</arglist>
    </member>
    <member kind="function">
      <type>QI_API int</type>
      <name>dlclose</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>ga522709b7b926ec2e993048ea2592ebb9</anchor>
      <arglist>(void *handle)</arglist>
    </member>
    <member kind="function">
      <type>QI_API void *</type>
      <name>dlsym</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>gab61394d3985dabc5a99c1f99bb9f648c</anchor>
      <arglist>(void *handle, const char *symbol)</arglist>
    </member>
    <member kind="function">
      <type>QI_API const char *</type>
      <name>dlerror</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>gaff4375fab3861b9e9d0bdb7084c3a693</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>QI_API int</type>
      <name>spawnvp</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>gaed85e532b61fe6b71445fadfaada4681</anchor>
      <arglist>(char *const argv[])</arglist>
    </member>
    <member kind="function">
      <type>QI_API int</type>
      <name>spawnlp</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>ga86f9b157059f82983ab9ab16b3c41e2c</anchor>
      <arglist>(const char *argv,...)</arglist>
    </member>
    <member kind="function">
      <type>QI_API int</type>
      <name>system</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>gaa4452c676efa459a280170aad04a1aa3</anchor>
      <arglist>(const char *command)</arglist>
    </member>
    <member kind="function">
      <type>QI_API int</type>
      <name>waitpid</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>gaec058fc361dd6032aa741b81cbee9ec8</anchor>
      <arglist>(int pid, int *status)</arglist>
    </member>
    <member kind="function">
      <type>QI_API unsigned short</type>
      <name>findAvailablePort</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>ga07c943b489e4b92d454489c421e00c5d</anchor>
      <arglist>(unsigned short port)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>path.hpp</name>
    <path>/home/opennao/work/doc/release-1.14/public/lib/libqi/qi/</path>
    <filename>path_8hpp</filename>
    <includes id="config_8hpp" name="config.hpp" local="no" imported="no">qi/config.hpp</includes>
    <namespace>qi::path</namespace>
    <namespace>qi</namespace>
    <member kind="function">
      <type>QI_API std::string</type>
      <name>sdkPrefix</name>
      <anchorfile>group__qipath.html</anchorfile>
      <anchor>gac24e444898103867f540b5c151b2d585</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>QI_API std::vector&lt; std::string &gt;</type>
      <name>getSdkPrefixes</name>
      <anchorfile>namespaceqi_1_1path_1_1detail.html</anchorfile>
      <anchor>a701f6ea9bb87f4e9f9ad9e85522b2765</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>QI_API void</type>
      <name>addOptionalSdkPrefix</name>
      <anchorfile>namespaceqi_1_1path_1_1detail.html</anchorfile>
      <anchor>a631ba0c430aa260865c93a98e23216a7</anchor>
      <arglist>(const char *prefix)</arglist>
    </member>
    <member kind="function">
      <type>QI_API void</type>
      <name>clearOptionalSdkPrefix</name>
      <anchorfile>namespaceqi_1_1path_1_1detail.html</anchorfile>
      <anchor>a7f928fe7639a624de65a8348a822b7ba</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>QI_API std::string</type>
      <name>findBin</name>
      <anchorfile>group__qipath.html</anchorfile>
      <anchor>ga7b285d67949e218ff180b8a807b91b02</anchor>
      <arglist>(const std::string &amp;name)</arglist>
    </member>
    <member kind="function">
      <type>QI_API std::string</type>
      <name>findLib</name>
      <anchorfile>group__qipath.html</anchorfile>
      <anchor>ga294da1c73c0f09abf9c8036a826a7521</anchor>
      <arglist>(const std::string &amp;name)</arglist>
    </member>
    <member kind="function">
      <type>QI_API std::string</type>
      <name>findConf</name>
      <anchorfile>group__qipath.html</anchorfile>
      <anchor>ga5c6a850547ba5cea80e8a1c0908395de</anchor>
      <arglist>(const std::string &amp;applicationName, const std::string &amp;filename)</arglist>
    </member>
    <member kind="function">
      <type>QI_API std::string</type>
      <name>findData</name>
      <anchorfile>group__qipath.html</anchorfile>
      <anchor>gafaf2564b9d20c61c991436285ecf8e79</anchor>
      <arglist>(const std::string &amp;applicationName, const std::string &amp;filename)</arglist>
    </member>
    <member kind="function">
      <type>QI_API std::vector&lt; std::string &gt;</type>
      <name>confPaths</name>
      <anchorfile>group__qipath.html</anchorfile>
      <anchor>ga331d7833b193d376132d2e1a264f3e19</anchor>
      <arglist>(const std::string &amp;applicationName=&quot;&quot;)</arglist>
    </member>
    <member kind="function">
      <type>QI_API std::vector&lt; std::string &gt;</type>
      <name>dataPaths</name>
      <anchorfile>group__qipath.html</anchorfile>
      <anchor>ga1cf5419fb1b074c926333cb4fa23b4be</anchor>
      <arglist>(const std::string &amp;applicationName=&quot;&quot;)</arglist>
    </member>
    <member kind="function">
      <type>QI_API std::vector&lt; std::string &gt;</type>
      <name>binPaths</name>
      <anchorfile>group__qipath.html</anchorfile>
      <anchor>ga5e147eb89d9bfaff6a59bcbe904a32a6</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>QI_API std::vector&lt; std::string &gt;</type>
      <name>libPaths</name>
      <anchorfile>group__qipath.html</anchorfile>
      <anchor>gab616481fb0bac1149e3f69a249402238</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>QI_API std::string</type>
      <name>userWritableDataPath</name>
      <anchorfile>group__qipath.html</anchorfile>
      <anchor>ga8ac79e5e8a4ac592ba7bfd6010195a7a</anchor>
      <arglist>(const std::string &amp;applicationName, const std::string &amp;filename)</arglist>
    </member>
    <member kind="function">
      <type>QI_API std::string</type>
      <name>userWritableConfPath</name>
      <anchorfile>group__qipath.html</anchorfile>
      <anchor>gafd05bcc178452a02ccf31cab8331c1a4</anchor>
      <arglist>(const std::string &amp;applicationName, const std::string &amp;filename=&quot;&quot;)</arglist>
    </member>
  </compound>
  <compound kind="page">
    <name>qilogguide</name>
    <title>qi::log Developer Guide</title>
    <filename>qilogguide</filename>
    <docanchor file="qilogguide">options</docanchor>
    <docanchor file="qilogguide">compat</docanchor>
    <docanchor file="qilogguide">handlers</docanchor>
    <docanchor file="qilogguide">verbosity</docanchor>
    <docanchor file="qipathguide">Overview</docanchor>
    <docanchor file="qilogguide">hierarchicalcategory</docanchor>
    <docanchor file="qilogguide">asynchronouslog</docanchor>
    <docanchor file="qilogguide">codelocation</docanchor>
    <docanchor file="qilogguide">example</docanchor>
    <docanchor file="qipathguide">link</docanchor>
    <docanchor file="qilogguide">OverviewLog</docanchor>
  </compound>
  <compound kind="page">
    <name>qipathguide</name>
    <title>qi::path Developer Guide</title>
    <filename>qipathguide</filename>
    <docanchor file="qipathguide">Using</docanchor>
    <docanchor file="qipathguide">Configs</docanchor>
    <docanchor file="qipathguide">Overview</docanchor>
    <docanchor file="qipathguide">Example</docanchor>
    <docanchor file="qipathguide">OverviewProblem</docanchor>
    <docanchor file="qipathguide">OverviewSdk</docanchor>
    <docanchor file="qipathguide">link</docanchor>
    <docanchor file="qipathguide">Notes</docanchor>
    <docanchor file="qipathguide">OverviewSolution</docanchor>
  </compound>
  <compound kind="group">
    <name>qimacro</name>
    <title>qi macro</title>
    <filename>group__qimacro.html</filename>
    <member kind="define">
      <type>#define</type>
      <name>QI_DEPRECATED_HEADER</name>
      <anchorfile>group__qimacro.html</anchorfile>
      <anchor>gad20541acb819d447f16f35e9ac2b9110</anchor>
      <arglist>(x)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>QI_COMPILER_WARNING</name>
      <anchorfile>group__qimacro.html</anchorfile>
      <anchor>ga30bb2460b66800e0b0fc06464da805ed</anchor>
      <arglist>(x)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>QI_API_DEPRECATED</name>
      <anchorfile>group__qimacro.html</anchorfile>
      <anchor>gaea06bc58307b46ea3a172b30dc9b6714</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>QI_IMPORT_API</name>
      <anchorfile>group__qimacro.html</anchorfile>
      <anchor>ga4b015697dac88e5c25f6896b066b6644</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>QI_EXPORT_API</name>
      <anchorfile>group__qimacro.html</anchorfile>
      <anchor>ga25d29c44af844681c08a916ea66eece0</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>QI_DISALLOW_COPY_AND_ASSIGN</name>
      <anchorfile>group__qimacro.html</anchorfile>
      <anchor>ga9cf2aea04bbf18e2702ef4ce6e9f07e9</anchor>
      <arglist>(type)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>QI_UNUSED</name>
      <anchorfile>group__qimacro.html</anchorfile>
      <anchor>ga59a17352f6a3730fdc42e54f65d1bbe9</anchor>
      <arglist>(x)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>qios</name>
    <title>qi::os</title>
    <filename>group__qios.html</filename>
    <class kind="struct">qi::os::timeval</class>
    <namespace>qi::os</namespace>
    <member kind="function">
      <type>QI_API FILE *</type>
      <name>fopen</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>ga342a8a2f99dcdb247cae04c102d37ad4</anchor>
      <arglist>(const char *filename, const char *mode)</arglist>
    </member>
    <member kind="function">
      <type>QI_API int</type>
      <name>stat</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>gaca54fad9ebe84746e9edd893ce7b86df</anchor>
      <arglist>(const char *filename, struct stat *pstat)</arglist>
    </member>
    <member kind="function">
      <type>QI_API int</type>
      <name>checkdbg</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>ga6dff1e32373088b954202848b6e0bd5e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>QI_API std::string</type>
      <name>home</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>gab8ff4e17104c32dd4cf883897e6f696c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>QI_API std::string</type>
      <name>mktmpdir</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>ga61ff308a6f34f5243455c64e6c7bfeb0</anchor>
      <arglist>(const char *prefix=&quot;&quot;)</arglist>
    </member>
    <member kind="function">
      <type>QI_API_DEPRECATED QI_API std::string</type>
      <name>tmpdir</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>gaffa8e0744dc0318599a17dd2cc3f1d38</anchor>
      <arglist>(const char *prefix=&quot;&quot;)</arglist>
    </member>
    <member kind="function">
      <type>QI_API std::string</type>
      <name>tmp</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>ga6d2792e3a5a51390408f935a0d19a06f</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>QI_API std::string</type>
      <name>gethostname</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>ga344bf85b74e8978cf16e24c772425f25</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>QI_API std::string</type>
      <name>getenv</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>ga1618a98bfcd36dfa1e7661b89f1d4eaa</anchor>
      <arglist>(const char *var)</arglist>
    </member>
    <member kind="function">
      <type>QI_API int</type>
      <name>setenv</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>ga4ee7b375bc27384427fd797e95164cb0</anchor>
      <arglist>(const char *var, const char *value)</arglist>
    </member>
    <member kind="function">
      <type>QI_API void</type>
      <name>sleep</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>ga957b15b60f5c43d548b1bd39014fd987</anchor>
      <arglist>(unsigned int seconds)</arglist>
    </member>
    <member kind="function">
      <type>QI_API void</type>
      <name>msleep</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>ga4484ac8bad4d40063f8240098a6ef499</anchor>
      <arglist>(unsigned int milliseconds)</arglist>
    </member>
    <member kind="function">
      <type>QI_API int</type>
      <name>gettimeofday</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>gacf5aa6bfe7217f0b4873b3d74cef6bfd</anchor>
      <arglist>(qi::os::timeval *tp)</arglist>
    </member>
    <member kind="function">
      <type>QI_API void *</type>
      <name>dlopen</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>ga9def1f3428f7a3c8863b872bcc829d7c</anchor>
      <arglist>(const char *filename, int flag=-1)</arglist>
    </member>
    <member kind="function">
      <type>QI_API int</type>
      <name>dlclose</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>ga522709b7b926ec2e993048ea2592ebb9</anchor>
      <arglist>(void *handle)</arglist>
    </member>
    <member kind="function">
      <type>QI_API void *</type>
      <name>dlsym</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>gab61394d3985dabc5a99c1f99bb9f648c</anchor>
      <arglist>(void *handle, const char *symbol)</arglist>
    </member>
    <member kind="function">
      <type>QI_API const char *</type>
      <name>dlerror</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>gaff4375fab3861b9e9d0bdb7084c3a693</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>QI_API int</type>
      <name>spawnvp</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>gaed85e532b61fe6b71445fadfaada4681</anchor>
      <arglist>(char *const argv[])</arglist>
    </member>
    <member kind="function">
      <type>QI_API int</type>
      <name>spawnlp</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>ga86f9b157059f82983ab9ab16b3c41e2c</anchor>
      <arglist>(const char *argv,...)</arglist>
    </member>
    <member kind="function">
      <type>QI_API int</type>
      <name>system</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>gaa4452c676efa459a280170aad04a1aa3</anchor>
      <arglist>(const char *command)</arglist>
    </member>
    <member kind="function">
      <type>QI_API int</type>
      <name>waitpid</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>gaec058fc361dd6032aa741b81cbee9ec8</anchor>
      <arglist>(int pid, int *status)</arglist>
    </member>
    <member kind="function">
      <type>QI_API unsigned short</type>
      <name>findAvailablePort</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>ga07c943b489e4b92d454489c421e00c5d</anchor>
      <arglist>(unsigned short port)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>qi</name>
    <title>qi general</title>
    <filename>group__qi.html</filename>
    <namespace>qi</namespace>
    <member kind="define">
      <type>#define</type>
      <name>QI_API_LEVEL</name>
      <anchorfile>group__qi.html</anchorfile>
      <anchor>ga46fa8083a023cffec6f5fbf9f34df59f</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>std::codecvt&lt; wchar_t, char, std::mbstate_t &gt;</type>
      <name>codecvt_type</name>
      <anchorfile>group__qi.html</anchorfile>
      <anchor>ga5487839dcbabdbd4cbdef26274df752a</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>QI_API const codecvt_type &amp;</type>
      <name>unicodeFacet</name>
      <anchorfile>group__qi.html</anchorfile>
      <anchor>ga36969e04da33b41f991b3b23fd7aa329</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>QI_API void</type>
      <name>init</name>
      <anchorfile>group__qi.html</anchorfile>
      <anchor>ga0b536bf8de2d544abd2468d80c595943</anchor>
      <arglist>(int argc, char *argv[])</arglist>
    </member>
    <member kind="function">
      <type>QI_API int</type>
      <name>argc</name>
      <anchorfile>group__qi.html</anchorfile>
      <anchor>gadf0f446dd12f31cb0f4a747b262af9ff</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>QI_API const char **</type>
      <name>argv</name>
      <anchorfile>group__qi.html</anchorfile>
      <anchor>ga58f3ed622590f4c553c9ad179bcea2ec</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>QI_API const char *</type>
      <name>program</name>
      <anchorfile>group__qi.html</anchorfile>
      <anchor>ga3e9312d2b3395bcba1749d532c63b0d9</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>qilog</name>
    <title>qi::log</title>
    <filename>group__qilog.html</filename>
    <class kind="class">qi::log::ConsoleLogHandler</class>
    <class kind="class">qi::log::FileLogHandler</class>
    <class kind="class">qi::log::HeadFileLogHandler</class>
    <class kind="class">qi::log::TailFileLogHandler</class>
    <class kind="class">qi::log::LogStream</class>
    <namespace>qi::log</namespace>
    <member kind="define">
      <type>#define</type>
      <name>qiLogDebug</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>gab87485b8572032c41e89d03a87bb08f2</anchor>
      <arglist>(...)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>qiLogVerbose</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>gab65475f84c62e24cae63aec6c9c3472c</anchor>
      <arglist>(...)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>qiLogInfo</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>ga6ff5599ad64bcbae2ce9ff1dfcef5207</anchor>
      <arglist>(...)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>qiLogWarning</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>ga99b1c08c85f656dd731c8ddd6d1edc36</anchor>
      <arglist>(...)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>qiLogError</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>ga3c9aae758ef241dc7e142cc7e43a64be</anchor>
      <arglist>(...)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>qiLogFatal</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>ga861349deff9d9360deed286ba845fd2a</anchor>
      <arglist>(...)</arglist>
    </member>
    <member kind="typedef">
      <type>boost::function7&lt; void, const qi::log::LogLevel, const qi::os::timeval, const char *, const char *, const char *, const char *, int &gt;</type>
      <name>logFuncHandler</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>gadf819c6426c79fa7f6e8f5afbb303b82</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <name>LogLevel</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>gae6c7034d798993006c80ca45f56ac5dd</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>silent</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>gae6c7034d798993006c80ca45f56ac5dda5ef82d69bcb5488b995708054bdf0c36</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>fatal</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>gae6c7034d798993006c80ca45f56ac5dda0367f834029b5b790c3f30ca0da079bf</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>error</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>gae6c7034d798993006c80ca45f56ac5dda250edffccd1138a961df809a0af50edc</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>warning</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>gae6c7034d798993006c80ca45f56ac5dda229a79b6ddd0a8ab19c2b9a5af222ce6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>info</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>gae6c7034d798993006c80ca45f56ac5ddaca4a415ffe8450643a5d35d92e7b93ae</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>verbose</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>gae6c7034d798993006c80ca45f56ac5dda6a5464b5bfad9fcaa3aedb2dfd1c907d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>debug</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>gae6c7034d798993006c80ca45f56ac5dda49f643703dddd81c7c06827902c6ad1e</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>QI_API void</type>
      <name>init</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>ga59efd34191b8501bb07f49e2059bf755</anchor>
      <arglist>(qi::log::LogLevel verb=qi::log::info, int ctx=0, bool synchronous=true)</arglist>
    </member>
    <member kind="function">
      <type>QI_API void</type>
      <name>destroy</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>ga33fd98fa824955339382dc97fe14bf94</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>QI_API void</type>
      <name>log</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>gaee44db080aea8279e7c5e9f5b3de3b52</anchor>
      <arglist>(const qi::log::LogLevel verb, const char *category, const char *msg, const char *file=&quot;&quot;, const char *fct=&quot;&quot;, const int line=0)</arglist>
    </member>
    <member kind="function">
      <type>QI_API const char *</type>
      <name>logLevelToString</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>ga78104951a5ca10354e5f3f0f83bf3d2e</anchor>
      <arglist>(const qi::log::LogLevel verb)</arglist>
    </member>
    <member kind="function">
      <type>QI_API qi::log::LogLevel</type>
      <name>stringToLogLevel</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>ga5f98edc083e04586b2faa5e29edb5676</anchor>
      <arglist>(const char *verb)</arglist>
    </member>
    <member kind="function">
      <type>QI_API void</type>
      <name>setVerbosity</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>gad09b775f11040ad55e281b085070fe51</anchor>
      <arglist>(const qi::log::LogLevel lv)</arglist>
    </member>
    <member kind="function">
      <type>QI_API qi::log::LogLevel</type>
      <name>verbosity</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>ga2a0f86188fa6d13182ecd90162647f7c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>QI_API void</type>
      <name>setContext</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>ga7744f59293286b3ce5ff5b76f1aec0a1</anchor>
      <arglist>(int ctx)</arglist>
    </member>
    <member kind="function">
      <type>QI_API int</type>
      <name>context</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>ga8ba6e57339348f416dcb9b0f2019b01a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>QI_API void</type>
      <name>setSynchronousLog</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>ga1c0b4d711826eeb91c17fd33ebc14a9d</anchor>
      <arglist>(bool sync)</arglist>
    </member>
    <member kind="function">
      <type>QI_API void</type>
      <name>addLogHandler</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>gab1027252c216b381889daa1edb71a685</anchor>
      <arglist>(const std::string &amp;name, qi::log::logFuncHandler fct)</arglist>
    </member>
    <member kind="function">
      <type>QI_API void</type>
      <name>removeLogHandler</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>ga4ee259a83a69902124fcf35264077481</anchor>
      <arglist>(const std::string &amp;name)</arglist>
    </member>
    <member kind="function">
      <type>QI_API void</type>
      <name>flush</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>ga7c0ae312862118fc43ba60be542942d0</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>qipath</name>
    <title>qi::path</title>
    <filename>group__qipath.html</filename>
    <namespace>qi::path</namespace>
    <member kind="function">
      <type>QI_API std::string</type>
      <name>sdkPrefix</name>
      <anchorfile>group__qipath.html</anchorfile>
      <anchor>gac24e444898103867f540b5c151b2d585</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>QI_API std::string</type>
      <name>findBin</name>
      <anchorfile>group__qipath.html</anchorfile>
      <anchor>ga7b285d67949e218ff180b8a807b91b02</anchor>
      <arglist>(const std::string &amp;name)</arglist>
    </member>
    <member kind="function">
      <type>QI_API std::string</type>
      <name>findLib</name>
      <anchorfile>group__qipath.html</anchorfile>
      <anchor>ga294da1c73c0f09abf9c8036a826a7521</anchor>
      <arglist>(const std::string &amp;name)</arglist>
    </member>
    <member kind="function">
      <type>QI_API std::string</type>
      <name>findConf</name>
      <anchorfile>group__qipath.html</anchorfile>
      <anchor>ga5c6a850547ba5cea80e8a1c0908395de</anchor>
      <arglist>(const std::string &amp;applicationName, const std::string &amp;filename)</arglist>
    </member>
    <member kind="function">
      <type>QI_API std::string</type>
      <name>findData</name>
      <anchorfile>group__qipath.html</anchorfile>
      <anchor>gafaf2564b9d20c61c991436285ecf8e79</anchor>
      <arglist>(const std::string &amp;applicationName, const std::string &amp;filename)</arglist>
    </member>
    <member kind="function">
      <type>QI_API std::vector&lt; std::string &gt;</type>
      <name>confPaths</name>
      <anchorfile>group__qipath.html</anchorfile>
      <anchor>ga331d7833b193d376132d2e1a264f3e19</anchor>
      <arglist>(const std::string &amp;applicationName=&quot;&quot;)</arglist>
    </member>
    <member kind="function">
      <type>QI_API std::vector&lt; std::string &gt;</type>
      <name>dataPaths</name>
      <anchorfile>group__qipath.html</anchorfile>
      <anchor>ga1cf5419fb1b074c926333cb4fa23b4be</anchor>
      <arglist>(const std::string &amp;applicationName=&quot;&quot;)</arglist>
    </member>
    <member kind="function">
      <type>QI_API std::vector&lt; std::string &gt;</type>
      <name>binPaths</name>
      <anchorfile>group__qipath.html</anchorfile>
      <anchor>ga5e147eb89d9bfaff6a59bcbe904a32a6</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>QI_API std::vector&lt; std::string &gt;</type>
      <name>libPaths</name>
      <anchorfile>group__qipath.html</anchorfile>
      <anchor>gab616481fb0bac1149e3f69a249402238</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>QI_API std::string</type>
      <name>userWritableDataPath</name>
      <anchorfile>group__qipath.html</anchorfile>
      <anchor>ga8ac79e5e8a4ac592ba7bfd6010195a7a</anchor>
      <arglist>(const std::string &amp;applicationName, const std::string &amp;filename)</arglist>
    </member>
    <member kind="function">
      <type>QI_API std::string</type>
      <name>userWritableConfPath</name>
      <anchorfile>group__qipath.html</anchorfile>
      <anchor>gafd05bcc178452a02ccf31cab8331c1a4</anchor>
      <arglist>(const std::string &amp;applicationName, const std::string &amp;filename=&quot;&quot;)</arglist>
    </member>
  </compound>
  <compound kind="namespace">
    <name>qi</name>
    <filename>namespaceqi.html</filename>
    <namespace>qi::log</namespace>
    <namespace>qi::os</namespace>
    <namespace>qi::path</namespace>
    <class kind="class">qi::atomic</class>
    <class kind="class">qi::SharedPtr</class>
    <member kind="typedef">
      <type>std::codecvt&lt; wchar_t, char, std::mbstate_t &gt;</type>
      <name>codecvt_type</name>
      <anchorfile>group__qi.html</anchorfile>
      <anchor>ga5487839dcbabdbd4cbdef26274df752a</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>QI_API void</type>
      <name>init</name>
      <anchorfile>group__qi.html</anchorfile>
      <anchor>ga0b536bf8de2d544abd2468d80c595943</anchor>
      <arglist>(int argc, char *argv[])</arglist>
    </member>
    <member kind="function">
      <type>QI_API int</type>
      <name>argc</name>
      <anchorfile>group__qi.html</anchorfile>
      <anchor>gadf0f446dd12f31cb0f4a747b262af9ff</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>QI_API const char **</type>
      <name>argv</name>
      <anchorfile>group__qi.html</anchorfile>
      <anchor>ga58f3ed622590f4c553c9ad179bcea2ec</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>QI_API const char *</type>
      <name>program</name>
      <anchorfile>group__qi.html</anchorfile>
      <anchor>ga3e9312d2b3395bcba1749d532c63b0d9</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>QI_API const codecvt_type &amp;</type>
      <name>unicodeFacet</name>
      <anchorfile>group__qi.html</anchorfile>
      <anchor>ga36969e04da33b41f991b3b23fd7aa329</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>qi::atomic</name>
    <filename>classqi_1_1atomic.html</filename>
    <templarg>T</templarg>
    <member kind="function">
      <type></type>
      <name>atomic</name>
      <anchorfile>classqi_1_1atomic.html</anchorfile>
      <anchor>a2ae53930939e1c0a92d089a8946c5bc4</anchor>
      <arglist>(T value)</arglist>
    </member>
    <member kind="function">
      <type>T</type>
      <name>operator++</name>
      <anchorfile>classqi_1_1atomic.html</anchorfile>
      <anchor>aca506d6c6c98c5465f076db5ddf8778e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>T</type>
      <name>operator--</name>
      <anchorfile>classqi_1_1atomic.html</anchorfile>
      <anchor>a7f0f4b6c5f8591887e6473115a3272f3</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>T</type>
      <name>operator*</name>
      <anchorfile>classqi_1_1atomic.html</anchorfile>
      <anchor>a1d58e6a51e70578efe960f3f7af32ce9</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>qi::SharedPtr</name>
    <filename>classqi_1_1SharedPtr.html</filename>
    <templarg>T</templarg>
    <member kind="function">
      <type></type>
      <name>SharedPtr</name>
      <anchorfile>classqi_1_1SharedPtr.html</anchorfile>
      <anchor>a1a04ccdd96a558b83d5706ca91416fca</anchor>
      <arglist>(T *ptr)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>SharedPtr</name>
      <anchorfile>classqi_1_1SharedPtr.html</anchorfile>
      <anchor>a918a69484b141e9f366dac5062433877</anchor>
      <arglist>(const SharedPtr&lt; T &gt; &amp;sp)</arglist>
    </member>
    <member kind="function">
      <type>SharedPtr &amp;</type>
      <name>operator=</name>
      <anchorfile>classqi_1_1SharedPtr.html</anchorfile>
      <anchor>ac4608733a8a028855233465523a0b169</anchor>
      <arglist>(SharedPtr&lt; T &gt; &amp;sp)</arglist>
    </member>
    <member kind="function">
      <type>T &amp;</type>
      <name>operator*</name>
      <anchorfile>classqi_1_1SharedPtr.html</anchorfile>
      <anchor>a9ffebeb37ebb81ca6bba19cba5ad92ea</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>T *</type>
      <name>operator-&gt;</name>
      <anchorfile>classqi_1_1SharedPtr.html</anchorfile>
      <anchor>a87e77b87c929f7a746b4740638ce3ae8</anchor>
      <arglist>() const </arglist>
    </member>
  </compound>
  <compound kind="namespace">
    <name>qi::log</name>
    <filename>namespaceqi_1_1log.html</filename>
    <class kind="class">qi::log::ConsoleLogHandler</class>
    <class kind="class">qi::log::FileLogHandler</class>
    <class kind="class">qi::log::HeadFileLogHandler</class>
    <class kind="class">qi::log::TailFileLogHandler</class>
    <class kind="class">qi::log::LogStream</class>
    <member kind="typedef">
      <type>boost::function7&lt; void, const qi::log::LogLevel, const qi::os::timeval, const char *, const char *, const char *, const char *, int &gt;</type>
      <name>logFuncHandler</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>gadf819c6426c79fa7f6e8f5afbb303b82</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumeration">
      <name>LogLevel</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>gae6c7034d798993006c80ca45f56ac5dd</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>silent</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>gae6c7034d798993006c80ca45f56ac5dda5ef82d69bcb5488b995708054bdf0c36</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>fatal</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>gae6c7034d798993006c80ca45f56ac5dda0367f834029b5b790c3f30ca0da079bf</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>error</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>gae6c7034d798993006c80ca45f56ac5dda250edffccd1138a961df809a0af50edc</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>warning</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>gae6c7034d798993006c80ca45f56ac5dda229a79b6ddd0a8ab19c2b9a5af222ce6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>info</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>gae6c7034d798993006c80ca45f56ac5ddaca4a415ffe8450643a5d35d92e7b93ae</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>verbose</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>gae6c7034d798993006c80ca45f56ac5dda6a5464b5bfad9fcaa3aedb2dfd1c907d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>debug</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>gae6c7034d798993006c80ca45f56ac5dda49f643703dddd81c7c06827902c6ad1e</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>QI_API void</type>
      <name>init</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>ga59efd34191b8501bb07f49e2059bf755</anchor>
      <arglist>(qi::log::LogLevel verb=qi::log::info, int ctx=0, bool synchronous=true)</arglist>
    </member>
    <member kind="function">
      <type>QI_API void</type>
      <name>destroy</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>ga33fd98fa824955339382dc97fe14bf94</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>QI_API void</type>
      <name>log</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>gaee44db080aea8279e7c5e9f5b3de3b52</anchor>
      <arglist>(const qi::log::LogLevel verb, const char *category, const char *msg, const char *file=&quot;&quot;, const char *fct=&quot;&quot;, const int line=0)</arglist>
    </member>
    <member kind="function">
      <type>QI_API const char *</type>
      <name>logLevelToString</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>ga78104951a5ca10354e5f3f0f83bf3d2e</anchor>
      <arglist>(const qi::log::LogLevel verb)</arglist>
    </member>
    <member kind="function">
      <type>QI_API qi::log::LogLevel</type>
      <name>stringToLogLevel</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>ga5f98edc083e04586b2faa5e29edb5676</anchor>
      <arglist>(const char *verb)</arglist>
    </member>
    <member kind="function">
      <type>QI_API void</type>
      <name>setVerbosity</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>gad09b775f11040ad55e281b085070fe51</anchor>
      <arglist>(const qi::log::LogLevel lv)</arglist>
    </member>
    <member kind="function">
      <type>QI_API qi::log::LogLevel</type>
      <name>verbosity</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>ga2a0f86188fa6d13182ecd90162647f7c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>QI_API void</type>
      <name>setContext</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>ga7744f59293286b3ce5ff5b76f1aec0a1</anchor>
      <arglist>(int ctx)</arglist>
    </member>
    <member kind="function">
      <type>QI_API int</type>
      <name>context</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>ga8ba6e57339348f416dcb9b0f2019b01a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>QI_API void</type>
      <name>setSynchronousLog</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>ga1c0b4d711826eeb91c17fd33ebc14a9d</anchor>
      <arglist>(bool sync)</arglist>
    </member>
    <member kind="function">
      <type>QI_API void</type>
      <name>addLogHandler</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>gab1027252c216b381889daa1edb71a685</anchor>
      <arglist>(const std::string &amp;name, qi::log::logFuncHandler fct)</arglist>
    </member>
    <member kind="function">
      <type>QI_API void</type>
      <name>removeLogHandler</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>ga4ee259a83a69902124fcf35264077481</anchor>
      <arglist>(const std::string &amp;name)</arglist>
    </member>
    <member kind="function">
      <type>QI_API void</type>
      <name>flush</name>
      <anchorfile>group__qilog.html</anchorfile>
      <anchor>ga7c0ae312862118fc43ba60be542942d0</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>qi::log::ConsoleLogHandler</name>
    <filename>classqi_1_1log_1_1ConsoleLogHandler.html</filename>
    <member kind="function">
      <type>void</type>
      <name>log</name>
      <anchorfile>classqi_1_1log_1_1ConsoleLogHandler.html</anchorfile>
      <anchor>a4acab20ff2eeca6e1581bed51a50c409</anchor>
      <arglist>(const qi::log::LogLevel verb, const qi::os::timeval date, const char *category, const char *msg, const char *file, const char *fct, const int line)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>QI_DISALLOW_COPY_AND_ASSIGN</name>
      <anchorfile>classqi_1_1log_1_1ConsoleLogHandler.html</anchorfile>
      <anchor>a2e1a277e6e8b4b828c94f3993e25604c</anchor>
      <arglist>(ConsoleLogHandler)</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>PrivateConsoleLogHandler *</type>
      <name>_private</name>
      <anchorfile>classqi_1_1log_1_1ConsoleLogHandler.html</anchorfile>
      <anchor>ab77cb41a0dedee9cd936f7ba6daf0835</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>qi::log::FileLogHandler</name>
    <filename>classqi_1_1log_1_1FileLogHandler.html</filename>
    <member kind="function">
      <type></type>
      <name>FileLogHandler</name>
      <anchorfile>classqi_1_1log_1_1FileLogHandler.html</anchorfile>
      <anchor>a15eb68cf52b7f1fbf4027ce2c952f575</anchor>
      <arglist>(const std::string &amp;filePath)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>log</name>
      <anchorfile>classqi_1_1log_1_1FileLogHandler.html</anchorfile>
      <anchor>a389477422bd100ec128427abec041607</anchor>
      <arglist>(const qi::log::LogLevel verb, const qi::os::timeval date, const char *category, const char *msg, const char *file, const char *fct, const int line)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>qi::log::HeadFileLogHandler</name>
    <filename>classqi_1_1log_1_1HeadFileLogHandler.html</filename>
    <member kind="function">
      <type></type>
      <name>HeadFileLogHandler</name>
      <anchorfile>classqi_1_1log_1_1HeadFileLogHandler.html</anchorfile>
      <anchor>abea4c3438c1aa689c7ac1d4ffbf0e7dc</anchor>
      <arglist>(const std::string &amp;filePath, int length=2000)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>log</name>
      <anchorfile>classqi_1_1log_1_1HeadFileLogHandler.html</anchorfile>
      <anchor>ad6d4c19afe37905f5526cd2e779287ca</anchor>
      <arglist>(const qi::log::LogLevel verb, const qi::os::timeval date, const char *category, const char *msg, const char *file, const char *fct, const int line)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>qi::log::TailFileLogHandler</name>
    <filename>classqi_1_1log_1_1TailFileLogHandler.html</filename>
    <member kind="function">
      <type></type>
      <name>TailFileLogHandler</name>
      <anchorfile>classqi_1_1log_1_1TailFileLogHandler.html</anchorfile>
      <anchor>a587148f72d3bd444cc3ae18a5c5fcfaf</anchor>
      <arglist>(const std::string &amp;filePath)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>log</name>
      <anchorfile>classqi_1_1log_1_1TailFileLogHandler.html</anchorfile>
      <anchor>a5c0f6795dae757b64398748a854e4e23</anchor>
      <arglist>(const qi::log::LogLevel verb, const qi::os::timeval date, const char *category, const char *msg, const char *file, const char *fct, const int line)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>qi::log::LogStream</name>
    <filename>classqi_1_1log_1_1LogStream.html</filename>
    <member kind="function">
      <type></type>
      <name>LogStream</name>
      <anchorfile>classqi_1_1log_1_1LogStream.html</anchorfile>
      <anchor>a2921265bb7c2a6e1429b45850ba0b96f</anchor>
      <arglist>(const LogLevel level, const char *file, const char *function, const int line, const char *category)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>LogStream</name>
      <anchorfile>classqi_1_1log_1_1LogStream.html</anchorfile>
      <anchor>aa1bbb12c786396e5fde62967f0af1c82</anchor>
      <arglist>(const LogLevel level, const char *file, const char *function, const int line, const char *category, const char *fmt,...)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~LogStream</name>
      <anchorfile>classqi_1_1log_1_1LogStream.html</anchorfile>
      <anchor>a7fb93eb852e858c7ebf993402e790a35</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>LogStream &amp;</type>
      <name>self</name>
      <anchorfile>classqi_1_1log_1_1LogStream.html</anchorfile>
      <anchor>a9d738ee176a76e51e51e434c4ccf6c4f</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="namespace">
    <name>qi::os</name>
    <filename>namespaceqi_1_1os.html</filename>
    <class kind="class">qi::os::QiException</class>
    <class kind="struct">qi::os::timeval</class>
    <member kind="function">
      <type>QI_API FILE *</type>
      <name>fopen</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>ga342a8a2f99dcdb247cae04c102d37ad4</anchor>
      <arglist>(const char *filename, const char *mode)</arglist>
    </member>
    <member kind="function">
      <type>QI_API int</type>
      <name>stat</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>gaca54fad9ebe84746e9edd893ce7b86df</anchor>
      <arglist>(const char *filename, struct stat *pstat)</arglist>
    </member>
    <member kind="function">
      <type>QI_API int</type>
      <name>checkdbg</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>ga6dff1e32373088b954202848b6e0bd5e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>QI_API std::string</type>
      <name>home</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>gab8ff4e17104c32dd4cf883897e6f696c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>QI_API std::string</type>
      <name>mktmpdir</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>ga61ff308a6f34f5243455c64e6c7bfeb0</anchor>
      <arglist>(const char *prefix=&quot;&quot;)</arglist>
    </member>
    <member kind="function">
      <type>QI_API std::string</type>
      <name>tmp</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>ga6d2792e3a5a51390408f935a0d19a06f</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>QI_API std::string</type>
      <name>gethostname</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>ga344bf85b74e8978cf16e24c772425f25</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>QI_API int</type>
      <name>getpid</name>
      <anchorfile>namespaceqi_1_1os.html</anchorfile>
      <anchor>a5258bbee7c61ce1724ec4d20c126a2de</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>QI_API int</type>
      <name>kill</name>
      <anchorfile>namespaceqi_1_1os.html</anchorfile>
      <anchor>a9e8a79c94e1f737a819afd8745e8a50a</anchor>
      <arglist>(int pid, int sig)</arglist>
    </member>
    <member kind="function">
      <type>QI_API bool</type>
      <name>hostIPAddrs</name>
      <anchorfile>namespaceqi_1_1os.html</anchorfile>
      <anchor>aed6e0d8a5e63f22eabc8f45d1272e04c</anchor>
      <arglist>(std::map&lt; std::string, std::vector&lt; std::string &gt; &gt; &amp;ifsMap)</arglist>
    </member>
    <member kind="function">
      <type>QI_API_DEPRECATED QI_API std::string</type>
      <name>tmpdir</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>gaffa8e0744dc0318599a17dd2cc3f1d38</anchor>
      <arglist>(const char *prefix=&quot;&quot;)</arglist>
    </member>
    <member kind="function">
      <type>QI_API std::string</type>
      <name>getenv</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>ga1618a98bfcd36dfa1e7661b89f1d4eaa</anchor>
      <arglist>(const char *var)</arglist>
    </member>
    <member kind="function">
      <type>QI_API int</type>
      <name>setenv</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>ga4ee7b375bc27384427fd797e95164cb0</anchor>
      <arglist>(const char *var, const char *value)</arglist>
    </member>
    <member kind="function">
      <type>QI_API void</type>
      <name>sleep</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>ga957b15b60f5c43d548b1bd39014fd987</anchor>
      <arglist>(unsigned int seconds)</arglist>
    </member>
    <member kind="function">
      <type>QI_API void</type>
      <name>msleep</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>ga4484ac8bad4d40063f8240098a6ef499</anchor>
      <arglist>(unsigned int milliseconds)</arglist>
    </member>
    <member kind="function">
      <type>QI_API int</type>
      <name>gettimeofday</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>gacf5aa6bfe7217f0b4873b3d74cef6bfd</anchor>
      <arglist>(qi::os::timeval *tp)</arglist>
    </member>
    <member kind="function">
      <type>QI_API void *</type>
      <name>dlopen</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>ga9def1f3428f7a3c8863b872bcc829d7c</anchor>
      <arglist>(const char *filename, int flag=-1)</arglist>
    </member>
    <member kind="function">
      <type>QI_API int</type>
      <name>dlclose</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>ga522709b7b926ec2e993048ea2592ebb9</anchor>
      <arglist>(void *handle)</arglist>
    </member>
    <member kind="function">
      <type>QI_API void *</type>
      <name>dlsym</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>gab61394d3985dabc5a99c1f99bb9f648c</anchor>
      <arglist>(void *handle, const char *symbol)</arglist>
    </member>
    <member kind="function">
      <type>QI_API const char *</type>
      <name>dlerror</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>gaff4375fab3861b9e9d0bdb7084c3a693</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>QI_API int</type>
      <name>spawnvp</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>gaed85e532b61fe6b71445fadfaada4681</anchor>
      <arglist>(char *const argv[])</arglist>
    </member>
    <member kind="function">
      <type>QI_API int</type>
      <name>spawnlp</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>ga86f9b157059f82983ab9ab16b3c41e2c</anchor>
      <arglist>(const char *argv,...)</arglist>
    </member>
    <member kind="function">
      <type>QI_API int</type>
      <name>system</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>gaa4452c676efa459a280170aad04a1aa3</anchor>
      <arglist>(const char *command)</arglist>
    </member>
    <member kind="function">
      <type>QI_API int</type>
      <name>waitpid</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>gaec058fc361dd6032aa741b81cbee9ec8</anchor>
      <arglist>(int pid, int *status)</arglist>
    </member>
    <member kind="function">
      <type>QI_API unsigned short</type>
      <name>findAvailablePort</name>
      <anchorfile>group__qios.html</anchorfile>
      <anchor>ga07c943b489e4b92d454489c421e00c5d</anchor>
      <arglist>(unsigned short port)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>qi::os::QiException</name>
    <filename>classqi_1_1os_1_1QiException.html</filename>
    <member kind="function">
      <type></type>
      <name>QiException</name>
      <anchorfile>classqi_1_1os_1_1QiException.html</anchorfile>
      <anchor>a32ce81fe7657251fa825c71dd45d0d67</anchor>
      <arglist>(const std::string &amp;message)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>QiException</name>
      <anchorfile>classqi_1_1os_1_1QiException.html</anchorfile>
      <anchor>ac941e11b15566ed91f5bfb6189e9f392</anchor>
      <arglist>(const QiException &amp;e)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~QiException</name>
      <anchorfile>classqi_1_1os_1_1QiException.html</anchorfile>
      <anchor>a3220eb3c38e226cdf49b0bd28d7a74e7</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>qi::os::timeval</name>
    <filename>structqi_1_1os_1_1timeval.html</filename>
    <member kind="variable">
      <type>long</type>
      <name>tv_sec</name>
      <anchorfile>structqi_1_1os_1_1timeval.html</anchorfile>
      <anchor>a2649fc629b7784a4fe2045eedc599dbe</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>long</type>
      <name>tv_usec</name>
      <anchorfile>structqi_1_1os_1_1timeval.html</anchorfile>
      <anchor>ab03db9631224101f3650bac7922c197c</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="namespace">
    <name>qi::path</name>
    <filename>namespaceqi_1_1path.html</filename>
    <member kind="function">
      <type>QI_API std::string</type>
      <name>sdkPrefix</name>
      <anchorfile>group__qipath.html</anchorfile>
      <anchor>gac24e444898103867f540b5c151b2d585</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>QI_API std::string</type>
      <name>findBin</name>
      <anchorfile>group__qipath.html</anchorfile>
      <anchor>ga7b285d67949e218ff180b8a807b91b02</anchor>
      <arglist>(const std::string &amp;name)</arglist>
    </member>
    <member kind="function">
      <type>QI_API std::string</type>
      <name>findLib</name>
      <anchorfile>group__qipath.html</anchorfile>
      <anchor>ga294da1c73c0f09abf9c8036a826a7521</anchor>
      <arglist>(const std::string &amp;name)</arglist>
    </member>
    <member kind="function">
      <type>QI_API std::string</type>
      <name>findConf</name>
      <anchorfile>group__qipath.html</anchorfile>
      <anchor>ga5c6a850547ba5cea80e8a1c0908395de</anchor>
      <arglist>(const std::string &amp;applicationName, const std::string &amp;filename)</arglist>
    </member>
    <member kind="function">
      <type>QI_API std::string</type>
      <name>findData</name>
      <anchorfile>group__qipath.html</anchorfile>
      <anchor>gafaf2564b9d20c61c991436285ecf8e79</anchor>
      <arglist>(const std::string &amp;applicationName, const std::string &amp;filename)</arglist>
    </member>
    <member kind="function">
      <type>QI_API std::vector&lt; std::string &gt;</type>
      <name>confPaths</name>
      <anchorfile>group__qipath.html</anchorfile>
      <anchor>ga331d7833b193d376132d2e1a264f3e19</anchor>
      <arglist>(const std::string &amp;applicationName=&quot;&quot;)</arglist>
    </member>
    <member kind="function">
      <type>QI_API std::vector&lt; std::string &gt;</type>
      <name>dataPaths</name>
      <anchorfile>group__qipath.html</anchorfile>
      <anchor>ga1cf5419fb1b074c926333cb4fa23b4be</anchor>
      <arglist>(const std::string &amp;applicationName=&quot;&quot;)</arglist>
    </member>
    <member kind="function">
      <type>QI_API std::vector&lt; std::string &gt;</type>
      <name>binPaths</name>
      <anchorfile>group__qipath.html</anchorfile>
      <anchor>ga5e147eb89d9bfaff6a59bcbe904a32a6</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>QI_API std::vector&lt; std::string &gt;</type>
      <name>libPaths</name>
      <anchorfile>group__qipath.html</anchorfile>
      <anchor>gab616481fb0bac1149e3f69a249402238</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>QI_API std::string</type>
      <name>userWritableDataPath</name>
      <anchorfile>group__qipath.html</anchorfile>
      <anchor>ga8ac79e5e8a4ac592ba7bfd6010195a7a</anchor>
      <arglist>(const std::string &amp;applicationName, const std::string &amp;filename)</arglist>
    </member>
    <member kind="function">
      <type>QI_API std::string</type>
      <name>userWritableConfPath</name>
      <anchorfile>group__qipath.html</anchorfile>
      <anchor>gafd05bcc178452a02ccf31cab8331c1a4</anchor>
      <arglist>(const std::string &amp;applicationName, const std::string &amp;filename=&quot;&quot;)</arglist>
    </member>
  </compound>
  <compound kind="page">
    <name>index</name>
    <title>libqi library</title>
    <filename>index</filename>
    <docanchor file="index">API</docanchor>
    <docanchor file="index">libqi</docanchor>
    <docanchor file="index">Developer</docanchor>
  </compound>
</tagfile>
