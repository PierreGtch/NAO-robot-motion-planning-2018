<?xml version='1.0' encoding='ISO-8859-1' standalone='yes' ?>
<tagfile>
  <compound kind="file">
    <name>alextractor.h</name>
    <path>/home/opennao/work/doc/release-1.14/public/lib/libnaoqi/libalextractor/alextractor/</path>
    <filename>alextractor_8h</filename>
    <includes id="config_8h" name="config.h" local="no" imported="no">alextractor/config.h</includes>
    <class kind="class">AL::ALExtractor</class>
  </compound>
  <compound kind="file">
    <name>config.h</name>
    <path>/home/opennao/work/doc/release-1.14/public/lib/libnaoqi/libalextractor/alextractor/</path>
    <filename>config_8h</filename>
  </compound>
  <compound kind="class">
    <name>AL::ALExtractor</name>
    <filename>classAL_1_1ALExtractor.html</filename>
    <member kind="function">
      <type></type>
      <name>ALExtractor</name>
      <anchorfile>classAL_1_1ALExtractor.html</anchorfile>
      <anchor>acd6ff51d88b2871d51b9b994c4d1981e</anchor>
      <arglist>(boost::shared_ptr&lt; ALBroker &gt; pBroker, const std::string &amp;pName)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~ALExtractor</name>
      <anchorfile>classAL_1_1ALExtractor.html</anchorfile>
      <anchor>a992f6320eb65d42fe6ad139d89dab95d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>subscribe</name>
      <anchorfile>classAL_1_1ALExtractor.html</anchorfile>
      <anchor>a918636f050920b6beb0dea3ab5365579</anchor>
      <arglist>(const std::string &amp;pSubscribedName, const int &amp;pPeriod, const float &amp;pPrecision)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>subscribe</name>
      <anchorfile>classAL_1_1ALExtractor.html</anchorfile>
      <anchor>a86f2c1e5427691444176ddebea6604a6</anchor>
      <arglist>(const std::string &amp;pSubscribedName)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>updatePeriod</name>
      <anchorfile>classAL_1_1ALExtractor.html</anchorfile>
      <anchor>ac57f50a36501043ea86b0fa4df115444</anchor>
      <arglist>(const std::string &amp;pSubscribedName, const int &amp;pPeriod)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>updatePrecision</name>
      <anchorfile>classAL_1_1ALExtractor.html</anchorfile>
      <anchor>a8f56ef36ae105c1e496119ac0db2401c</anchor>
      <arglist>(const std::string &amp;pSubscribedName, const float &amp;pPrecision)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>unsubscribe</name>
      <anchorfile>classAL_1_1ALExtractor.html</anchorfile>
      <anchor>a19c2903b59705edabab5045a22893fb0</anchor>
      <arglist>(const std::string &amp;pSubscribedName)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>getCurrentPeriod</name>
      <anchorfile>classAL_1_1ALExtractor.html</anchorfile>
      <anchor>a2b09fb251b3b1dd30aef65c845109db0</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual float</type>
      <name>getCurrentPrecision</name>
      <anchorfile>classAL_1_1ALExtractor.html</anchorfile>
      <anchor>af88b3fc5868537572077a15f3d24787c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual int</type>
      <name>getMyPeriod</name>
      <anchorfile>classAL_1_1ALExtractor.html</anchorfile>
      <anchor>a2db9af6151055970e64e389541988a88</anchor>
      <arglist>(const std::string &amp;pSubscribedName)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual float</type>
      <name>getMyPrecision</name>
      <anchorfile>classAL_1_1ALExtractor.html</anchorfile>
      <anchor>aed5c9f03d828fb6dab0d40a8c37bb0e3</anchor>
      <arglist>(const std::string &amp;pSubscribedName)</arglist>
    </member>
    <member kind="function">
      <type>ALValue</type>
      <name>getSubscribersInfo</name>
      <anchorfile>classAL_1_1ALExtractor.html</anchorfile>
      <anchor>a14718ad2fb8de6a0d8d28255367bb14d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual std::string</type>
      <name>httpGet</name>
      <anchorfile>classAL_1_1ALExtractor.html</anchorfile>
      <anchor>a027120cb46c0beed647f9def780cf73a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="pure">
      <type>virtual void</type>
      <name>xStartDetection</name>
      <anchorfile>classAL_1_1ALExtractor.html</anchorfile>
      <anchor>ab0c754943cd4dfc79fb4c27e5a745c08</anchor>
      <arglist>(const int pPeriod, const float pPrecision)=0</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>xUpdateParameters</name>
      <anchorfile>classAL_1_1ALExtractor.html</anchorfile>
      <anchor>a4299ea7e7b7d2a22caae27c2b0ecc0f0</anchor>
      <arglist>(const int pPeriod, const float pPrecision)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="pure">
      <type>virtual void</type>
      <name>xStopDetection</name>
      <anchorfile>classAL_1_1ALExtractor.html</anchorfile>
      <anchor>a4097139cb805ddbd27bdf1e13b8ffb4c</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual int</type>
      <name>getDefaultPeriod</name>
      <anchorfile>classAL_1_1ALExtractor.html</anchorfile>
      <anchor>a333987b0e51c0b65c452f0c636b62615</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual float</type>
      <name>getDefaultPrecision</name>
      <anchorfile>classAL_1_1ALExtractor.html</anchorfile>
      <anchor>aa6fd8d17fc6e441cc8661465e3223e18</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>std::vector&lt; std::string &gt;</type>
      <name>getOutputNames</name>
      <anchorfile>classAL_1_1ALExtractor.html</anchorfile>
      <anchor>aeae570e6e1c3f42d3201c8d38fa4d03b</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="page">
    <name>index</name>
    <title>libalextractor</title>
    <filename>index</filename>
    <docanchor file="index">API</docanchor>
    <docanchor file="index">qi</docanchor>
    <docanchor file="index">Extras</docanchor>
  </compound>
</tagfile>
