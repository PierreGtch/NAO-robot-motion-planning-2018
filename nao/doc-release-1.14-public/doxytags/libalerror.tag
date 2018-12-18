<?xml version='1.0' encoding='ISO-8859-1' standalone='yes' ?>
<tagfile>
  <compound kind="file">
    <name>alerror.h</name>
    <path>/home/opennao/work/doc/release-1.14/public/lib/libnaoqi/libalerror/alerror/</path>
    <filename>alerror_8h</filename>
    <includes id="config_8h" name="config.h" local="no" imported="no">alerror/config.h</includes>
    <class kind="class">AL::ALError</class>
    <member kind="define">
      <type>#define</type>
      <name>ALERROR</name>
      <anchorfile>alerror_8h.html</anchorfile>
      <anchor>a2d2886eecfefe69b4a37629c8790d4ab</anchor>
      <arglist>(module, method, description)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>alnetworkerror.h</name>
    <path>/home/opennao/work/doc/release-1.14/public/lib/libnaoqi/libalerror/alerror/</path>
    <filename>alnetworkerror_8h</filename>
    <includes id="config_8h" name="config.h" local="no" imported="no">alerror/config.h</includes>
    <includes id="alerror_8h" name="alerror.h" local="no" imported="no">alerror/alerror.h</includes>
    <class kind="class">AL::ALNetworkError</class>
    <member kind="define">
      <type>#define</type>
      <name>ALNETWORKERROR</name>
      <anchorfile>alnetworkerror_8h.html</anchorfile>
      <anchor>a3d6743364c2a6bb5795b7f64ccc3f957</anchor>
      <arglist>(module, method, description)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>config.h</name>
    <path>/home/opennao/work/doc/release-1.14/public/lib/libnaoqi/libalerror/alerror/</path>
    <filename>config_8h</filename>
  </compound>
  <compound kind="class">
    <name>AL::ALError</name>
    <filename>classAL_1_1ALError.html</filename>
    <member kind="function">
      <type></type>
      <name>ALError</name>
      <anchorfile>classAL_1_1ALError.html</anchorfile>
      <anchor>adbe4ed753ec7d1b42f572014624be11f</anchor>
      <arglist>(const std::string &amp;pModuleName, const std::string &amp;pMethod, const std::string &amp;pDescription, const char *pszFilename=0, const unsigned int pnNumLine=0)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ALError</name>
      <anchorfile>classAL_1_1ALError.html</anchorfile>
      <anchor>a793a7ffaa59e65e1747890b261e31023</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ALError</name>
      <anchorfile>classAL_1_1ALError.html</anchorfile>
      <anchor>a566da781e28fb842a3883054be0f78b3</anchor>
      <arglist>(const ALError &amp;e)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~ALError</name>
      <anchorfile>classAL_1_1ALError.html</anchorfile>
      <anchor>aa369428bf747ecd1086cb6b8679fbde7</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>QI_API_DEPRECATED const std::string</type>
      <name>toString</name>
      <anchorfile>classAL_1_1ALError.html</anchorfile>
      <anchor>a066f62daf6c16ef14c7b0618a27faf26</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>QI_API_DEPRECATED const std::string &amp;</type>
      <name>getModuleName</name>
      <anchorfile>classAL_1_1ALError.html</anchorfile>
      <anchor>aa547493875b9fddc316d88ed37727675</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>QI_API_DEPRECATED const std::string &amp;</type>
      <name>getMethodName</name>
      <anchorfile>classAL_1_1ALError.html</anchorfile>
      <anchor>af6d9fda4cde3e6843a7956ea638ec78e</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>QI_API_DEPRECATED const std::string &amp;</type>
      <name>getFileName</name>
      <anchorfile>classAL_1_1ALError.html</anchorfile>
      <anchor>a510ba87bcf3292361349107ca9478d78</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>QI_API_DEPRECATED int</type>
      <name>getLine</name>
      <anchorfile>classAL_1_1ALError.html</anchorfile>
      <anchor>aca5d39e3682717458d0f3e9ab9b3927f</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>QI_API_DEPRECATED const std::string</type>
      <name>getDescription</name>
      <anchorfile>classAL_1_1ALError.html</anchorfile>
      <anchor>a7039c87985714b416353b70f56261a5c</anchor>
      <arglist>() const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>AL::ALNetworkError</name>
    <filename>classAL_1_1ALNetworkError.html</filename>
    <member kind="function">
      <type></type>
      <name>ALNetworkError</name>
      <anchorfile>classAL_1_1ALNetworkError.html</anchorfile>
      <anchor>a35fc2ba68c6f13b4b68eb2a0167fb85d</anchor>
      <arglist>(std::string pModuleName, std::string pMethod, std::string pDescription, const char *pszFilename=NULL, const unsigned int pnNumLine=0)</arglist>
    </member>
  </compound>
  <compound kind="page">
    <name>index</name>
    <title>libalerror</title>
    <filename>index</filename>
    <docanchor file="index">API</docanchor>
    <docanchor file="index">qi</docanchor>
    <docanchor file="index">Extras</docanchor>
  </compound>
</tagfile>
