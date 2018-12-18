<?xml version='1.0' encoding='ISO-8859-1' standalone='yes' ?>
<tagfile>
  <compound kind="file">
    <name>almemoryfastaccess.h</name>
    <path>/home/opennao/work/doc/release-1.14/public/lib/libnaoqi/libalmemoryfastaccess/almemoryfastaccess/</path>
    <filename>almemoryfastaccess_8h</filename>
    <class kind="class">AL::ALMemoryFastAccess</class>
  </compound>
  <compound kind="class">
    <name>AL::ALMemoryFastAccess</name>
    <filename>classAL_1_1ALMemoryFastAccess.html</filename>
    <member kind="function">
      <type></type>
      <name>ALMemoryFastAccess</name>
      <anchorfile>classAL_1_1ALMemoryFastAccess.html</anchorfile>
      <anchor>ac2e5ef21c5c3fbc8c430927a82a63ac3</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>~ALMemoryFastAccess</name>
      <anchorfile>classAL_1_1ALMemoryFastAccess.html</anchorfile>
      <anchor>a1fc7601baae90edf6ab859bfe7246d8a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>insertBuffer</name>
      <anchorfile>classAL_1_1ALMemoryFastAccess.html</anchorfile>
      <anchor>af49af0fd70609312de88075c86808ab7</anchor>
      <arglist>(const std::string &amp;pName, const ALValue &amp;pBuff)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>insertObject</name>
      <anchorfile>classAL_1_1ALMemoryFastAccess.html</anchorfile>
      <anchor>a395c66ef192f888f1e38ac8db58e45ac</anchor>
      <arglist>(const std::string &amp;pName, C pObject)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ConnectToVariables</name>
      <anchorfile>classAL_1_1ALMemoryFastAccess.html</anchorfile>
      <anchor>a31fc4087cbd9064f1cd9acbbe2681cb6</anchor>
      <arglist>(const boost::shared_ptr&lt; AL::ALBroker &gt; pBroker, const std::vector&lt; std::string &gt; &amp;pListVariables, bool bAllowNonExistantVariable=false)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>directConnectToVariables</name>
      <anchorfile>classAL_1_1ALMemoryFastAccess.html</anchorfile>
      <anchor>a4c459c0b42ede3781a61b93c4e3731aa</anchor>
      <arglist>(const boost::shared_ptr&lt; AL::ALBroker &gt; pBroker, const std::vector&lt; std::string &gt; &amp;pListVariables, bool bAllowUnexistantVariable=false)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>GetValues</name>
      <anchorfile>classAL_1_1ALMemoryFastAccess.html</anchorfile>
      <anchor>ae32cff8fac89127f6aa10d529c9cfd6c</anchor>
      <arglist>(std::vector&lt; float &gt; &amp;pListValue) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetValues</name>
      <anchorfile>classAL_1_1ALMemoryFastAccess.html</anchorfile>
      <anchor>a5913652eeacf52def5b28078a6477ffb</anchor>
      <arglist>(const std::vector&lt; float &gt; &amp;pListValue)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>StopAllAccess</name>
      <anchorfile>classAL_1_1ALMemoryFastAccess.html</anchorfile>
      <anchor>a60df8231b9512bc7b566a4372b3a465b</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static C</type>
      <name>getObject</name>
      <anchorfile>classAL_1_1ALMemoryFastAccess.html</anchorfile>
      <anchor>a24a8207a736df950b43fdfe74ac80a41</anchor>
      <arglist>(const std::string &amp;pName)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void *</type>
      <name>getDataPtr</name>
      <anchorfile>classAL_1_1ALMemoryFastAccess.html</anchorfile>
      <anchor>a01b01f2b4e00328a4e227535a8d5c597</anchor>
      <arglist>(boost::shared_ptr&lt; AL::ALBroker &gt; pBroker, const std::string &amp;pStrValue, bool bAllowUnexistantVariable)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>InnerTest</name>
      <anchorfile>classAL_1_1ALMemoryFastAccess.html</anchorfile>
      <anchor>ab9f909389cd726e379325c985038d302</anchor>
      <arglist>(const boost::shared_ptr&lt; AL::ALBroker &gt; pBroker)</arglist>
    </member>
  </compound>
  <compound kind="page">
    <name>index</name>
    <title>libalvalue</title>
    <filename>index</filename>
    <docanchor file="index">API</docanchor>
    <docanchor file="index">qi</docanchor>
    <docanchor file="index">Extras</docanchor>
  </compound>
</tagfile>
