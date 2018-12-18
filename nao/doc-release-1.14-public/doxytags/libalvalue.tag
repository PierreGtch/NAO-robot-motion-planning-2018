<?xml version='1.0' encoding='ISO-8859-1' standalone='yes' ?>
<tagfile>
  <compound kind="file">
    <name>alvalue.h</name>
    <path>/home/opennao/work/doc/release-1.14/public/lib/libnaoqi/libalvalue/alvalue/</path>
    <filename>alvalue_8h</filename>
    <includes id="config_8h" name="config.h" local="no" imported="no">alvalue/config.h</includes>
    <class kind="class">AL::ALValue</class>
    <class kind="union">AL::ALValue::unionValue</class>
    <member kind="define">
      <type>#define</type>
      <name>ALVALUE_VERBOSITY</name>
      <anchorfile>alvalue_8h.html</anchorfile>
      <anchor>a6f0685b9fbbd3445db1197699139221c</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>enum ALVALUE_API AL::_TVerbosity</type>
      <name>Verbosity</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a3b3dbf25244cf436a21fa40f5d179cba</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>std::ostream &amp;</type>
      <name>operator&lt;&lt;</name>
      <anchorfile>alvalue_8h.html</anchorfile>
      <anchor>a472b32ab42492fcf0c63f0f52a802cec</anchor>
      <arglist>(std::ostream &amp;os, const AL::ALValue &amp;a)</arglist>
    </member>
    <member kind="variable">
      <type></type>
      <name>VerbosityNone</name>
      <anchorfile>alvalue_8h.html</anchorfile>
      <anchor>ac28db61d0e3c2e88b23e17b6303afd5a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type></type>
      <name>VerbosityMini</name>
      <anchorfile>alvalue_8h.html</anchorfile>
      <anchor>a85085dab89f653332372258c35b2cf51</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type></type>
      <name>VerbosityMedium</name>
      <anchorfile>alvalue_8h.html</anchorfile>
      <anchor>a318199e62120b5b7733966cc4256a71d</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>config.h</name>
    <path>/home/opennao/work/doc/release-1.14/public/lib/libnaoqi/libalvalue/alvalue/</path>
    <filename>config_8h</filename>
  </compound>
  <compound kind="class">
    <name>AL::ALValue</name>
    <filename>classAL_1_1ALValue.html</filename>
    <class kind="union">AL::ALValue::unionValue</class>
    <member kind="enumeration">
      <name>Type</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>ace2a0c07a44d348d099b29e93eaa1d1e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TypeInvalid</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>ace2a0c07a44d348d099b29e93eaa1d1ea61ef4a8f2c1b7e3282a93ba86cecdcf8</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TypeArray</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>ace2a0c07a44d348d099b29e93eaa1d1eaf679275de5788f8278e90f3d93ad0950</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TypeBool</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>ace2a0c07a44d348d099b29e93eaa1d1eaa751a68855d06a892c5c23d6bf62ca0a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TypeInt</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>ace2a0c07a44d348d099b29e93eaa1d1ea609758797157652d1fda617d2ac2845b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TypeFloat</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>ace2a0c07a44d348d099b29e93eaa1d1ea9800a3f657535a60cbb42f4e56e515f6</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TypeString</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>ace2a0c07a44d348d099b29e93eaa1d1ea348e43dcddb7452aa843901cf35ce654</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TypeObject</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>ace2a0c07a44d348d099b29e93eaa1d1eae88bbc3ae296aa714c3c77e23774010d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>TypeBinary</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>ace2a0c07a44d348d099b29e93eaa1d1eadf28908def39c4c758fb2392548bb231</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>int</type>
      <name>TALValueInt</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a2605df7cbe3aaf6fee88a4a1f561d6c3</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>float</type>
      <name>TALValueFloat</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>ad45720b20cd69e8ed09bceb92ade3d3e</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>double</type>
      <name>TALValueDouble</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a6671c1a8fb2d33e87b2a731d6c36a264</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>bool</type>
      <name>TALValueBool</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a33b1099544186614323727b88e63854d</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>std::string</type>
      <name>TALValueString</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>ab30527e6882bc5335990160c9a91c973</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>std::vector&lt; unsigned char &gt;</type>
      <name>TAlValueBinaryData</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a89af0ef7270c6abdc00137b0b623267c</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>TAlValueBinaryData::iterator</type>
      <name>ITAlValueBinaryData</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a5e2ac2dd8161bd514bc71a00b0fd2f3a</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>TAlValueBinaryData::const_iterator</type>
      <name>CITAlValueBinaryData</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a18b9bb85176117e12b5a69b0d1ba694f</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>std::vector&lt; ALValue &gt;</type>
      <name>TAlValueArray</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a2d8f6b31fe33920a282db39ac63a0cbe</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>TAlValueArray::iterator</type>
      <name>ITAlValueArray</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a380d581bbb66b3f57e8c3e85443679bc</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>TAlValueArray::const_iterator</type>
      <name>CITAlValueArray</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>ad7a2550bb3685303881446ab9fb6d375</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>std::vector&lt; std::string &gt;</type>
      <name>TStringArray</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a99e2a67ddc0daa96bc33472829a7fb38</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>std::vector&lt; float &gt;</type>
      <name>TFloatArray</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a7a35d9eb2286c9bf3dd9881baaa17c48</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>std::vector&lt; int &gt;</type>
      <name>TIntArray</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>af836d85c782e7ed0d6e741d9d37a709a</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ALValue</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a5c256a421a5652478d14b39f85b26dc2</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ALValue</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a1dad9556541645e2d59e068f8285eeb9</anchor>
      <arglist>(const bool &amp;value)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ALValue</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a29cbcf8394e1dfe01958686c449ee13e</anchor>
      <arglist>(const int &amp;value)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ALValue</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>ad0551e36cbd11257b0bcb43df11e6eaa</anchor>
      <arglist>(const double &amp;value)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ALValue</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>ac2d7be0697cb28194d8c2f060a75a8e8</anchor>
      <arglist>(const float &amp;value)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ALValue</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>aa280b983e59d992545361b3d10df8c92</anchor>
      <arglist>(const std::string &amp;value)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ALValue</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a89180dfe7bc4682fbff8be731af805e6</anchor>
      <arglist>(const char *value)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ALValue</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a01bc3a24589d90aaa82fef1ce1f91218</anchor>
      <arglist>(const std::vector&lt; std::string &gt; &amp;pListString)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ALValue</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a93d5ec09d3ec91d7b21c8dd7956308f4</anchor>
      <arglist>(const std::vector&lt; float &gt; &amp;pListFloat)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ALValue</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a3b96115ee6dfb2c79ba28e11ab62e011</anchor>
      <arglist>(const std::vector&lt; int &gt; &amp;pListInt)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ALValue</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a118aa30765248af5047f51489c3bcbf6</anchor>
      <arglist>(const void *value, int nBytes)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ALValue</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a3469a0708ae5b64722e95421c095b2af</anchor>
      <arglist>(const char **pArrayOfString, int nNbrString)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ALValue</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a827b6a9977e0b0f21351d31c91f9edb1</anchor>
      <arglist>(const float *pFloat, int nNbrElement)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ALValue</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a159c2ccadb05c2db0c54db8872581add</anchor>
      <arglist>(const int *pInt, int nNbrElement)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ALValue</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a281beba62c208db821a5ff08c33ed681</anchor>
      <arglist>(const TAlValueBinaryData &amp;rhs)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ALValue</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a0ddcf3fe54dbfd581223f58f7da98aad</anchor>
      <arglist>(ALValue const &amp;rhs)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~ALValue</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>aa9f56b146188ead20ed3f63a23b47581</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>clear</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>abdffe9e8ccc01631a738a0b4b5bf76ec</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>ALValue &amp;</type>
      <name>operator=</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>ae602677a187d321efad3cf3ba4ae9bf6</anchor>
      <arglist>(const ALValue &amp;rhs)</arglist>
    </member>
    <member kind="function">
      <type>ALValue &amp;</type>
      <name>operator=</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a45e29f36cd4aa78770d03ccb650d5409</anchor>
      <arglist>(const bool &amp;rhs)</arglist>
    </member>
    <member kind="function">
      <type>ALValue &amp;</type>
      <name>operator=</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a08a9367000ecb1c1c7a0b7088c63a693</anchor>
      <arglist>(const int &amp;rhs)</arglist>
    </member>
    <member kind="function">
      <type>ALValue &amp;</type>
      <name>operator=</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>ab261e0927afd8b5292ae4beb33e1b269</anchor>
      <arglist>(const double &amp;rhs)</arglist>
    </member>
    <member kind="function">
      <type>ALValue &amp;</type>
      <name>operator=</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a2f52d41bb9adc861bb4521ee8e462a96</anchor>
      <arglist>(const float &amp;rhs)</arglist>
    </member>
    <member kind="function">
      <type>ALValue &amp;</type>
      <name>operator=</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a3d2dfc6fa4ab6f0caa9c987012ba3222</anchor>
      <arglist>(const char *rhs)</arglist>
    </member>
    <member kind="function">
      <type>ALValue &amp;</type>
      <name>operator=</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>ae632878496b5d8837e435345c5ae34d8</anchor>
      <arglist>(const TAlValueBinaryData &amp;rhs)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator==</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a7d1028592cb9e24ff5309ea5fe035e96</anchor>
      <arglist>(ALValue const &amp;other) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator!=</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a7ea6dbc41c1c379495f700c9ac99615a</anchor>
      <arglist>(ALValue const &amp;other) const </arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>operator bool &amp;</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a22c4cef7d47401519330f48a8c29951a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>operator const bool</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a132c18d0a6e288eae34ea14b69402f5e</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>operator int &amp;</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>adc445f807482c2fa87d2c3577b233433</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>operator const int</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a8a6ef543504bed5edd7b45f53d0c636e</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>operator float &amp;</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>abafa980778acf90a0026df7c01698611</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>operator const float</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>aa53075eae77157a604ee099319d0dde5</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>operator const double</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>ab06138af71fb6d39186955dbb643bb0f</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>operator std::string &amp;</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a0eb8bd292aef95e18183a41e13bfc51d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>operator const std::string &amp;</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>aaf2d050b8b34fca19e318f82329b161a</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>operator TAlValueBinaryData &amp;</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a9e5612faafbd28c66957825337a08ef4</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>operator const TAlValueBinaryData &amp;</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>ac712a8e32e2e9b2c857f2b1b3aa6d333</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>operator const void *</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a9ad07957ad3d4bf191382b9566227cc2</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>operator TStringArray</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a05fa445067490486e9dcaa5c72fbabc6</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>operator TFloatArray</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a28b24468a4fb65ff2e727d76f99eaf7a</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>operator TIntArray</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a2adf78bdff0b7bd2abf49d6b4508c5cc</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>ALValue &amp;</type>
      <name>setObject</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>acd54c347d041ead1855daff932ad4e52</anchor>
      <arglist>(const void *pData, int nDataSizeInBytes)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>SetBinary</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a94d07fd0bf85187fc3f6b6ebc2548111</anchor>
      <arglist>(const void *rhs, int nDataSizeInBytes)</arglist>
    </member>
    <member kind="function">
      <type>ALValue &amp;</type>
      <name>SetBinaryNoCopy</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>ab5012d9cf15cbd1f1eb4d275def90a7f</anchor>
      <arglist>(const void *rhs, int nDataSizeInBytes)</arglist>
    </member>
    <member kind="function">
      <type>const void *</type>
      <name>GetBinary</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>ab020c1d12600d522bb17f93cde0e75c5</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const void *</type>
      <name>getObject</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a3b6c4adac7329666c602ec4f5c7fa866</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>float *</type>
      <name>getPtrValue</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>afb761f6321476abd5fb9e5c180eee1ac</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ToStringArray</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a3cb7fdaa76eacffc812a834ca22ec6e3</anchor>
      <arglist>(TStringArray &amp;pArrayToFill, bool bInsertDefaultOnError=false) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ToFloatArray</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>ad801f675b0cb29105e8eaf5f860c314a</anchor>
      <arglist>(TFloatArray &amp;pArrayToFill, bool bInsertDefaultOnError=false) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>ToIntArray</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a001a2e590bb3fb0faa5d6167375e5a7f</anchor>
      <arglist>(TIntArray &amp;pArrayToFill, bool bInsertDefaultOnError=false) const </arglist>
    </member>
    <member kind="function">
      <type>ALValue &amp;</type>
      <name>operator[]</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>ace237f74e0c471f36981d59d22ee1223</anchor>
      <arglist>(int i)</arglist>
    </member>
    <member kind="function">
      <type>const ALValue &amp;</type>
      <name>operator[]</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a5312eb84a4adec90bf74bb1c04180e69</anchor>
      <arglist>(int i) const </arglist>
    </member>
    <member kind="function">
      <type>enum Type</type>
      <name>getType</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>aaa36032a9ebc67c4811bf04502477d26</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isValid</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a41b297b7827f3f801d0e5a3b6dcb6737</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isArray</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>ab0705bd7f945c20c1e95c3e13f9fa975</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isBool</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>ab9365385d238cafc72054216af520576</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isInt</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a179782efd43c60d3f0cf4aee80b03987</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isFloat</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a734228d4f2e4583169e09dd8a86ce1d5</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isString</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a46e524e39db4f41436d3863500100174</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isObject</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a981863f1f952bb013a674cc0997ecf36</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isBinary</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>ace032e62a8ee9df201913d4a6ed25277</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>unsigned int</type>
      <name>getSize</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a299e27b7b12f7326cc9a1f752708cc4a</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>arrayReserve</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>af73f8397433cc1a3e48074461e8984b1</anchor>
      <arglist>(int size)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>arraySetSize</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a32a87b34c637056c62e1d99e4a970677</anchor>
      <arglist>(int size)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>arrayPush</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>ad6b1b52ae4ffc83745ca2970427155b1</anchor>
      <arglist>(const ALValue &amp;pSrcToCopyNotOwned)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>arrayPopFront</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>afab9a9c1d4d578a47cb10b87aeb039c1</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>toString</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a3098611ddf3f826af0420a765d22c12c</anchor>
      <arglist>(Verbosity pnVerbosity=VerbosityMini) const </arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>toPythonBuffer</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>acd88445cb1aa6419eef7e9ff0113eeac</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>decodeB64</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>acf29748128aa55dc74f2b60d13bf94f5</anchor>
      <arglist>(const char *pszB64)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>decodeB64Object</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>aea4d319657eaf9a5cf6a006647ca309a</anchor>
      <arglist>(const char *pszB64)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>encodeB64</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a1ab245b84e1d80ccc1a69a5043c7ea3e</anchor>
      <arglist>(std::string &amp;strOutput) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>unSerializeFromText</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>ad100dfb8cb4795d09bb2e11d00080bfe</anchor>
      <arglist>(const char *szInput, int nLimitToLen=0x7FFFFFFF)</arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>serializeToText</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>ac1588f870e85237efd3fe2204afe9481</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>const unionValue</type>
      <name>getUnionValue</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a7beabe5c8f03936dd22327d56e89304a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>TAlValueArray *</type>
      <name>getArrayPtr</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a482ef62326dd32e40b53a609cf0c8186</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function" static="yes">
      <type>static enum Type</type>
      <name>deduceType</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a460d1f58d6f46dc351477796e90de158</anchor>
      <arglist>(const char *szInput, int nLimitToLen=0x7FFFFFFF)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>xUnSerializeFromText_InnerTest</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a6c341f3a33f504f762ec43deb108c84e</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static ALValue</type>
      <name>array</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a00daa63d59199c9d83e7a919318ddadc</anchor>
      <arglist>(const T0 &amp;a0)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static ALValue</type>
      <name>array</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a3f07f44e8ef29309aa7de732bff1e451</anchor>
      <arglist>(const T0 &amp;a0, const T1 &amp;a1)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static ALValue</type>
      <name>array</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a362d60158c7a9b386c10b7f159b2c41c</anchor>
      <arglist>(const T0 &amp;a0, const T1 &amp;a1, const T2 &amp;a2)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static ALValue</type>
      <name>array</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a8266c8fe979b8fd8c340f9e24dfccd9d</anchor>
      <arglist>(const T0 &amp;a0, const T1 &amp;a1, const T2 &amp;a2, const T3 &amp;a3)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static ALValue</type>
      <name>array</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>aa3f8468060c0685469370f4d59cba23c</anchor>
      <arglist>(const T0 &amp;a0, const T1 &amp;a1, const T2 &amp;a2, const T3 &amp;a3, const T4 &amp;a4)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static ALValue</type>
      <name>array</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>ab7727ac0af109db6f92fd663f145a6d6</anchor>
      <arglist>(const T0 &amp;a0, const T1 &amp;a1, const T2 &amp;a2, const T3 &amp;a3, const T4 &amp;a4, const T5 &amp;a5)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static ALValue</type>
      <name>array</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a39e56ac281e281b459a674ab5f1f8123</anchor>
      <arglist>(const T0 &amp;a0, const T1 &amp;a1, const T2 &amp;a2, const T3 &amp;a3, const T4 &amp;a4, const T5 &amp;a5, const T6 &amp;a6)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static ALValue</type>
      <name>array</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a197c5fb603e551428ab93d2022148599</anchor>
      <arglist>(const T0 &amp;a0, const T1 &amp;a1, const T2 &amp;a2, const T3 &amp;a3, const T4 &amp;a4, const T5 &amp;a5, const T6 &amp;a6, const T7 &amp;a7)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static ALValue</type>
      <name>array</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>aca48dd6d5cf914553d379df48d0eaafa</anchor>
      <arglist>(const T0 &amp;a0, const T1 &amp;a1, const T2 &amp;a2, const T3 &amp;a3, const T4 &amp;a4, const T5 &amp;a5, const T6 &amp;a6, const T7 &amp;a7, const T8 &amp;a8)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static ALValue</type>
      <name>array</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>ac2d227e78e0f8f424693e2d69f8f4a5c</anchor>
      <arglist>(const T0 &amp;a0, const T1 &amp;a1, const T2 &amp;a2, const T3 &amp;a3, const T4 &amp;a4, const T5 &amp;a5, const T6 &amp;a6, const T7 &amp;a7, const T8 &amp;a8, const T9 &amp;a9)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static std::string</type>
      <name>TypeToString</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a36b6f7fd64203d46efc73911e392478b</anchor>
      <arglist>(enum Type pnType)</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>int</type>
      <name>_type</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a9e82ea9d838fd356a860e02d90c4bddf</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>union unionValue</type>
      <name>_value</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>ab748bdcf7c4ff83302d0c7de3d632f63</anchor>
      <arglist></arglist>
    </member>
    <member kind="friend" protection="private">
      <type>friend class</type>
      <name>ALNetwork</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>ad51712c7dacda635d37313a27412d1dc</anchor>
      <arglist></arglist>
    </member>
    <member kind="friend" protection="private">
      <type>friend void</type>
      <name>ConvertALValueToSoapXml</name>
      <anchorfile>classAL_1_1ALValue.html</anchorfile>
      <anchor>a246c535e095cf2f7644fd572df3eceb6</anchor>
      <arglist>(const ALValue *pAlValue, std::string &amp;strToFill, bool bInAnArray)</arglist>
    </member>
  </compound>
  <compound kind="union">
    <name>AL::ALValue::unionValue</name>
    <filename>unionAL_1_1ALValue_1_1unionValue.html</filename>
    <member kind="variable">
      <type>TAlValueArray *</type>
      <name>asArray</name>
      <anchorfile>unionAL_1_1ALValue_1_1unionValue.html</anchorfile>
      <anchor>a947fa6417d1a671e239b1ae4a62acd20</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>TALValueBool</type>
      <name>asBool</name>
      <anchorfile>unionAL_1_1ALValue_1_1unionValue.html</anchorfile>
      <anchor>af75a284d70bcc9307d50be4cf93e7a66</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>TALValueInt</type>
      <name>asInt</name>
      <anchorfile>unionAL_1_1ALValue_1_1unionValue.html</anchorfile>
      <anchor>aa18e7809ebdeea0be0fab7291cdea650</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>TALValueFloat</type>
      <name>asFloat</name>
      <anchorfile>unionAL_1_1ALValue_1_1unionValue.html</anchorfile>
      <anchor>ab0f39d8fedd1d29ec9a3c54188645076</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>TALValueString *</type>
      <name>asString</name>
      <anchorfile>unionAL_1_1ALValue_1_1unionValue.html</anchorfile>
      <anchor>a64fb623f9a52fdebdfe6cc623ff4620a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>TAlValueBinaryData *</type>
      <name>asObject</name>
      <anchorfile>unionAL_1_1ALValue_1_1unionValue.html</anchorfile>
      <anchor>a2da869ba573fb7854ac158bf616b7523</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>TAlValueBinaryData *</type>
      <name>asBinary</name>
      <anchorfile>unionAL_1_1ALValue_1_1unionValue.html</anchorfile>
      <anchor>acf2f41952d47c0488e8cf52be2f316fe</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="page">
    <name>index</name>
    <title>libalvalue</title>
    <filename>index</filename>
    <docanchor file="index">API</docanchor>
    <docanchor file="index">qi</docanchor>
    <docanchor file="index">Extras</docanchor>
    <docanchor file="index">Known</docanchor>
  </compound>
</tagfile>
