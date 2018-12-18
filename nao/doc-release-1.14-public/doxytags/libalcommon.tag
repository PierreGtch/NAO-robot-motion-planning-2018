<?xml version='1.0' encoding='ISO-8859-1' standalone='yes' ?>
<tagfile>
  <compound kind="file">
    <name>albroker.h</name>
    <path>/home/opennao/work/doc/release-1.14/public/lib/libnaoqi/libalcommon/alcommon/</path>
    <filename>albroker_8h</filename>
    <includes id="almoduleinfo_8h" name="almoduleinfo.h" local="no" imported="no">alcommon/almoduleinfo.h</includes>
    <class kind="class">AL::ALBroker</class>
    <namespace>AL</namespace>
    <member kind="define">
      <type>#define</type>
      <name>BROKERMASK_KEEPALIVE</name>
      <anchorfile>albroker_8h.html</anchorfile>
      <anchor>a6dd8d5b9993c214476a1805de8da340c</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>BROKERMASK_LIGHT</name>
      <anchorfile>albroker_8h.html</anchorfile>
      <anchor>a167dd8f4960797bf2c7efb899f544502</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>BROKERMASK_NOSERVER</name>
      <anchorfile>albroker_8h.html</anchorfile>
      <anchor>af8b6e0f2b35c15648eda613b3d94e387</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>BROKERMASK_NOHEARTBEAT</name>
      <anchorfile>albroker_8h.html</anchorfile>
      <anchor>a7e0ce9063e80f6b5d3fb02d6596c0f55</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>BROKERMASK_WITHALNETWORK</name>
      <anchorfile>albroker_8h.html</anchorfile>
      <anchor>a77b10a670cd8c806899dc0a47068c54c</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>getMemoryProxy</name>
      <anchorfile>albroker_8h.html</anchorfile>
      <anchor>a2b612ed27a8157084f89cbe9cc1a738c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>getLedsProxy</name>
      <anchorfile>albroker_8h.html</anchorfile>
      <anchor>a8f6ad685542e4f5dc589c319afcdfe12</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>getLoggerProxy</name>
      <anchorfile>albroker_8h.html</anchorfile>
      <anchor>a3f322396e27758842b11d6f9425111e1</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>getMotionProxy</name>
      <anchorfile>albroker_8h.html</anchorfile>
      <anchor>a8bcecb2f0f14de9a8d04221a91e660a4</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>getPreferencesProxy</name>
      <anchorfile>albroker_8h.html</anchorfile>
      <anchor>ad5dfbdede618ccc9a74da968398e7e97</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>getDcmProxy</name>
      <anchorfile>albroker_8h.html</anchorfile>
      <anchor>ac432c066266f4f60fc1d8c761a7695d9</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>albrokermanager.h</name>
    <path>/home/opennao/work/doc/release-1.14/public/lib/libnaoqi/libalcommon/alcommon/</path>
    <filename>albrokermanager_8h</filename>
    <class kind="class">AL::ALBrokerManager</class>
    <namespace>AL</namespace>
    <member kind="define">
      <type>#define</type>
      <name>MAXBROKER</name>
      <anchorfile>albrokermanager_8h.html</anchorfile>
      <anchor>a3c80612e48de90589be7c6117c2ed918</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>alfunctor.h</name>
    <path>/home/opennao/work/doc/release-1.14/public/lib/libnaoqi/libalcommon/alcommon/</path>
    <filename>alfunctor_8h</filename>
    <class kind="class">AL::ALFunctorBase</class>
    <namespace>AL</namespace>
    <member kind="typedef">
      <type>void</type>
      <name>ALVoid</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a61096da20b93839e9ec64d6bad0829b4</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>boost::shared_ptr&lt; ALFunctorBase &gt;</type>
      <name>createFunctor</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a39ffe993645c28f236cf2bf3d17d8bc1</anchor>
      <arglist>(C *obj, R(C::*f)())</arglist>
    </member>
    <member kind="function">
      <type>boost::shared_ptr&lt; ALFunctorBase &gt;</type>
      <name>createFunctor</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a13250804fb6f9f8019091513752c7f9c</anchor>
      <arglist>(C *obj, R(C::*f)(const P1 &amp;))</arglist>
    </member>
    <member kind="function">
      <type>boost::shared_ptr&lt; ALFunctorBase &gt;</type>
      <name>createFunctor</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a38f1fa8f6338794744c791c0c824b25b</anchor>
      <arglist>(C *obj, R(C::*f)(const P1 &amp;, const P2 &amp;))</arglist>
    </member>
    <member kind="function">
      <type>boost::shared_ptr&lt; ALFunctorBase &gt;</type>
      <name>createFunctor</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>ae681b9fe3de5f032c2f51752a2a21665</anchor>
      <arglist>(C *obj, R(C::*f)(const P1 &amp;, const P2 &amp;, const P3 &amp;))</arglist>
    </member>
    <member kind="function">
      <type>boost::shared_ptr&lt; ALFunctorBase &gt;</type>
      <name>createFunctor</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a72aef7f1610f33ecf3c1516211b021b5</anchor>
      <arglist>(C *obj, R(C::*f)(const P1 &amp;, const P2 &amp;, const P3 &amp;, const P4 &amp;))</arglist>
    </member>
    <member kind="function">
      <type>boost::shared_ptr&lt; ALFunctorBase &gt;</type>
      <name>createFunctor</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a89fb262861f2ae797d72ec359125841f</anchor>
      <arglist>(C *obj, R(C::*f)(const P1 &amp;, const P2 &amp;, const P3 &amp;, const P4 &amp;, const P5 &amp;))</arglist>
    </member>
    <member kind="function">
      <type>boost::shared_ptr&lt; ALFunctorBase &gt;</type>
      <name>createFunctor</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>adc80738cde9b5522f057c699d0b2a932</anchor>
      <arglist>(C *obj, R(C::*f)(const P1 &amp;, const P2 &amp;, const P3 &amp;, const P4 &amp;, const P5 &amp;, const P6 &amp;))</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>almethodinfo.h</name>
    <path>/home/opennao/work/doc/release-1.14/public/lib/libnaoqi/libalcommon/alcommon/</path>
    <filename>almethodinfo_8h</filename>
    <includes id="alparamtype_8h" name="alparamtype.h" local="no" imported="no">alcommon/alparamtype.h</includes>
    <class kind="class">AL::ALMethodInfo</class>
    <class kind="class">AL::ALMethodInfo::ALParameterInfo</class>
    <class kind="class">AL::ALMethodInfo::ALParameterInfoOptional</class>
    <class kind="class">AL::ALMethodInfo::ALExample</class>
    <namespace>AL</namespace>
    <member kind="define">
      <type>#define</type>
      <name>BLOCKINGFUNCTION</name>
      <anchorfile>almethodinfo_8h.html</anchorfile>
      <anchor>adc266d64bb9074910797830bfd16afa1</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>ASYNCHRONOUSFUNCTION</name>
      <anchorfile>almethodinfo_8h.html</anchorfile>
      <anchor>acf53cf76339b5e784f11346667e823f7</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>completeAndCheck</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a2809f79dfb51798bcc7aec0a7d896d3c</anchor>
      <arglist>(R(C::*)(), ALMethodInfo &amp;pDesc)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>completeAndCheck</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>abd1d6c1d64d519b63fc46cf3b6c71805</anchor>
      <arglist>(R(C::*)(P1), ALMethodInfo &amp;pDesc)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>completeAndCheck</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>abd62c8e2fc75e0896d5811af7ed2b902</anchor>
      <arglist>(R(C::*)(P1, P2), ALMethodInfo &amp;pDesc)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>completeAndCheck</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>af26b9ddae173d637c65e61c143295b10</anchor>
      <arglist>(R(C::*)(P1, P2, P3), ALMethodInfo &amp;pDesc)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>completeAndCheck</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a9cadfbde4c3601da4138c75429fd9aa6</anchor>
      <arglist>(R(C::*)(P1, P2, P3, P4), ALMethodInfo &amp;pDesc)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>completeAndCheck</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>ac219f2f174bde849078a891755ecb844</anchor>
      <arglist>(R(C::*)(P1, P2, P3, P4, P5), ALMethodInfo &amp;pDesc)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>completeAndCheck</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>adea24b16576cbd827d83f56d0b9121d8</anchor>
      <arglist>(R(C::*)(P1, P2, P3, P4, P5, P6), ALMethodInfo &amp;pDesc)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>almodule.h</name>
    <path>/home/opennao/work/doc/release-1.14/public/lib/libnaoqi/libalcommon/alcommon/</path>
    <filename>almodule_8h</filename>
    <includes id="almodulecore_8h" name="almodulecore.h" local="no" imported="no">alcommon/almodulecore.h</includes>
    <class kind="class">AL::ALModule</class>
    <namespace>AL</namespace>
  </compound>
  <compound kind="file">
    <name>almodulecore.h</name>
    <path>/home/opennao/work/doc/release-1.14/public/lib/libnaoqi/libalcommon/alcommon/</path>
    <filename>almodulecore_8h</filename>
    <includes id="almoduleinfo_8h" name="almoduleinfo.h" local="no" imported="no">alcommon/almoduleinfo.h</includes>
    <includes id="almethodinfo_8h" name="almethodinfo.h" local="no" imported="no">alcommon/almethodinfo.h</includes>
    <includes id="alparamtype_8h" name="alparamtype.h" local="no" imported="no">alcommon/alparamtype.h</includes>
    <includes id="alfunctor_8h" name="alfunctor.h" local="no" imported="no">alcommon/alfunctor.h</includes>
    <class kind="class">AL::ALModuleCore</class>
    <namespace>AL</namespace>
    <member kind="define">
      <type>#define</type>
      <name>BIND_OBJ_METHOD</name>
      <anchorfile>almodulecore_8h.html</anchorfile>
      <anchor>a670d5f2ad4002e28a6b05b167bf66a3d</anchor>
      <arglist>(objptr, meth)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>BIND_METHOD</name>
      <anchorfile>almodulecore_8h.html</anchorfile>
      <anchor>a20256694f025bd2bae1ee8ff057ad138</anchor>
      <arglist>(x)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>almoduleinfo.h</name>
    <path>/home/opennao/work/doc/release-1.14/public/lib/libnaoqi/libalcommon/alcommon/</path>
    <filename>almoduleinfo_8h</filename>
    <class kind="class">AL::ALModuleInfo</class>
    <namespace>AL</namespace>
  </compound>
  <compound kind="file">
    <name>alparamtype.h</name>
    <path>/home/opennao/work/doc/release-1.14/public/lib/libnaoqi/libalcommon/alcommon/</path>
    <filename>alparamtype_8h</filename>
    <namespace>AL</namespace>
    <member kind="function">
      <type>std::string</type>
      <name>getTypeString</name>
      <anchorfile>group__Signature.html</anchorfile>
      <anchor>ga36cb647c6e2b07bb97a9916ccea7690e</anchor>
      <arglist>(int type)</arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>getParamStrType</name>
      <anchorfile>group__Signature.html</anchorfile>
      <anchor>ga20054de243b056bf5101e49ba9d5c681</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>alproxy.h</name>
    <path>/home/opennao/work/doc/release-1.14/public/lib/libnaoqi/libalcommon/alcommon/</path>
    <filename>alproxy_8h</filename>
    <includes id="almoduleinfo_8h" name="almoduleinfo.h" local="no" imported="no">alcommon/almoduleinfo.h</includes>
    <includes id="almodule_8h" name="almodule.h" local="no" imported="no">alcommon/almodule.h</includes>
    <includes id="alfunctor_8h" name="alfunctor.h" local="no" imported="no">alcommon/alfunctor.h</includes>
    <class kind="class">AL::ALProxy</class>
    <namespace>AL</namespace>
  </compound>
  <compound kind="group">
    <name>Broker</name>
    <title>Broker</title>
    <filename>group__Broker.html</filename>
    <class kind="class">AL::ALBroker</class>
    <class kind="class">AL::ALBrokerManager</class>
    <class kind="class">AL::ALModuleInfo</class>
  </compound>
  <compound kind="group">
    <name>Module</name>
    <title>Module</title>
    <filename>group__Module.html</filename>
    <class kind="class">AL::ALMethodInfo</class>
    <class kind="class">AL::ALModule</class>
    <class kind="class">AL::ALModuleCore</class>
    <class kind="class">AL::ALModuleInfo</class>
  </compound>
  <compound kind="group">
    <name>Proxy</name>
    <title>Proxy</title>
    <filename>group__Proxy.html</filename>
    <class kind="class">AL::ALMethodInfo</class>
    <class kind="class">AL::ALModuleInfo</class>
    <class kind="class">AL::ALProxy</class>
  </compound>
  <compound kind="group">
    <name>Signature</name>
    <title>Signature</title>
    <filename>group__Signature.html</filename>
    <namespace>AL</namespace>
    <member kind="function">
      <type>std::string</type>
      <name>getTypeString</name>
      <anchorfile>group__Signature.html</anchorfile>
      <anchor>ga36cb647c6e2b07bb97a9916ccea7690e</anchor>
      <arglist>(int type)</arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>getParamStrType</name>
      <anchorfile>group__Signature.html</anchorfile>
      <anchor>ga20054de243b056bf5101e49ba9d5c681</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>MainFunc</name>
    <title>Main Function</title>
    <filename>group__MainFunc.html</filename>
    <member kind="typedef">
      <type>boost::function1&lt; int, boost::shared_ptr&lt; AL::ALBroker &gt; &gt;</type>
      <name>TMainType</name>
      <anchorfile>group__MainFunc.html</anchorfile>
      <anchor>gacd5022fbb15d3e8d915205eb52ee82af</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>mainFunction</name>
      <anchorfile>group__MainFunc.html</anchorfile>
      <anchor>gaad4aead0e5b82e53cb41d4596318e0f1</anchor>
      <arglist>(const std::string &amp;pBrokerName, int argc, char *argv[], const TMainType &amp;callback)</arglist>
    </member>
  </compound>
  <compound kind="namespace">
    <name>AL</name>
    <filename>namespaceAL.html</filename>
    <class kind="class">AL::ALBroker</class>
    <class kind="class">AL::ALBrokerManager</class>
    <class kind="class">AL::ALFunctorBase</class>
    <class kind="class">AL::ALMethodInfo</class>
    <class kind="class">AL::ALModule</class>
    <class kind="class">AL::ALModuleCore</class>
    <class kind="class">AL::ALModuleInfo</class>
    <class kind="class">AL::ALProxy</class>
    <member kind="typedef">
      <type>void</type>
      <name>ALVoid</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a61096da20b93839e9ec64d6bad0829b4</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>boost::shared_ptr&lt; ALFunctorBase &gt;</type>
      <name>createFunctor</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a39ffe993645c28f236cf2bf3d17d8bc1</anchor>
      <arglist>(C *obj, R(C::*f)())</arglist>
    </member>
    <member kind="function">
      <type>boost::shared_ptr&lt; ALFunctorBase &gt;</type>
      <name>createFunctor</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a13250804fb6f9f8019091513752c7f9c</anchor>
      <arglist>(C *obj, R(C::*f)(const P1 &amp;))</arglist>
    </member>
    <member kind="function">
      <type>boost::shared_ptr&lt; ALFunctorBase &gt;</type>
      <name>createFunctor</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a38f1fa8f6338794744c791c0c824b25b</anchor>
      <arglist>(C *obj, R(C::*f)(const P1 &amp;, const P2 &amp;))</arglist>
    </member>
    <member kind="function">
      <type>boost::shared_ptr&lt; ALFunctorBase &gt;</type>
      <name>createFunctor</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>ae681b9fe3de5f032c2f51752a2a21665</anchor>
      <arglist>(C *obj, R(C::*f)(const P1 &amp;, const P2 &amp;, const P3 &amp;))</arglist>
    </member>
    <member kind="function">
      <type>boost::shared_ptr&lt; ALFunctorBase &gt;</type>
      <name>createFunctor</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a72aef7f1610f33ecf3c1516211b021b5</anchor>
      <arglist>(C *obj, R(C::*f)(const P1 &amp;, const P2 &amp;, const P3 &amp;, const P4 &amp;))</arglist>
    </member>
    <member kind="function">
      <type>boost::shared_ptr&lt; ALFunctorBase &gt;</type>
      <name>createFunctor</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a89fb262861f2ae797d72ec359125841f</anchor>
      <arglist>(C *obj, R(C::*f)(const P1 &amp;, const P2 &amp;, const P3 &amp;, const P4 &amp;, const P5 &amp;))</arglist>
    </member>
    <member kind="function">
      <type>boost::shared_ptr&lt; ALFunctorBase &gt;</type>
      <name>createFunctor</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>adc80738cde9b5522f057c699d0b2a932</anchor>
      <arglist>(C *obj, R(C::*f)(const P1 &amp;, const P2 &amp;, const P3 &amp;, const P4 &amp;, const P5 &amp;, const P6 &amp;))</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>completeAndCheck</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a2809f79dfb51798bcc7aec0a7d896d3c</anchor>
      <arglist>(R(C::*)(), ALMethodInfo &amp;pDesc)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>completeAndCheck</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>abd1d6c1d64d519b63fc46cf3b6c71805</anchor>
      <arglist>(R(C::*)(P1), ALMethodInfo &amp;pDesc)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>completeAndCheck</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>abd62c8e2fc75e0896d5811af7ed2b902</anchor>
      <arglist>(R(C::*)(P1, P2), ALMethodInfo &amp;pDesc)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>completeAndCheck</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>af26b9ddae173d637c65e61c143295b10</anchor>
      <arglist>(R(C::*)(P1, P2, P3), ALMethodInfo &amp;pDesc)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>completeAndCheck</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a9cadfbde4c3601da4138c75429fd9aa6</anchor>
      <arglist>(R(C::*)(P1, P2, P3, P4), ALMethodInfo &amp;pDesc)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>completeAndCheck</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>ac219f2f174bde849078a891755ecb844</anchor>
      <arglist>(R(C::*)(P1, P2, P3, P4, P5), ALMethodInfo &amp;pDesc)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>completeAndCheck</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>adea24b16576cbd827d83f56d0b9121d8</anchor>
      <arglist>(R(C::*)(P1, P2, P3, P4, P5, P6), ALMethodInfo &amp;pDesc)</arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>getTypeString</name>
      <anchorfile>group__Signature.html</anchorfile>
      <anchor>ga36cb647c6e2b07bb97a9916ccea7690e</anchor>
      <arglist>(int type)</arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>getParamStrType</name>
      <anchorfile>group__Signature.html</anchorfile>
      <anchor>ga20054de243b056bf5101e49ba9d5c681</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>AL::ALBroker</name>
    <filename>classAL_1_1ALBroker.html</filename>
    <member kind="typedef">
      <type>boost::shared_ptr&lt; ALBroker &gt;</type>
      <name>Ptr</name>
      <anchorfile>classAL_1_1ALBroker.html</anchorfile>
      <anchor>adb265378b281cc518c012995fd742a1c</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>boost::weak_ptr&lt; ALBroker &gt;</type>
      <name>WeakPtr</name>
      <anchorfile>classAL_1_1ALBroker.html</anchorfile>
      <anchor>aace590a8ad02e2961b84785d54d1e9d1</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>boost::shared_ptr&lt; ALBroker &gt;</type>
      <name>getThis</name>
      <anchorfile>classAL_1_1ALBroker.html</anchorfile>
      <anchor>a481fba1f4e3fda2b9ebceb40456e64af</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>boost::shared_ptr&lt; const ALBroker &gt;</type>
      <name>getThis</name>
      <anchorfile>classAL_1_1ALBroker.html</anchorfile>
      <anchor>a6e1936b49b8a6a7d626e7a0a9390f27d</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ALBroker</name>
      <anchorfile>classAL_1_1ALBroker.html</anchorfile>
      <anchor>a7823007f10f810c6981c1ec06d75010b</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~ALBroker</name>
      <anchorfile>classAL_1_1ALBroker.html</anchorfile>
      <anchor>a1359d6f7188246952b4b0c0cb5ba4fb7</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setBrokerManagerInstance</name>
      <anchorfile>classAL_1_1ALBroker.html</anchorfile>
      <anchor>a1b69350468933293f796bb5f26942c25</anchor>
      <arglist>(boost::shared_ptr&lt; ALBrokerManager &gt; pBrokerManager)</arglist>
    </member>
    <member kind="function">
      <type>boost::shared_ptr&lt; ALModuleCore &gt;</type>
      <name>getModuleByName</name>
      <anchorfile>classAL_1_1ALBroker.html</anchorfile>
      <anchor>af5674e4d3603b1e303b43d8dd0d92751</anchor>
      <arglist>(const std::string &amp;pModuleName)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>registerModule</name>
      <anchorfile>classAL_1_1ALBroker.html</anchorfile>
      <anchor>a08f368bce551e95f2a331d04c819c6d8</anchor>
      <arglist>(boost::shared_ptr&lt; ALModuleCore &gt; pModule)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>unregisterModule</name>
      <anchorfile>classAL_1_1ALBroker.html</anchorfile>
      <anchor>a86c592f95d0bf834a81a97e32cad74b9</anchor>
      <arglist>(const std::string &amp;pModuleName)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isModulePresent</name>
      <anchorfile>classAL_1_1ALBroker.html</anchorfile>
      <anchor>a03fe30f5ccd662b3f6317d96361648ea</anchor>
      <arglist>(const std::string &amp;pModuleName)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getModuleList</name>
      <anchorfile>classAL_1_1ALBroker.html</anchorfile>
      <anchor>a788c7343247bcc6d4554ae36e2d5adc6</anchor>
      <arglist>(boost::shared_ptr&lt; std::vector&lt; ALModuleInfo &gt; &gt; pModuleList)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getBrokerList</name>
      <anchorfile>classAL_1_1ALBroker.html</anchorfile>
      <anchor>a4e40f9e973b41b1e925ebc1a53dad8e1</anchor>
      <arglist>(std::vector&lt; ALModuleInfo &gt; &amp;pBrokerList)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getGlobalModuleList</name>
      <anchorfile>classAL_1_1ALBroker.html</anchorfile>
      <anchor>a356f150f11209bcb84f3d9ce3a69d0ff</anchor>
      <arglist>(boost::shared_ptr&lt; std::vector&lt; ALModuleInfo &gt; &gt; pModuleList)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isExiting</name>
      <anchorfile>classAL_1_1ALBroker.html</anchorfile>
      <anchor>a05e5b94352a90b72a0d9a612b8c80ebf</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>shutdown</name>
      <anchorfile>classAL_1_1ALBroker.html</anchorfile>
      <anchor>a8f7e7337b7517e1cbb1fae0b36e2a3d6</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>getName</name>
      <anchorfile>classAL_1_1ALBroker.html</anchorfile>
      <anchor>a6d5e7032c02499c5b729c8737a83e6b5</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>getIP</name>
      <anchorfile>classAL_1_1ALBroker.html</anchorfile>
      <anchor>a447519031302a58441dd9d8fe3fab723</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getPort</name>
      <anchorfile>classAL_1_1ALBroker.html</anchorfile>
      <anchor>a262661a5de4b3619bde9fd29e8d3f9af</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>getParentIP</name>
      <anchorfile>classAL_1_1ALBroker.html</anchorfile>
      <anchor>ab03afd1917e2fedbe7896e7c2b8ae869</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getParentPort</name>
      <anchorfile>classAL_1_1ALBroker.html</anchorfile>
      <anchor>a5c9447b77acf7e88ad0eb9d4265e5b8e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>boost::shared_ptr&lt; ALProxy &gt;</type>
      <name>getProxy</name>
      <anchorfile>classAL_1_1ALBroker.html</anchorfile>
      <anchor>a60c3bb0dbb5d94ae3c5cf2813b054730</anchor>
      <arglist>(const std::string &amp;pProxyName, int pProxyOption=0)</arglist>
    </member>
    <member kind="function">
      <type>const std::string</type>
      <name>httpGet</name>
      <anchorfile>classAL_1_1ALBroker.html</anchorfile>
      <anchor>a9858ba585df01626a1a12352a7013da5</anchor>
      <arglist>(const std::string &amp;pPath)</arglist>
    </member>
    <member kind="function">
      <type>boost::shared_ptr&lt; T &gt;</type>
      <name>getSpecialisedProxy</name>
      <anchorfile>classAL_1_1ALBroker.html</anchorfile>
      <anchor>a8021018825b964326521348295647032</anchor>
      <arglist>(const std::string &amp;name=std::string())</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static boost::shared_ptr&lt; ALBroker &gt;</type>
      <name>createBroker</name>
      <anchorfile>classAL_1_1ALBroker.html</anchorfile>
      <anchor>a7a8626595074c256cb650b648ea9992b</anchor>
      <arglist>(const std::string &amp;pName, const std::string &amp;pIP, int pPort, const std::string &amp;pParentIP, int pParentPort, int pKeepAlive=0, std::string pPath=&quot;&quot;, bool pLoadLib=true)</arglist>
    </member>
    <member kind="variable">
      <type>boost::weak_ptr&lt; ALBrokerManager &gt;</type>
      <name>fBrokerManager</name>
      <anchorfile>classAL_1_1ALBroker.html</anchorfile>
      <anchor>aeced43dbb9382d4a029bd3e84a65e53e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>ALBrokerImpl *</type>
      <name>_private</name>
      <anchorfile>classAL_1_1ALBroker.html</anchorfile>
      <anchor>a4a2e8337c8db2d8dcd69cbfad8734a3a</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>AL::ALBrokerManager</name>
    <filename>classAL_1_1ALBrokerManager.html</filename>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~ALBrokerManager</name>
      <anchorfile>classAL_1_1ALBrokerManager.html</anchorfile>
      <anchor>a4e54511c6875610fab4131bd37769368</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addBroker</name>
      <anchorfile>classAL_1_1ALBrokerManager.html</anchorfile>
      <anchor>a76214f009e141c00739b9db96dc48c00</anchor>
      <arglist>(boost::shared_ptr&lt; ALBroker &gt; pBroker)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeBroker</name>
      <anchorfile>classAL_1_1ALBrokerManager.html</anchorfile>
      <anchor>a92daac26b5d06e777ea4e9d9b59c5340</anchor>
      <arglist>(boost::shared_ptr&lt; ALBroker &gt; pBroker)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>removeFromList</name>
      <anchorfile>classAL_1_1ALBrokerManager.html</anchorfile>
      <anchor>ae96028511a6f63bca18af513925b6bfe</anchor>
      <arglist>(boost::shared_ptr&lt; ALBroker &gt; pBroker)</arglist>
    </member>
    <member kind="function">
      <type>boost::shared_ptr&lt; ALBroker &gt;</type>
      <name>getRandomBroker</name>
      <anchorfile>classAL_1_1ALBrokerManager.html</anchorfile>
      <anchor>a12859280bec3705bff0642d7c75956f4</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>boost::shared_ptr&lt; ALBroker &gt;</type>
      <name>getBroker</name>
      <anchorfile>classAL_1_1ALBrokerManager.html</anchorfile>
      <anchor>a120d98102ee635e146e69a2cf40e8bf8</anchor>
      <arglist>(int i)</arglist>
    </member>
    <member kind="function">
      <type>boost::shared_ptr&lt; ALBroker &gt;</type>
      <name>getBrokerByIPPort</name>
      <anchorfile>classAL_1_1ALBrokerManager.html</anchorfile>
      <anchor>af8e2502b180ec92f7c2bd7aba3f53c5d</anchor>
      <arglist>(const std::string &amp;strEndPoint)</arglist>
    </member>
    <member kind="function">
      <type>boost::shared_ptr&lt; ALBroker &gt;</type>
      <name>getBrokerByIPPort</name>
      <anchorfile>classAL_1_1ALBrokerManager.html</anchorfile>
      <anchor>aaf1071c2dc23cd54d045d3d148777de0</anchor>
      <arglist>(const std::string &amp;strIP, int pPort)</arglist>
    </member>
    <member kind="function">
      <type>boost::shared_ptr&lt; ALBroker &gt;</type>
      <name>getBrokerByParentIPPort</name>
      <anchorfile>classAL_1_1ALBrokerManager.html</anchorfile>
      <anchor>a4fc33a4cba6a0a11c7b4a29c8f82ec87</anchor>
      <arglist>(const std::string &amp;strIP, int pPort)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>killAllBroker</name>
      <anchorfile>classAL_1_1ALBrokerManager.html</anchorfile>
      <anchor>a3aa7e935f2d6218a1febc055e5859ffe</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>boost::shared_ptr&lt; ALBroker &gt;</type>
      <name>getReservedBroker</name>
      <anchorfile>classAL_1_1ALBrokerManager.html</anchorfile>
      <anchor>a519bd50f5950f6e66c41be0ace61fb2a</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static boost::shared_ptr&lt; ALBrokerManager &gt;</type>
      <name>getInstance</name>
      <anchorfile>classAL_1_1ALBrokerManager.html</anchorfile>
      <anchor>ae939e8c43ecb071f703a3fc90029f032</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static boost::shared_ptr&lt; ALBrokerManager &gt;</type>
      <name>setInstance</name>
      <anchorfile>classAL_1_1ALBrokerManager.html</anchorfile>
      <anchor>a8a907f6a1db7975d4e998c0745a72016</anchor>
      <arglist>(boost::shared_ptr&lt; ALBrokerManager &gt; pSingleton)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>kill</name>
      <anchorfile>classAL_1_1ALBrokerManager.html</anchorfile>
      <anchor>a683344c09a2104e324024a0e1aa0dafd</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>ALBrokerManager</name>
      <anchorfile>classAL_1_1ALBrokerManager.html</anchorfile>
      <anchor>a51af21293e6cc3ea65115b9b3070aae6</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>AL::ALFunctorBase</name>
    <filename>classAL_1_1ALFunctorBase.html</filename>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>call</name>
      <anchorfile>classAL_1_1ALFunctorBase.html</anchorfile>
      <anchor>ac064a41e030bebf4cdc12f65c9e391cc</anchor>
      <arglist>(const ALValue &amp;pParams, ALValue &amp;pResult)=0</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~ALFunctorBase</name>
      <anchorfile>classAL_1_1ALFunctorBase.html</anchorfile>
      <anchor>a54ec6b464edfea91002b5f1953e1da7c</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>AL::ALMethodInfo</name>
    <filename>classAL_1_1ALMethodInfo.html</filename>
    <class kind="class">AL::ALMethodInfo::ALExample</class>
    <class kind="class">AL::ALMethodInfo::ALParameterInfo</class>
    <class kind="class">AL::ALMethodInfo::ALParameterInfoOptional</class>
    <member kind="enumeration">
      <name>methodOption</name>
      <anchorfile>classAL_1_1ALMethodInfo.html</anchorfile>
      <anchor>a4f0b84ecb263b9cef67f272563bb7ee9</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CPPMethod</name>
      <anchorfile>classAL_1_1ALMethodInfo.html</anchorfile>
      <anchor>a4f0b84ecb263b9cef67f272563bb7ee9a5d195c1dddab811669943eeb1da0e39f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>AsynchronousMethod</name>
      <anchorfile>classAL_1_1ALMethodInfo.html</anchorfile>
      <anchor>a4f0b84ecb263b9cef67f272563bb7ee9a226c1de4b0f1943860cfcfeb2a04bdf2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>localMethod</name>
      <anchorfile>classAL_1_1ALMethodInfo.html</anchorfile>
      <anchor>a4f0b84ecb263b9cef67f272563bb7ee9ac26bd7045f063f729b3feb29f6d3c3b3</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ALMethodInfo</name>
      <anchorfile>classAL_1_1ALMethodInfo.html</anchorfile>
      <anchor>ad24c3ef4fea0d0c86ef14a7a39f128f2</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~ALMethodInfo</name>
      <anchorfile>classAL_1_1ALMethodInfo.html</anchorfile>
      <anchor>abc682bd61b312d11a7c10d7d49265050</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isCpp</name>
      <anchorfile>classAL_1_1ALMethodInfo.html</anchorfile>
      <anchor>a435e1ebf0763c9992c264ed211235997</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isAsynchronous</name>
      <anchorfile>classAL_1_1ALMethodInfo.html</anchorfile>
      <anchor>a0fcf9e6aba87af8ad8b5d4078721a48f</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isLocalMethod</name>
      <anchorfile>classAL_1_1ALMethodInfo.html</anchorfile>
      <anchor>a57b08e770589df275f4cc2eb1a26792d</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addOption</name>
      <anchorfile>classAL_1_1ALMethodInfo.html</anchorfile>
      <anchor>aa65449f582387fa8ebd9593fab922e73</anchor>
      <arglist>(int pOption)</arglist>
    </member>
    <member kind="function">
      <type>ALFunctorBase *</type>
      <name>getFunction</name>
      <anchorfile>classAL_1_1ALMethodInfo.html</anchorfile>
      <anchor>ade64122f96d53ec7237d1855118e3c7f</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>clear</name>
      <anchorfile>classAL_1_1ALMethodInfo.html</anchorfile>
      <anchor>abeb7516aea62c2aa26bfda5cf5d5d039</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="variable">
      <type>std::string</type>
      <name>moduleName</name>
      <anchorfile>classAL_1_1ALMethodInfo.html</anchorfile>
      <anchor>a8f4471decbc871d0e8fb1d3bbaf70a9a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::string</type>
      <name>methodName</name>
      <anchorfile>classAL_1_1ALMethodInfo.html</anchorfile>
      <anchor>a9c0cdb4ac2fcc31cf0d7d23b02fa843b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::string</type>
      <name>methodDescription</name>
      <anchorfile>classAL_1_1ALMethodInfo.html</anchorfile>
      <anchor>a0c866034e5fa3a6c3774218fa2dd97a5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::vector&lt; ALParameterInfo &gt;</type>
      <name>parameters</name>
      <anchorfile>classAL_1_1ALMethodInfo.html</anchorfile>
      <anchor>a66e2ac282f28bac432bdea0026e9d9ea</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::string</type>
      <name>returnValue</name>
      <anchorfile>classAL_1_1ALMethodInfo.html</anchorfile>
      <anchor>af941ec7aebaf8852b5a568bb0f53bdd2</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::vector&lt; ALExample &gt;</type>
      <name>examples</name>
      <anchorfile>classAL_1_1ALMethodInfo.html</anchorfile>
      <anchor>a029f0788a91f941bea91c7136c04d8d4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>boost::shared_ptr&lt; ALFunctorBase &gt;</type>
      <name>ptrOnMethod</name>
      <anchorfile>classAL_1_1ALMethodInfo.html</anchorfile>
      <anchor>aac66abea626e3f0c856c5dfc20d467a5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>ALParameterInfo</type>
      <name>returnInfo</name>
      <anchorfile>classAL_1_1ALMethodInfo.html</anchorfile>
      <anchor>a7cf9555db2c386f423b5ec29e8eabec0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>short</type>
      <name>mask</name>
      <anchorfile>classAL_1_1ALMethodInfo.html</anchorfile>
      <anchor>a64d93f470412004af331dbe97b65806f</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>AL::ALMethodInfo::ALExample</name>
    <filename>classAL_1_1ALMethodInfo_1_1ALExample.html</filename>
    <member kind="variable">
      <type>std::string</type>
      <name>language</name>
      <anchorfile>classAL_1_1ALMethodInfo_1_1ALExample.html</anchorfile>
      <anchor>a7908f3fffc107adf3ce5f210311ea9a7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::string</type>
      <name>strExample</name>
      <anchorfile>classAL_1_1ALMethodInfo_1_1ALExample.html</anchorfile>
      <anchor>a30247eb54f3778259bb4adfa5a716e00</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>AL::ALMethodInfo::ALParameterInfo</name>
    <filename>classAL_1_1ALMethodInfo_1_1ALParameterInfo.html</filename>
    <member kind="variable">
      <type>std::string</type>
      <name>paramError</name>
      <anchorfile>classAL_1_1ALMethodInfo_1_1ALParameterInfo.html</anchorfile>
      <anchor>a80e5d4881800e8f671c0defc71dfee9e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::string</type>
      <name>name</name>
      <anchorfile>classAL_1_1ALMethodInfo_1_1ALParameterInfo.html</anchorfile>
      <anchor>aab4ed8f586175db7be0a90f3a2d56391</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::string</type>
      <name>description</name>
      <anchorfile>classAL_1_1ALMethodInfo_1_1ALParameterInfo.html</anchorfile>
      <anchor>a376f00568c41400386e75e2f156e71e8</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::string</type>
      <name>strType</name>
      <anchorfile>classAL_1_1ALMethodInfo_1_1ALParameterInfo.html</anchorfile>
      <anchor>a60b939a908616753e227c5af8bcfae66</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>optional</name>
      <anchorfile>classAL_1_1ALMethodInfo_1_1ALParameterInfo.html</anchorfile>
      <anchor>a2f7ca935f1e36fa40637f739d9251085</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>AL::ALMethodInfo::ALParameterInfoOptional</name>
    <filename>classAL_1_1ALMethodInfo_1_1ALParameterInfoOptional.html</filename>
    <templarg></templarg>
    <member kind="function">
      <type></type>
      <name>ALParameterInfoOptional</name>
      <anchorfile>classAL_1_1ALMethodInfo_1_1ALParameterInfoOptional.html</anchorfile>
      <anchor>ae8dccc3961b45f60ae686e7e6afc4595</anchor>
      <arglist>(T defaultValue)</arglist>
    </member>
    <member kind="variable">
      <type>T</type>
      <name>m_defaultValue</name>
      <anchorfile>classAL_1_1ALMethodInfo_1_1ALParameterInfoOptional.html</anchorfile>
      <anchor>a9e32b1ed03a8c6c768b0694a640a7d8e</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>AL::ALModule</name>
    <filename>classAL_1_1ALModule.html</filename>
    <member kind="function">
      <type></type>
      <name>ALModule</name>
      <anchorfile>classAL_1_1ALModule.html</anchorfile>
      <anchor>a79a3fdc39c5d403c76a7d03b9d619991</anchor>
      <arglist>(boost::shared_ptr&lt; ALBroker &gt; pBroker, const std::string &amp;pName)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~ALModule</name>
      <anchorfile>classAL_1_1ALModule.html</anchorfile>
      <anchor>aeec3fc209ce5ebbcb39eb3a94ec031bd</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual std::string</type>
      <name>httpGet</name>
      <anchorfile>classAL_1_1ALModule.html</anchorfile>
      <anchor>ae2bd68dd29b0e7da3e06d2ed017782bd</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>stop</name>
      <anchorfile>classAL_1_1ALModule.html</anchorfile>
      <anchor>a5841a38a0a856a0ed311d3a50eb68255</anchor>
      <arglist>(const int &amp;id)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isStopRequired</name>
      <anchorfile>classAL_1_1ALModule.html</anchorfile>
      <anchor>a02f37911068217b632c90bbf1f7b611a</anchor>
      <arglist>(const int &amp;id=-1)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>wait</name>
      <anchorfile>classAL_1_1ALModule.html</anchorfile>
      <anchor>a772988a2b16528f0ba7476eb5430e7cf</anchor>
      <arglist>(const int &amp;id, const int &amp;timeout)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isRunning</name>
      <anchorfile>classAL_1_1ALModule.html</anchorfile>
      <anchor>ab76a9418300842dad1269624547c57e8</anchor>
      <arglist>(const int &amp;id)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getMethodID</name>
      <anchorfile>classAL_1_1ALModule.html</anchorfile>
      <anchor>a95bb04f5b12f6de3160a4739700bf847</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isPCalled</name>
      <anchorfile>classAL_1_1ALModule.html</anchorfile>
      <anchor>ab5f43974376590a9b6ae9748dc1d15b8</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>exit</name>
      <anchorfile>classAL_1_1ALModule.html</anchorfile>
      <anchor>a2c133a00e5833b2591bd6a8613b8fbb5</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>QI_API_DEPRECATED void</type>
      <name>functionStop</name>
      <anchorfile>classAL_1_1ALModule.html</anchorfile>
      <anchor>accb73fe196912ba6943f76d8c4eb16d8</anchor>
      <arglist>(int pIDTask)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>init</name>
      <anchorfile>classAL_1_1ALModule.html</anchorfile>
      <anchor>a563a962920370f76dd7d46a3993a9807</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static boost::shared_ptr&lt; T &gt;</type>
      <name>createModule</name>
      <anchorfile>classAL_1_1ALModule.html</anchorfile>
      <anchor>aa064bb8e21f8d93f960525159426b1ee</anchor>
      <arglist>(boost::shared_ptr&lt; ALBroker &gt; pBroker)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static boost::shared_ptr&lt; T &gt;</type>
      <name>createModule</name>
      <anchorfile>classAL_1_1ALModule.html</anchorfile>
      <anchor>a9c3d788d2a9d0c3dbaa986ef97c01df1</anchor>
      <arglist>(boost::shared_ptr&lt; ALBroker &gt; pBroker, P1 p1)</arglist>
    </member>
    <member kind="friend" protection="private">
      <type>friend class</type>
      <name>baseModule</name>
      <anchorfile>classAL_1_1ALModule.html</anchorfile>
      <anchor>afdfac3c850dd768391202bab09db5175</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>AL::ALModuleCore</name>
    <filename>classAL_1_1ALModuleCore.html</filename>
    <member kind="enumeration">
      <name>ModuleType</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>a9d559dc525481d914a14de7395744517</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>CPP</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>a9d559dc525481d914a14de7395744517a6400b23be1ae44ff3a72c93620e3e3d3</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>PYTHON</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>a9d559dc525481d914a14de7395744517ae2657d8f15a452fbfa2c959ed124bd3a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>RUBY</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>a9d559dc525481d914a14de7395744517a8a90e2f34670c2eb3664f465eb44280f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>LUA</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>a9d559dc525481d914a14de7395744517a19405d87fbb8d4357f66e0ba62e94b6d</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MATLAB</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>a9d559dc525481d914a14de7395744517a14368d197300b5c895af9c5387558283</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>URBI</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>a9d559dc525481d914a14de7395744517ad34c576bd7b65c2c777fd2c05c356620</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>boost::shared_ptr&lt; ALModuleCore &gt;</type>
      <name>Ptr</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>ae66494b870077ddc388b704d4a91259b</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>boost::weak_ptr&lt; ALModuleCore &gt;</type>
      <name>WeakPtr</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>a9cbe4be42ec31f8997d25849a7399bdc</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ALModuleCore</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>a0efeb0d9f7438f0d8e642f24c511ca03</anchor>
      <arglist>(boost::shared_ptr&lt; ALBroker &gt; pBroker, const std::string &amp;pName)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~ALModuleCore</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>a30e8246f05d8e98b00e0456e8e567c46</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>ALMethodInfo &amp;</type>
      <name>getCurrentMethodDescription</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>a42bb1de016a1845dac3983d669f6659b</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>boost::shared_ptr&lt; ALModuleCore &gt;</type>
      <name>getThis</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>a6507b09dff810c56f23ddb6bdcd5c5f5</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>boost::shared_ptr&lt; const ALModuleCore &gt;</type>
      <name>getThis</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>ac7e930ba0624cdad5a5af5cb33b42f50</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isClosing</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>a32a6caa4f17bd02b2c987a90c134db55</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>initModule</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>a7234b36513c566576f7293b3b0b3c9a0</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>boost::shared_ptr&lt; AL::ALProxy &gt;</type>
      <name>getProxy</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>aed9f3a4a91a30b4e807b510da7e976fe</anchor>
      <arglist>(const std::string &amp;pModuleName)</arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>getBrokerName</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>a46caaa522a61e17febf5ba6e53ed3f2e</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>ModuleType</type>
      <name>getModuleType</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>aba540f648306c1cc91fefe31988899c1</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setModuleType</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>a5a1935dcd195f5b8ab0a1e0a5596bf7c</anchor>
      <arglist>(ModuleType pType)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual ALMethodInfo *</type>
      <name>execute</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>a0aa2b76f6e10c68cfc27151562438735</anchor>
      <arglist>(const std::string &amp;pMethod, const AL::ALValue &amp;pParams, AL::ALValue &amp;pResult)</arglist>
    </member>
    <member kind="function">
      <type>std::vector&lt; std::string &gt;</type>
      <name>getMethodList</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>a41a475f9b7759bbe1f498c9403ce765d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>AL::ALValue</type>
      <name>getMethodHelp</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>ab9926e4b1bf9f55ce841640566889aa0</anchor>
      <arglist>(const std::string &amp;pMethodName)</arglist>
    </member>
    <member kind="function">
      <type>ALMethodInfo</type>
      <name>getMethodHelpObject</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>aef05657db096f4f749ed7471d4541801</anchor>
      <arglist>(const std::string &amp;pMethodName)</arglist>
    </member>
    <member kind="function">
      <type>AL::ALValue</type>
      <name>moduleHelp</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>ae20c87a06cdfe4c9aacdf618c26d08a2</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>ping</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>ad8195f526e387c152a6854a1dc187381</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual std::string</type>
      <name>version</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>ab05eb39926288b32c416d91659872457</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>exit</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>aeb637a67b79b05909303123f0a4993f3</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>const std::string &amp;</type>
      <name>getName</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>a4a5011cb0bdb5a5ee0fa305531bbc3a1</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>boost::shared_ptr&lt; ALModuleInfo &gt;</type>
      <name>getModuleInfo</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>a9ff26b2ee274d01c8ed0fd221cef97a7</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual std::string</type>
      <name>httpGet</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>ace22627192d289be5583636f091b0084</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>ALMethodInfo *</type>
      <name>getMethodInfoByNameMember</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>af4b5c92ceb733d745c36802aad20cd8b</anchor>
      <arglist>(const std::string &amp;pName, const std::vector&lt; std::string &gt; &amp;paramType, bool softCompare=true)</arglist>
    </member>
    <member kind="function">
      <type>ALMethodInfo *</type>
      <name>getMethodInfo</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>ad28b723302ed361a498ffb55d30d85ea</anchor>
      <arglist>(const std::string &amp;pName)</arglist>
    </member>
    <member kind="function">
      <type>ALMethodInfo *</type>
      <name>getMethodInfo</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>a6091a79ca3f46b717a0ab9509cf1c354</anchor>
      <arglist>(const std::string &amp;pName, std::vector&lt; std::string &gt; pParamsType)</arglist>
    </member>
    <member kind="function">
      <type>ALMethodInfo *</type>
      <name>getMethodInfo</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>aa40fd1806b7418c716fda73acd5ca239</anchor>
      <arglist>(const std::string &amp;pName, const AL::ALValue &amp;pParams)</arglist>
    </member>
    <member kind="function">
      <type>ALMethodInfo *</type>
      <name>getFunctionDesc</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>a1dd83c99723a0500d1e69a5959cb63ad</anchor>
      <arglist>(const std::string &amp;pName)</arglist>
    </member>
    <member kind="function">
      <type>ALMethodInfo *</type>
      <name>getFunctionDesc</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>a8d902a109b28030ef3490b67a95e8f61</anchor>
      <arglist>(const std::string &amp;pName, std::vector&lt; std::string &gt; pParamsType)</arglist>
    </member>
    <member kind="function">
      <type>ALMethodInfo *</type>
      <name>getFunctionDesc</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>a25dfdfbea30be1541b2a7550ae690a41</anchor>
      <arglist>(const std::string &amp;pName, const AL::ALValue &amp;pParams)</arglist>
    </member>
    <member kind="function">
      <type>ALMethodInfo *</type>
      <name>getFunctionDescByNameMember</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>a5db93eaff18a5e30f9a1b238c9c4d6f2</anchor>
      <arglist>(const std::string &amp;pName, const std::vector&lt; std::string &gt; &amp;paramType, bool softCompare=true)</arglist>
    </member>
    <member kind="function">
      <type>boost::shared_ptr&lt; ALBroker &gt;</type>
      <name>getParentBroker</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>ac8cb244b5ee26fa5338349aa99fb4b8a</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>functionStop</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>a176494100e181c311846c4c724f42760</anchor>
      <arglist>(int pTaskID)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setModuleDescription</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>acacd9af80ae8100484195cfdc5d20d8f</anchor>
      <arglist>(const std::string &amp;pDesc)</arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>getUsage</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>a1c76b6c28c7eaad5585ef4067924ff60</anchor>
      <arglist>(const std::string &amp;methodName)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isModuleStopped</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>a43e2c61156bbe5e9348d66b3cead62e7</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setModuleID</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>ab4b53691f181d2325a06cc22d49a9023</anchor>
      <arglist>(int id)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getModuleID</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>aa826703bf23197a79c11d2678e8f826f</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static boost::shared_ptr&lt; T &gt;</type>
      <name>createModuleCore</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>a82fb659a25d8c9fe6d3476dd69ce2f75</anchor>
      <arglist>(boost::shared_ptr&lt; ALBroker &gt; pBroker)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static boost::shared_ptr&lt; T &gt;</type>
      <name>createModuleCore</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>a7ba02e9a8c517019bb1ff64abb1bfe19</anchor>
      <arglist>(boost::shared_ptr&lt; ALBroker &gt; pBroker, const std::string &amp;name)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static boost::shared_ptr&lt; T &gt;</type>
      <name>createUrbiModule</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>af209149e6cd322868aa3629256691beb</anchor>
      <arglist>(boost::shared_ptr&lt; ALBroker &gt; pBroker, const std::string &amp;name)</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="virtual">
      <type>virtual void</type>
      <name>init</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>afac470f3cd7ad7e391ae44de8121e41f</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>bindMethod</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>a503b2c75ea62c50f108171a00969ec3d</anchor>
      <arglist>(boost::shared_ptr&lt; ALFunctorBase &gt; pFunctor)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>bindMethod</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>ae4e253cbf4d336fce0b7ded93bb88cdc</anchor>
      <arglist>(boost::shared_ptr&lt; ALFunctorBase &gt; pFunctor, const std::string &amp;pName, const std::string &amp;pClass, const std::string &amp;pFunctionDescription, const ALMethodInfo &amp;pMethodDescription)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>bindMethodOverload</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>a6991197c97cba6ae989d49567981e8d0</anchor>
      <arglist>(boost::shared_ptr&lt; ALFunctorBase &gt; pFunctor)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>functionName</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>af6196c399db3e78c2a6d5fff7f3bb309</anchor>
      <arglist>(const std::string &amp;pName, const std::string &amp;pClass, const std::string &amp;pFunctionDescription, int pMask=0)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>addParam</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>ab05245db5d7fd4f776076788b3d704bb</anchor>
      <arglist>(const std::string &amp;pName, const std::string &amp;pDesc)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>addModuleExample</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>a33cc62030619980740c92fb9b333f055</anchor>
      <arglist>(const std::string &amp;pLanguage, const std::string &amp;pExample)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>addMethodExample</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>a6d006f790ed0a98a95f8de286cd418cd</anchor>
      <arglist>(const std::string &amp;pLanguage, const std::string &amp;pExample)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>setReturn</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>aafd47f7b1ce28d89287c8ce6da746e69</anchor>
      <arglist>(const std::string &amp;pName, const std::string &amp;pDesc)</arglist>
    </member>
    <member kind="friend" protection="private">
      <type>friend class</type>
      <name>baseModule</name>
      <anchorfile>classAL_1_1ALModuleCore.html</anchorfile>
      <anchor>afdfac3c850dd768391202bab09db5175</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>AL::ALModuleInfo</name>
    <filename>classAL_1_1ALModuleInfo.html</filename>
    <member kind="variable">
      <type>std::string</type>
      <name>name</name>
      <anchorfile>classAL_1_1ALModuleInfo.html</anchorfile>
      <anchor>ac5509a125445e6f48c5931fd5630bb6c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>architecture</name>
      <anchorfile>classAL_1_1ALModuleInfo.html</anchorfile>
      <anchor>af8dde8043604980fcf7ce1ced96be2ca</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>std::string</type>
      <name>ip</name>
      <anchorfile>classAL_1_1ALModuleInfo.html</anchorfile>
      <anchor>a0a3d5b4e92b7f76b25cb197db70225e7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>port</name>
      <anchorfile>classAL_1_1ALModuleInfo.html</anchorfile>
      <anchor>a38e6eae21811e33624904be5973d5ff4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>processId</name>
      <anchorfile>classAL_1_1ALModuleInfo.html</anchorfile>
      <anchor>ab2c5aac7b89f3997162fc49a332df33e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>isABroker</name>
      <anchorfile>classAL_1_1ALModuleInfo.html</anchorfile>
      <anchor>a63b2d13437ae28fd9920f991cb51ecc8</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>bool</type>
      <name>keepAlive</name>
      <anchorfile>classAL_1_1ALModuleInfo.html</anchorfile>
      <anchor>a7897c1c08bfbd4b785565afbe035ef20</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>AL::ALProxy</name>
    <filename>classAL_1_1ALProxy.html</filename>
    <member kind="enumeration">
      <name>pProxyOption</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>aec53f133002dd850272cee9f8a5a2ac2</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>NO_OPTION</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>aec53f133002dd850272cee9f8a5a2ac2ad04c520b2baf2c0d5e5acdac3d1d6101</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>FORCED_LOCAL</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>aec53f133002dd850272cee9f8a5a2ac2a3dffa285001c2f483a0a9484e0a855b0</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>NO_LOAD_DEPENDS</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>aec53f133002dd850272cee9f8a5a2ac2a65a5a014d0a61a63fa9924cfc34039cf</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>MAIN_PROXY</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>aec53f133002dd850272cee9f8a5a2ac2a8d687e180654dd6d5f50a2b85388a830</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>boost::shared_ptr&lt; ALProxy &gt;</type>
      <name>Ptr</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>a6e871af7cc64c2d80655e1c1ba5ed056</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>boost::weak_ptr&lt; ALProxy &gt;</type>
      <name>WeakPtr</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>aa4703d8c932aaa0677fef5a21f7e6bcb</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>int(*</type>
      <name>onFinishedCallback</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>aab22baaedd97c5ea92045ee5766fb723</anchor>
      <arglist>)(const char *, int, const AL::ALValue &amp;)</arglist>
    </member>
    <member kind="function">
      <type>boost::shared_ptr&lt; ALProxy &gt;</type>
      <name>getThis</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>af5d0fde402d8fd878835c3685c1a9357</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>boost::shared_ptr&lt; const ALProxy &gt;</type>
      <name>getThis</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>af62b3277cfede1bca3cc953ea775b79f</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ALProxy</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>ae2d415677bcddd201b476acc0c8209db</anchor>
      <arglist>(const ALProxy &amp;rhs)</arglist>
    </member>
    <member kind="function">
      <type>const ALProxy &amp;</type>
      <name>operator=</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>a9e07febb0a1f62b47c2b577d4c28b1dc</anchor>
      <arglist>(const ALProxy &amp;rhs)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ALProxy</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>a3f4c9c1048a85c66e335a8f02f681d23</anchor>
      <arglist>(boost::shared_ptr&lt; ALBroker &gt; pBroker, const std::string &amp;pModuleName, int pProxyMask=0, int timeout=0)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ALProxy</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>ad6272f36c89140d5af67fd07df7ac9a0</anchor>
      <arglist>(const std::string &amp;pModuleName, const std::string &amp;pIp, int pPort, int pProxyMask=0, int timeout=0)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ALProxy</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>a3382ffab2b33368b073ede919a503734</anchor>
      <arglist>(const std::string &amp;pModuleName, const std::string &amp;pIp, int pPort, boost::shared_ptr&lt; ALBroker &gt; pBroker, int pProxyMask=0, int timeout=0)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ALProxy</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>a7637fc92fcae19a3b28e9be4a1a85199</anchor>
      <arglist>(const std::string &amp;pModuleName, int pProxyOption, int pTimeout)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual</type>
      <name>~ALProxy</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>a56e8b75a2c3da4116c5077702cc7fad9</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>remoteBrokerName</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>a3823313e9bd659d522d4cb7ac0355905</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>AL::ALValue</type>
      <name>genericCall</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>a3914b8dc0a10934eb1a7926e6e7350b7</anchor>
      <arglist>(const std::string &amp;strMethodName, const AL::ALValue &amp;listParams)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>genericPCall</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>acbec916e180fe45bdd0f62076e07ab13</anchor>
      <arglist>(const std::string &amp;strMethodName, const AL::ALValue &amp;listParams, onFinishedCallback pCallbackToCallOnFinished=NULL, const char *pszCallerName=NULL)</arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>version</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>aeb2a50a2bd9225e28acf703a8bfe9d00</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>boost::shared_ptr&lt; ALModule &gt;</type>
      <name>getModule</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>a8f425c072143a11ee40df8f7a90f20b2</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>boost::shared_ptr&lt; ALModuleCore &gt;</type>
      <name>getModuleCore</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>ad0505d130a31d3d807d7809dba87705f</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getInfo</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>a6ae9a283a8f08c5ddf35dd1df184e241</anchor>
      <arglist>(ALModuleInfo &amp;pModuleInfo)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isLocal</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>a7697b216e9eb5a5ce6fe9b263c4c5d64</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isValid</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>ace10429d0660398bff17efca7ea10174</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>boost::shared_ptr&lt; ALFunctorBase &gt;</type>
      <name>getFunctor</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>adb79c8638cccba130e224df485cc6e5e</anchor>
      <arglist>(const std::string &amp;pName, const std::vector&lt; std::string &gt; &amp;pParamTypes)</arglist>
    </member>
    <member kind="function">
      <type>boost::shared_ptr&lt; ALBroker &gt;</type>
      <name>getParentBroker</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>ae0c9c67dee15de5ef90f4e5a2f1f162e</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>destroyConnection</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>a8f1ee0b583a2ff227cb4d51c30a88c9e</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>R</type>
      <name>call</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>aa748bc5c7515e4c8da130cd1f2a7cd64</anchor>
      <arglist>(const std::string &amp;pName)</arglist>
    </member>
    <member kind="function">
      <type>R</type>
      <name>call</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>a7c9b4b75585481319023a21775d3ccda</anchor>
      <arglist>(const std::string &amp;pName, const P1 &amp;p1)</arglist>
    </member>
    <member kind="function">
      <type>R</type>
      <name>call</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>a4b7f42863e1c2cd69d676a42fa1049ac</anchor>
      <arglist>(const std::string &amp;pName, const P1 &amp;p1, const P2 &amp;p2)</arglist>
    </member>
    <member kind="function">
      <type>R</type>
      <name>call</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>a923ae819493f06ebf68fa0e560a588cb</anchor>
      <arglist>(const std::string &amp;pName, const P1 &amp;p1, const P2 &amp;p2, const P3 &amp;p3)</arglist>
    </member>
    <member kind="function">
      <type>R</type>
      <name>call</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>a416e88dff089d8e478d983383efdbd43</anchor>
      <arglist>(const std::string &amp;pName, const P1 &amp;p1, const P2 &amp;p2, const P3 &amp;p3, const P4 &amp;p4)</arglist>
    </member>
    <member kind="function">
      <type>R</type>
      <name>call</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>af006b7b5ca8f9ce2151636a0df372975</anchor>
      <arglist>(const std::string &amp;pName, const P1 &amp;p1, const P2 &amp;p2, const P3 &amp;p3, const P4 &amp;p4, const P5 &amp;p5)</arglist>
    </member>
    <member kind="function">
      <type>R</type>
      <name>call</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>a5c8598e95d22d7d6932e9946bd6a6933</anchor>
      <arglist>(const std::string &amp;pName, const P1 &amp;p1, const P2 &amp;p2, const P3 &amp;p3, const P4 &amp;p4, const P5 &amp;p5, const P6 &amp;p6)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>callVoid</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>adbcc983ba3cd6d757d6bf6f36fdc9844</anchor>
      <arglist>(const std::string &amp;pName)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>callVoid</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>a5aa37c701d3396905a0854edd11d4f6b</anchor>
      <arglist>(const std::string &amp;pName, const P1 &amp;p1)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>callVoid</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>a57a17263a99ca4baa9d58deddcce6fd4</anchor>
      <arglist>(const std::string &amp;pName, const P1 &amp;p1, const P2 &amp;p2)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>callVoid</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>a750e0750e8a7b8541047a51756987eb2</anchor>
      <arglist>(const std::string &amp;pName, const P1 &amp;p1, const P2 &amp;p2, const P3 &amp;p3)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>callVoid</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>a91854072d4cc5993de409557ab743457</anchor>
      <arglist>(const std::string &amp;pName, const P1 &amp;p1, const P2 &amp;p2, const P3 &amp;p3, const P4 &amp;p4)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>callVoid</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>abf5025e8304871cd5367890e9f21e851</anchor>
      <arglist>(const std::string &amp;pName, const P1 &amp;p1, const P2 &amp;p2, const P3 &amp;p3, const P4 &amp;p4, const P5 &amp;p5)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>callVoid</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>ac7c3ab9606dba9a52ce41b8abb3b8f7f</anchor>
      <arglist>(const std::string &amp;pName, const P1 &amp;p1, const P2 &amp;p2, const P3 &amp;p3, const P4 &amp;p4, const P5 &amp;p5, const P6 &amp;p6)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>pCall</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>a1eb7691761a9e98966cb476988fb0c68</anchor>
      <arglist>(const std::string &amp;pName)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>pCall</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>a4634e02102cf85e4152510066c7405d9</anchor>
      <arglist>(const std::string &amp;pName, const P1 &amp;p1)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>pCall</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>a8cfb17369569cbf03825a2478d7e4645</anchor>
      <arglist>(const std::string &amp;pName, const P1 &amp;p1, const P2 &amp;p2)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>pCall</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>aff49cdae8233d3efbd0b86dbed13945f</anchor>
      <arglist>(const std::string &amp;pName, const P1 &amp;p1, const P2 &amp;p2, const P3 &amp;p3)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>pCall</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>a9458d45f3da7754f6b862cd1b8f59b58</anchor>
      <arglist>(const std::string &amp;pName, const P1 &amp;p1, const P2 &amp;p2, const P3 &amp;p3, const P4 &amp;p4)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>pCall</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>a9fb48ebd88ff3dbfe2a53a26304e7c85</anchor>
      <arglist>(const std::string &amp;pName, const P1 &amp;p1, const P2 &amp;p2, const P3 &amp;p3, const P4 &amp;p4, const P5 &amp;p5)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>pCall</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>a3622330a9b7d23607b13526b0a509d6b</anchor>
      <arglist>(const std::string &amp;pName, const P1 &amp;p1, const P2 &amp;p2, const P3 &amp;p3, const P4 &amp;p4, const P5 &amp;p5, const P6 &amp;p6)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>wait</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>ab3def0aaa5b95fea02a00b854bc8f7c6</anchor>
      <arglist>(const int &amp;id, const int &amp;timeoutPeriod)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>stop</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>a0159a4e02b7fc05d6f9d061214787463</anchor>
      <arglist>(const int &amp;id)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isRunning</name>
      <anchorfile>classAL_1_1ALProxy.html</anchorfile>
      <anchor>a23c978a2e0c5c378ea770752bd76fead</anchor>
      <arglist>(const int &amp;id)</arglist>
    </member>
  </compound>
  <compound kind="namespace">
    <name>ALTools</name>
    <filename>namespaceALTools.html</filename>
    <member kind="function">
      <type>int</type>
      <name>mainFunction</name>
      <anchorfile>group__MainFunc.html</anchorfile>
      <anchor>gaad4aead0e5b82e53cb41d4596318e0f1</anchor>
      <arglist>(const std::string &amp;pBrokerName, int argc, char *argv[], const TMainType &amp;callback)</arglist>
    </member>
  </compound>
  <compound kind="page">
    <name>index</name>
    <title>libalcommon</title>
    <filename>index</filename>
    <docanchor file="index">API</docanchor>
    <docanchor file="index">qi</docanchor>
    <docanchor file="index">Extras</docanchor>
  </compound>
</tagfile>
