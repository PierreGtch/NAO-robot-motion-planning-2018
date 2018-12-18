<?xml version='1.0' encoding='ISO-8859-1' standalone='yes' ?>
<tagfile>
  <compound kind="class">
    <name>AL::ALSoundExtractor</name>
    <filename>classAL_1_1ALSoundExtractor.html</filename>
    <member kind="function">
      <type></type>
      <name>ALSoundExtractor</name>
      <anchorfile>classAL_1_1ALSoundExtractor.html</anchorfile>
      <anchor>a1d83f1b9d50c7b3875a382dd4d59326c</anchor>
      <arglist>(boost::shared_ptr&lt; AL::ALBroker &gt; pBroker, std::string pName)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual std::string</type>
      <name>version</name>
      <anchorfile>classAL_1_1ALSoundExtractor.html</anchorfile>
      <anchor>ac0393b7577e07bc661c8526de9e56374</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>startDetection</name>
      <anchorfile>classAL_1_1ALSoundExtractor.html</anchorfile>
      <anchor>afcc3ec1aa67690606e0e5695653d136d</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>stopDetection</name>
      <anchorfile>classAL_1_1ALSoundExtractor.html</anchorfile>
      <anchor>a1016135ac9bd123e263e8f17346dcd09</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>QI_API_DEPRECATED void</type>
      <name>setDebugMode</name>
      <anchorfile>classAL_1_1ALSoundExtractor.html</anchorfile>
      <anchor>aed3dfc061dea9ad2693fd808939062e7</anchor>
      <arglist>(const bool &amp;pbSetOrUnset=true)</arglist>
    </member>
    <member kind="function">
      <type>QI_API_DEPRECATED bool</type>
      <name>getDebugMode</name>
      <anchorfile>classAL_1_1ALSoundExtractor.html</anchorfile>
      <anchor>a58ed9b54d5ff78a6c9a871743fb0b7f8</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual void</type>
      <name>process</name>
      <anchorfile>classAL_1_1ALSoundExtractor.html</anchorfile>
      <anchor>a84fd70b830a51377e499a46b6025b8c4</anchor>
      <arglist>(const int &amp;nbOfChannels, const int &amp;nbrOfSamplesByChannel, const AL_SOUND_FORMAT *buffer, const ALValue &amp;timestamp)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual QI_API_DEPRECATED void</type>
      <name>processSound</name>
      <anchorfile>classAL_1_1ALSoundExtractor.html</anchorfile>
      <anchor>adb28fb6a24343e8ef02af1507be50853</anchor>
      <arglist>(const int nbOfChannels, const int nbrOfSamplesByChannel, const AL_SOUND_FORMAT *buffer)</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual QI_API_DEPRECATED void</type>
      <name>processSoundRemote</name>
      <anchorfile>classAL_1_1ALSoundExtractor.html</anchorfile>
      <anchor>add7cc56f8dd2c0e3786d2b6d2923189b</anchor>
      <arglist>(const int &amp;nbOfChannels, const int &amp;nbrOfSamplesByChannel, const ALValue &amp;buffer)</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>bool</type>
      <name>fIsRunning</name>
      <anchorfile>classAL_1_1ALSoundExtractor.html</anchorfile>
      <anchor>aa139c3d736fb5031e24babaac3ccaf53</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>bool</type>
      <name>fbDebugMode</name>
      <anchorfile>classAL_1_1ALSoundExtractor.html</anchorfile>
      <anchor>ae1810a87eff5dffb6e56ad475ac095c4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>boost::shared_ptr&lt; ALProxy &gt;</type>
      <name>audioDevice</name>
      <anchorfile>classAL_1_1ALSoundExtractor.html</anchorfile>
      <anchor>a527c3c9dd8d97a65695e711e60800622</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>ALValue</type>
      <name>fNullTimestamp</name>
      <anchorfile>classAL_1_1ALSoundExtractor.html</anchorfile>
      <anchor>a343e1416f7cdee9de3928746199643b9</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="page">
    <name>index</name>
    <title>libalaudio</title>
    <filename>index</filename>
    <docanchor file="index">API</docanchor>
    <docanchor file="index">qi</docanchor>
    <docanchor file="index">Extras</docanchor>
  </compound>
</tagfile>
