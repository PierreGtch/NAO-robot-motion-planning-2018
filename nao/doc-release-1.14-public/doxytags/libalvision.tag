<?xml version='1.0' encoding='ISO-8859-1' standalone='yes' ?>
<tagfile>
  <compound kind="file">
    <name>alimage.h</name>
    <path>/home/opennao/work/doc/release-1.14/public/lib/libnaoqi/libalvision/alvision/</path>
    <filename>alimage_8h</filename>
    <includes id="alvisiondefinitions_8h" name="alvisiondefinitions.h" local="no" imported="no">alvision/alvisiondefinitions.h</includes>
    <class kind="class">AL::ALImage</class>
    <class kind="struct">AL::ALImage::ROI</class>
    <class kind="struct">AL::ALImage::FOV</class>
    <namespace>AL</namespace>
    <member kind="typedef">
      <type>struct _IplImage</type>
      <name>IplImage</name>
      <anchorfile>alimage_8h.html</anchorfile>
      <anchor>a95b2b850bce7cb368b8a3dc540debee3</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>computeRgbFromYuv</name>
      <anchorfile>alimage_8h.html</anchorfile>
      <anchor>a356b8b1a7c82044e85c10293fdf1c92d</anchor>
      <arglist>(unsigned char *pYR, unsigned char *pUG, unsigned char *pVB)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>alvideo.h</name>
    <path>/home/opennao/work/doc/release-1.14/public/lib/libnaoqi/libalvision/alvision/</path>
    <filename>alvideo_8h</filename>
    <includes id="alvisiondefinitions_8h" name="alvisiondefinitions.h" local="no" imported="no">alvision/alvisiondefinitions.h</includes>
    <includes id="alimage_8h" name="alimage.h" local="no" imported="no">alvision/alimage.h</includes>
    <class kind="struct">AL::streamHeader</class>
    <class kind="struct">AL::videoHeader</class>
    <class kind="struct">AL::streamProperties</class>
    <class kind="class">AL::ALVideo</class>
    <namespace>AL</namespace>
  </compound>
  <compound kind="file">
    <name>alvisiondefinitions.h</name>
    <path>/home/opennao/work/doc/release-1.14/public/lib/libnaoqi/libalvision/alvision/</path>
    <filename>alvisiondefinitions_8h</filename>
    <namespace>AL</namespace>
    <member kind="define">
      <type>#define</type>
      <name>TORAD</name>
      <anchorfile>alvisiondefinitions_8h.html</anchorfile>
      <anchor>a264a7db62412cf05ec573791f3100dac</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isResolutionValid</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a410f0d52e907650839865982b3449e20</anchor>
      <arglist>(const int resIndex)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setSizeFromResolution</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a9de0f7a03ebd74e6b5a89272c3521b56</anchor>
      <arglist>(const int resIndex, int &amp;outWidth, int &amp;outHeight)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getResolutionFromSize</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>aaae5c8139515c2b14161ce9272eed993</anchor>
      <arglist>(const int width, const int height)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isColorSpaceValid</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a4f49241d6dca5c9a5bae0dd3ce7c6851</anchor>
      <arglist>(const int colorspace)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getNumLayersInColorSpace</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a0e09ee580f39b75cfa3b3dfdec6c3d88</anchor>
      <arglist>(const int colorSpace)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>convertAngleValToNormalizedImgVal</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a68eac94bde49222e6a7b0cdc8582b824</anchor>
      <arglist>(const float &amp;radValue, const float &amp;imageRadMin, const float &amp;imageRadMax)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>convertAnglePosToNormalizedImgPos</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a6fe4178d6210dcbc643fc57da989437c</anchor>
      <arglist>(const float &amp;radPosition, const float &amp;imageRadMin, const float &amp;imageRadMax)</arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kOV7670</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a1099170a3d33b47c4551b801ff8c09de</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kMT9M114</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a44ba47883c4cc143ca5c9dbbdebc6eeb</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kTopCamera</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a1083e3958d62acef3bf9f979fbcc5bc7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kBottomCamera</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a79889c77b5d222c9f3f71f17ca7cfa7c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const float</type>
      <name>kApertureH_OV7670</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a248faa195a0678c3489763d20dc5c36d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const float</type>
      <name>kApertureV_OV7670</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a9126f093448cea551e192865f0263a5f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const float</type>
      <name>kApertureH_MT9M114</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a7d89facaaf9e6720723fa10849d4d38d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const float</type>
      <name>kApertureV_MT9M114</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>ad96afd3186fe15120ccb67b83ce63577</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>k960p</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>af882349ad9b24e79f33b541664d6975d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>k4VGA</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a77ffa9c33ca4050e0026b4e9d8b01578</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kVGA</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a99c9a11f6d583353638f698cfed49883</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kQVGA</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a3310e69ae7734becea41d06b83db2022</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kQQVGA</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>afdeb4cf242e8996c4984a99dae1fe635</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kYuvColorSpace</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a3e3467c31078e2d876f060a8c787a0c2</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kyUvColorSpace</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>ace3de266f7ecf2f4e7062bcd7e76d07b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kyuVColorSpace</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a6196fa6a4f17c9315abe1dd8f730579e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kRgbColorSpace</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a7485f63c4f2a1c14c597632b5f6ffd54</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>krGbColorSpace</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a3c9b138ab883a4cae4702ded6ae86772</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>krgBColorSpace</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a25dd4e641b51a1d0b627d4da8818bb54</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kHsyColorSpace</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a483f2c593dab4b4ea1018a87604eae1d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>khSyColorSpace</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a4b636e6be66eb379181151f81e861464</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>khsYColorSpace</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a62bafb5db5f709266cf184f46fa47093</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kYUV422InterlacedColorSpace</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>ad18b72d48c3d236725015b65dd8cf20d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kYUV422ColorSpace</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>aea6531012c733c983143ef60c668b4f4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kYUVColorSpace</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>aacecd7c690e5a039b58c8d452550c964</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kRGBColorSpace</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>ad9a7f28ddb427035e28046e5522a1368</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kHSYColorSpace</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a8101c22ca97a8094555bb02920fa8902</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kBGRColorSpace</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a71d39f5925c0e09ab640424973ec8394</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kYYCbCrColorSpace</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a2bd5b749a426c001aff16abf7fe08903</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kH2RGBColorSpace</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>afd6b10a598b4ab551064d464c001b9d1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kHSMixedColorSpace</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>ab764a6a4739ff2d8eb320337f5e8fcef</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kDepthColorSpace</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a95735eed29ee781f40b208448fd13790</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kARGBColorSpace</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a3d88567db3944df23324241c1cab0943</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraBrightnessID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a16e94c742f83bb4079781e755280c279</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraContrastID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a8c4330901555f2669c54432f445185b6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraSaturationID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a4634f6d275747c6e675eb9fae3b21a94</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraHueID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a2b7b2ba61e07e65b85e7fa01b9b1cc76</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraRedChromaID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a5d56075aaa59fca5397d43f3d1b45a32</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraBlueChromaID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a8d536b65a62b0a57cc01d204879f5b7d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraGainID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>aa1b70dfda5b73128be848c84063c90e5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraHFlipID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>aba0dc7013e2c34f2706fdcbb7b825895</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraVFlipID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a16b6d1e6b63ee26520a7db7049c693bb</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraLensXID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a5215480950f944f732e504589aa55f05</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraLensYID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>aab3ef14ed792d6011630d0c4d342ba07</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraAutoExpositionID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a558d2a9040c6936de263e3bf71e581b7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraAutoWhiteBalanceID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>abb051ed9c35f653efe5e4a854116aa49</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraAutoGainID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a6693dbe8cf0676b2d45bb343ddbc687c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraResolutionID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a97deaf7df045d3b6f18bd88bb1192c8d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraFrameRateID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>ad59078742049764c58d98bc71cdc49b8</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraBufferSizeID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>af56ef157fe8ef61e4529d75c8b5016e7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraExposureID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>ae219747e137c8aa7727e460915c58d41</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraSelectID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>af83737b33234c60338dda5254dc70763</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraSetDefaultParamsID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a858ac9b375325db14e7dbbb60595584b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraColorSpaceID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a124608b96d41f7f61107e65ef9f6f951</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraExposureCorrectionID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a3e9af9cd3066cd586c0559823929c31b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraExposureAlgorithmID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a449bc678d48cc62250914c53dcbeb350</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraAecAlgorithmID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a6a3fe5d7d6b8079d0d9fa95b19ec69e6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraFastSwitchID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>afb653ae587de723764a859d72238fc99</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraSharpnessID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>aef72b6f52a88e8253221876742be7369</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraAwbGreenGainID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a3405975e8d5a5abefd959b55b66303c6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraAblcID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a71d9bb4944e64412d426596c516a7434</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraAblcTargetID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>ad37f6ec932735506c63995b119dec381</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraAblcStableRangeID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>ab52f1de946cfc266ffb182a7c83a2256</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraBlcBlueID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>ac1efdf194d38c01103287f373ce24749</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraBlcRedID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>ac37344bf007cbebf13b5dc22adb214ed</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraBlcGbID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>aa575303e1bd46e6c90034d0e586252f5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraBlcGrID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>ac5da3f057bd10e376cdf4310cb032a4f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraWhiteBalanceID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a0bbc9fc6779bfadd8b34f0d78bb3ba44</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraBacklightCompensationID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>aeea2ea6e94eddd49665a72064517feaf</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="namespace">
    <name>AL</name>
    <filename>namespaceAL.html</filename>
    <class kind="class">AL::ALImage</class>
    <class kind="struct">AL::streamHeader</class>
    <class kind="struct">AL::videoHeader</class>
    <class kind="struct">AL::streamProperties</class>
    <class kind="class">AL::ALVideo</class>
    <class kind="class">AL::ALVisionExtractor</class>
    <member kind="function">
      <type>bool</type>
      <name>isResolutionValid</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a410f0d52e907650839865982b3449e20</anchor>
      <arglist>(const int resIndex)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setSizeFromResolution</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a9de0f7a03ebd74e6b5a89272c3521b56</anchor>
      <arglist>(const int resIndex, int &amp;outWidth, int &amp;outHeight)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getResolutionFromSize</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>aaae5c8139515c2b14161ce9272eed993</anchor>
      <arglist>(const int width, const int height)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isColorSpaceValid</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a4f49241d6dca5c9a5bae0dd3ce7c6851</anchor>
      <arglist>(const int colorspace)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getNumLayersInColorSpace</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a0e09ee580f39b75cfa3b3dfdec6c3d88</anchor>
      <arglist>(const int colorSpace)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>convertAngleValToNormalizedImgVal</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a68eac94bde49222e6a7b0cdc8582b824</anchor>
      <arglist>(const float &amp;radValue, const float &amp;imageRadMin, const float &amp;imageRadMax)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>convertAnglePosToNormalizedImgPos</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a6fe4178d6210dcbc643fc57da989437c</anchor>
      <arglist>(const float &amp;radPosition, const float &amp;imageRadMin, const float &amp;imageRadMax)</arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kOV7670</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a1099170a3d33b47c4551b801ff8c09de</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kMT9M114</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a44ba47883c4cc143ca5c9dbbdebc6eeb</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kTopCamera</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a1083e3958d62acef3bf9f979fbcc5bc7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kBottomCamera</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a79889c77b5d222c9f3f71f17ca7cfa7c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const float</type>
      <name>kApertureH_OV7670</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a248faa195a0678c3489763d20dc5c36d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const float</type>
      <name>kApertureV_OV7670</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a9126f093448cea551e192865f0263a5f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const float</type>
      <name>kApertureH_MT9M114</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a7d89facaaf9e6720723fa10849d4d38d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const float</type>
      <name>kApertureV_MT9M114</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>ad96afd3186fe15120ccb67b83ce63577</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>k960p</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>af882349ad9b24e79f33b541664d6975d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>k4VGA</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a77ffa9c33ca4050e0026b4e9d8b01578</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kVGA</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a99c9a11f6d583353638f698cfed49883</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kQVGA</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a3310e69ae7734becea41d06b83db2022</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kQQVGA</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>afdeb4cf242e8996c4984a99dae1fe635</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kYuvColorSpace</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a3e3467c31078e2d876f060a8c787a0c2</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kyUvColorSpace</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>ace3de266f7ecf2f4e7062bcd7e76d07b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kyuVColorSpace</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a6196fa6a4f17c9315abe1dd8f730579e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kRgbColorSpace</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a7485f63c4f2a1c14c597632b5f6ffd54</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>krGbColorSpace</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a3c9b138ab883a4cae4702ded6ae86772</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>krgBColorSpace</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a25dd4e641b51a1d0b627d4da8818bb54</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kHsyColorSpace</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a483f2c593dab4b4ea1018a87604eae1d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>khSyColorSpace</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a4b636e6be66eb379181151f81e861464</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>khsYColorSpace</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a62bafb5db5f709266cf184f46fa47093</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kYUV422InterlacedColorSpace</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>ad18b72d48c3d236725015b65dd8cf20d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kYUV422ColorSpace</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>aea6531012c733c983143ef60c668b4f4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kYUVColorSpace</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>aacecd7c690e5a039b58c8d452550c964</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kRGBColorSpace</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>ad9a7f28ddb427035e28046e5522a1368</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kHSYColorSpace</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a8101c22ca97a8094555bb02920fa8902</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kBGRColorSpace</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a71d39f5925c0e09ab640424973ec8394</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kYYCbCrColorSpace</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a2bd5b749a426c001aff16abf7fe08903</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kH2RGBColorSpace</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>afd6b10a598b4ab551064d464c001b9d1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kHSMixedColorSpace</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>ab764a6a4739ff2d8eb320337f5e8fcef</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kDepthColorSpace</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a95735eed29ee781f40b208448fd13790</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kARGBColorSpace</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a3d88567db3944df23324241c1cab0943</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraBrightnessID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a16e94c742f83bb4079781e755280c279</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraContrastID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a8c4330901555f2669c54432f445185b6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraSaturationID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a4634f6d275747c6e675eb9fae3b21a94</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraHueID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a2b7b2ba61e07e65b85e7fa01b9b1cc76</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraRedChromaID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a5d56075aaa59fca5397d43f3d1b45a32</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraBlueChromaID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a8d536b65a62b0a57cc01d204879f5b7d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraGainID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>aa1b70dfda5b73128be848c84063c90e5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraHFlipID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>aba0dc7013e2c34f2706fdcbb7b825895</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraVFlipID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a16b6d1e6b63ee26520a7db7049c693bb</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraLensXID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a5215480950f944f732e504589aa55f05</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraLensYID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>aab3ef14ed792d6011630d0c4d342ba07</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraAutoExpositionID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a558d2a9040c6936de263e3bf71e581b7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraAutoWhiteBalanceID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>abb051ed9c35f653efe5e4a854116aa49</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraAutoGainID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a6693dbe8cf0676b2d45bb343ddbc687c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraResolutionID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a97deaf7df045d3b6f18bd88bb1192c8d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraFrameRateID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>ad59078742049764c58d98bc71cdc49b8</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraBufferSizeID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>af56ef157fe8ef61e4529d75c8b5016e7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraExposureID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>ae219747e137c8aa7727e460915c58d41</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraSelectID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>af83737b33234c60338dda5254dc70763</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraSetDefaultParamsID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a858ac9b375325db14e7dbbb60595584b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraColorSpaceID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a124608b96d41f7f61107e65ef9f6f951</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraExposureCorrectionID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a3e9af9cd3066cd586c0559823929c31b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraExposureAlgorithmID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a449bc678d48cc62250914c53dcbeb350</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraAecAlgorithmID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a6a3fe5d7d6b8079d0d9fa95b19ec69e6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraFastSwitchID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>afb653ae587de723764a859d72238fc99</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraSharpnessID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>aef72b6f52a88e8253221876742be7369</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraAwbGreenGainID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a3405975e8d5a5abefd959b55b66303c6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraAblcID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a71d9bb4944e64412d426596c516a7434</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraAblcTargetID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>ad37f6ec932735506c63995b119dec381</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraAblcStableRangeID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>ab52f1de946cfc266ffb182a7c83a2256</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraBlcBlueID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>ac1efdf194d38c01103287f373ce24749</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraBlcRedID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>ac37344bf007cbebf13b5dc22adb214ed</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraBlcGbID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>aa575303e1bd46e6c90034d0e586252f5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraBlcGrID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>ac5da3f057bd10e376cdf4310cb032a4f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraWhiteBalanceID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>a0bbc9fc6779bfadd8b34f0d78bb3ba44</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>const int</type>
      <name>kCameraBacklightCompensationID</name>
      <anchorfile>namespaceAL.html</anchorfile>
      <anchor>aeea2ea6e94eddd49665a72064517feaf</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>AL::ALImage</name>
    <filename>classAL_1_1ALImage.html</filename>
    <class kind="struct">AL::ALImage::FOV</class>
    <class kind="struct">AL::ALImage::ROI</class>
    <member kind="function">
      <type></type>
      <name>ALImage</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>a495fb68560fd3beeb6e1c34a6853297c</anchor>
      <arglist>(int pWidth, int pHeight, int pColorSpace, bool pDataAreExternal=false, float pLeftAngle=0.f, float pTopAngle=0.f, float pRightAngle=0.f, float pBottomAngle=0.f)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ALImage</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>a8714b9c76ca7a4349e6cc2ce130c89e0</anchor>
      <arglist>(int pResolution, int pColorSpace, bool pDataAreExternal=false, float pLeftAngle=0.f, float pTopAngle=0.f, float pRightAngle=0.f, float pBottomAngle=0.f)</arglist>
    </member>
    <member kind="function">
      <type>ALValue</type>
      <name>toALValue</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>a491cc5dcf8dce3843d83af299b5cd7ae</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setWidth</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>a7ddb11bec0779d82e180ba32036d7765</anchor>
      <arglist>(const int width)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setHeight</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>afba98a78329aecbe2f64ebc4a79e0b48</anchor>
      <arglist>(const int height)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setLeftAngle</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>a01d71c35464b24b130594d8a6f0e8e6c</anchor>
      <arglist>(const float leftAngle)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setTopAngle</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>ae19117ac0faabd26067e70dc72e33d67</anchor>
      <arglist>(const float topAngle)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setRightAngle</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>a1c6a118a8ad2e70d928fe262861ab62a</anchor>
      <arglist>(const float rightAngle)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setBottomAngle</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>a41fd0a2abfc19f952d87610b92e2535a</anchor>
      <arglist>(const float bottomAngle)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setAngles</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>a785e99f0de1d40963d055a2d5e97411c</anchor>
      <arglist>(const float leftAngle, const float topAngle, const float rightAngle, const float bottomAngle)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>setSize</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>aed4c704831b802cb8fe9be0d6cbe16ad</anchor>
      <arglist>(int pResolution)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>setResolution</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>a18301e9e25ec32797bfaee70d4b1dbc8</anchor>
      <arglist>(int pResolution)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>setColorSpace</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>a83b7d4dac425698c3530c15c1ccb1b04</anchor>
      <arglist>(int pColorSpace)</arglist>
    </member>
    <member kind="function">
      <type>const unsigned char *</type>
      <name>getFrame</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>ab84d8622ab88ba46a169dac8ffba3f43</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const unsigned char *</type>
      <name>getData</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>a44f665a0e14b671e623403adfd1eabca</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>unsigned char *</type>
      <name>getFrame</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>a7d679bbef64ef1c0830de3a67708619c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>unsigned char *</type>
      <name>getData</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>a52b55e5a7dca16470ca25bc87ad211ce</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setData</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>a3df61de62fda99921a76b9f43083873e</anchor>
      <arglist>(unsigned char *pData)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setTimeStamp</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>a2230de316519b18381913feaaa27b900</anchor>
      <arglist>(const qi::os::timeval pTimeStamp)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setTimeStamp</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>aeaf52ab59fc43518b24b75db8fcab6f9</anchor>
      <arglist>(long long pTimeStamp)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setTimeStamp</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>a2a3584309f59c949efb149171b32c822</anchor>
      <arglist>(int pSeconds, int pMicroSeconds)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setCameraId</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>a6370371435a0fa80ac8a04011a9e95e2</anchor>
      <arglist>(char pCameraId)</arglist>
    </member>
    <member kind="function">
      <type>unsigned int</type>
      <name>getSize</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>ab5280c1ecb77a9e25649d1f7b932370d</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getWidth</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>aaa09abe947822e9b668142d0ebb05bb8</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getHeight</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>a9dcaec54c28842621fe4d4814b226031</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getResolution</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>ad41957f505539603ea40fce8f48dd7aa</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getColorSpace</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>a0dddf10c4fa8d636769d25cea8f5bb6d</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getNbLayers</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>abe89c7992db8c0dfba720b8ada76c3ea</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>long long</type>
      <name>getTimeStamp</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>acdeda43f90049b623c48916fedb74f3b</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>char</type>
      <name>getCameraId</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>a1341af67e229e61610111d89210a7658</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getMaxResolution</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>a1604968d9c12f5bf8d2f4d0c5d2294d8</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getNbOfLayersMax</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>afa0ff94e34b069507ede2423e05ab96b</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>areDataExternal</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>acab3d4c980f0756f6667aa483ae906bf</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getAllocatedSize</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>a9f0fa5a485e280950c2c1c853e49093b</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>getLeftAngle</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>a79441238f3b34f8eeb5da8cef8d09f94</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>getTopAngle</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>a255379f8d271fbac90842376ca59f594</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>getRightAngle</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>a952f3ce1c93ac6776fd59c89e1b972ca</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>getBottomAngle</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>ac0811296599f708b01b3cb474444cc87</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>getAngles</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>a4fb7659efdc9b45a2c9ff9d8c2c6dd8c</anchor>
      <arglist>(float &amp;leftAngle, float &amp;topAngle, float &amp;rightAngle, float &amp;bottomAngle)</arglist>
    </member>
    <member kind="function">
      <type>std::string</type>
      <name>toString</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>a4f9dba493316bda155f12e7099754830</anchor>
      <arglist>(void) const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getNumOfROIs</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>a125beafb64713b99992f220ca9b1dec9</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const ROI *</type>
      <name>getROI</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>a079f7aa495fd499a085cfbe3aee5947b</anchor>
      <arglist>(int index) const </arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>addROI</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>aad4116c0eb894ecd6d7dd4432c2d72d5</anchor>
      <arglist>(const ROI &amp;rect)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>cleanROIs</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>a75d1399045ebcdceccf0815eef163437</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setEnableROIs</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>a950df6e7343ee5abbbf5f19b99e46d7a</anchor>
      <arglist>(bool enable)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isROIEnabled</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>a864c230279c963afa0af6e4d9c611c31</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>writeFile</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>aa6c3f965250d8f5bb2b773adebc2153a</anchor>
      <arglist>(const char *_fileNameAndPath)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>readFile</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>af641d8af758fe5f14fcee5b40142e716</anchor>
      <arglist>(const char *_fileNameAndPath)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>savePPM</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>a5c030c8b514d90495b8ae98ca809e378</anchor>
      <arglist>(const char *_fileNameAndPath)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>computeYUV422imageFromBGR</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>a2be0e20a5f49fd40d13c51f8917cf559</anchor>
      <arglist>(IplImage *_src)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>computeYUV422imageFromBGR</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>a6287ff6c2f8f4a39a428a42e3b27c26b</anchor>
      <arglist>(int height, int width, char *data)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>computeBGRimageFromYUV422</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>a8a95bbd831353287fb42e61991de7cd5</anchor>
      <arglist>(const unsigned char *_dest)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>computeYYYUUUVVVimageFromYUV422</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>ab69fe3cf17300790af7eb3df958cd0c2</anchor>
      <arglist>(const unsigned char *_dest)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>computeYYYYUUVVimageFromYUV422</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>a4ce43f7d078a05bcc30eea25e9713c31</anchor>
      <arglist>(const unsigned char *_dest)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static ALImage *</type>
      <name>fromALValue</name>
      <anchorfile>classAL_1_1ALImage.html</anchorfile>
      <anchor>abdd6843553cdb04a708f4e7c80e327c1</anchor>
      <arglist>(const ALValue &amp;image)</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>AL::ALImage::ROI</name>
    <filename>structAL_1_1ALImage_1_1ROI.html</filename>
    <member kind="function">
      <type></type>
      <name>ROI</name>
      <anchorfile>structAL_1_1ALImage_1_1ROI.html</anchorfile>
      <anchor>a975c88deab4e80619289fa3801a21bdd</anchor>
      <arglist>(int left, int top, int width, int height)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>ROI</name>
      <anchorfile>structAL_1_1ALImage_1_1ROI.html</anchorfile>
      <anchor>ac2d6e81f497b3b82838481108ec212aa</anchor>
      <arglist>(int left, int top, int width, int height, float leftAngle, float topAngle, float rightAngle, float bottomAngle)</arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>x</name>
      <anchorfile>structAL_1_1ALImage_1_1ROI.html</anchorfile>
      <anchor>a96586bec98a3fc03b46256e5eba008ee</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>y</name>
      <anchorfile>structAL_1_1ALImage_1_1ROI.html</anchorfile>
      <anchor>a92c6791d8963bc7f43847ce96970c1a0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>w</name>
      <anchorfile>structAL_1_1ALImage_1_1ROI.html</anchorfile>
      <anchor>a9c498afbf862eda26246ca23535ae679</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>h</name>
      <anchorfile>structAL_1_1ALImage_1_1ROI.html</anchorfile>
      <anchor>a5eba8eeb558acb79bf3b65b845720061</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>leftAngle</name>
      <anchorfile>structAL_1_1ALImage_1_1ROI.html</anchorfile>
      <anchor>ad93907fcdd7bcc81878d96507556feeb</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>topAngle</name>
      <anchorfile>structAL_1_1ALImage_1_1ROI.html</anchorfile>
      <anchor>a7258d8450b88be4d16e2235708da3470</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>rightAngle</name>
      <anchorfile>structAL_1_1ALImage_1_1ROI.html</anchorfile>
      <anchor>a0b0c0de26d54e5f9d03bc2c1f285ba8c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>bottomAngle</name>
      <anchorfile>structAL_1_1ALImage_1_1ROI.html</anchorfile>
      <anchor>a5ceb77c5bb274b07ed4f1cb2ce8c368b</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>AL::streamHeader</name>
    <filename>structAL_1_1streamHeader.html</filename>
    <member kind="variable">
      <type>unsigned int</type>
      <name>width</name>
      <anchorfile>structAL_1_1streamHeader.html</anchorfile>
      <anchor>a63e9fe4ee7c1c5e0163e8b9f48ad936c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>unsigned int</type>
      <name>height</name>
      <anchorfile>structAL_1_1streamHeader.html</anchorfile>
      <anchor>af6c267a7abdc5a85576b551628d1e036</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>unsigned int</type>
      <name>colorSpace</name>
      <anchorfile>structAL_1_1streamHeader.html</anchorfile>
      <anchor>a6bca8cc4ea24831d67c5a40e6076073a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>unsigned int</type>
      <name>pixelDepth</name>
      <anchorfile>structAL_1_1streamHeader.html</anchorfile>
      <anchor>a1d93e27e2ca8aeb2ca6ad4b4cdc837e1</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>AL::videoHeader</name>
    <filename>structAL_1_1videoHeader.html</filename>
    <member kind="variable">
      <type>unsigned int</type>
      <name>magicNumber</name>
      <anchorfile>structAL_1_1videoHeader.html</anchorfile>
      <anchor>a8601171140f573c0d4c7004524cfb7af</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>unsigned int</type>
      <name>userSpaceSize</name>
      <anchorfile>structAL_1_1videoHeader.html</anchorfile>
      <anchor>a97940654ebbbc95df6f1d242896d6d84</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>unsigned int</type>
      <name>numberOfFrames</name>
      <anchorfile>structAL_1_1videoHeader.html</anchorfile>
      <anchor>a3c5c4180fb5925b056f082281e276cc5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>unsigned int</type>
      <name>numberOfStreams</name>
      <anchorfile>structAL_1_1videoHeader.html</anchorfile>
      <anchor>a77bf0f2049901b89704545ed6bccb080</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>AL::streamProperties</name>
    <filename>structAL_1_1streamProperties.html</filename>
    <member kind="variable">
      <type>unsigned int</type>
      <name>width</name>
      <anchorfile>structAL_1_1streamProperties.html</anchorfile>
      <anchor>a784c53fb9aaa12caacd4ac1877c49595</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>unsigned int</type>
      <name>height</name>
      <anchorfile>structAL_1_1streamProperties.html</anchorfile>
      <anchor>aa1d426b3b33f1098bfb36dea103c080a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>unsigned int</type>
      <name>resolution</name>
      <anchorfile>structAL_1_1streamProperties.html</anchorfile>
      <anchor>ae5b9a00a7786ce47dbe3f0d0267456cf</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>unsigned int</type>
      <name>colorSpace</name>
      <anchorfile>structAL_1_1streamProperties.html</anchorfile>
      <anchor>ab9181532b221a81b2235f658a92fc8e5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>unsigned int</type>
      <name>nbLayers</name>
      <anchorfile>structAL_1_1streamProperties.html</anchorfile>
      <anchor>a006dfa7c4f3f7cd6c77ff862506d5ba2</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>unsigned int</type>
      <name>pixelDepth</name>
      <anchorfile>structAL_1_1streamProperties.html</anchorfile>
      <anchor>ae212fa3fff35caa6710c2a5747cbcf20</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>unsigned int</type>
      <name>sizePerImage</name>
      <anchorfile>structAL_1_1streamProperties.html</anchorfile>
      <anchor>a6c3ee3991325c0f75767482479584652</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>AL::ALVideo</name>
    <filename>classAL_1_1ALVideo.html</filename>
    <member kind="function">
      <type>bool</type>
      <name>recordVideo</name>
      <anchorfile>classAL_1_1ALVideo.html</anchorfile>
      <anchor>afd03e17c1cddbaba9602f3bb56827a92</anchor>
      <arglist>(const std::string pFilePath, const unsigned int pUserSpaceSize, const std::vector&lt; streamHeader &gt; &amp;pStreamHeaderVector)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>readVideo</name>
      <anchorfile>classAL_1_1ALVideo.html</anchorfile>
      <anchor>a3d4af79d81a54d188f4dacaaa6532c9f</anchor>
      <arglist>(const std::string pFilePath)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>closeVideo</name>
      <anchorfile>classAL_1_1ALVideo.html</anchorfile>
      <anchor>af53d55c687fc6516597ea4d464e50710</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>goToFrame</name>
      <anchorfile>classAL_1_1ALVideo.html</anchorfile>
      <anchor>a16872ebf9f2714b99451aab045dd2b32</anchor>
      <arglist>(const unsigned int pFrameNumber, const unsigned int pStreamNumber)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>getFrame</name>
      <anchorfile>classAL_1_1ALVideo.html</anchorfile>
      <anchor>a612c419239d598226c9c4f11176e29c7</anchor>
      <arglist>(ALImage &amp;pImage, const unsigned int pFrameNumber, const unsigned int pStreamNumber, const bool pCheckFormat=true)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>getNextFrame</name>
      <anchorfile>classAL_1_1ALVideo.html</anchorfile>
      <anchor>ad7a43c40a5194d64819fa97bc863d5c8</anchor>
      <arglist>(ALImage &amp;pImage, const bool pCheckFormat=true)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>getPrecedingFrame</name>
      <anchorfile>classAL_1_1ALVideo.html</anchorfile>
      <anchor>af88ef11ba6bc0be063ce7157707a38e9</anchor>
      <arglist>(ALImage &amp;pImage, const bool pCheckFormat=true)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>write</name>
      <anchorfile>classAL_1_1ALVideo.html</anchorfile>
      <anchor>aa70dca29c960c4aa63ff4541f65ce5d4</anchor>
      <arglist>(char *ptrImageData, const int pSizeData, const long long pTimeStamp=0, const char pCameraId=0, const float pLeftAngle=0, const float pTopAngle=0, const float pRightAngle=0, const float pBottomAngle=0)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>write</name>
      <anchorfile>classAL_1_1ALVideo.html</anchorfile>
      <anchor>aba0d482b8204345e98fc905dc88b81df</anchor>
      <arglist>(int height, int width, char *imageData, const long long pTimeStamp, const char pCameraId, const float pLeftAngle, const float pTopAngle, const float pRightAngle, const float pBottomAngle)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>write</name>
      <anchorfile>classAL_1_1ALVideo.html</anchorfile>
      <anchor>ad2a8085e2d058d86ae4e463709056b5b</anchor>
      <arglist>(IplImage *pImage, const long long pTimeStamp=0, const char pCameraId=0, const float pLeftAngle=0, const float pTopAngle=0, const float pRightAngle=0, const float pBottomAngle=0)</arglist>
    </member>
    <member kind="function">
      <type>const unsigned char *</type>
      <name>getMagicNumber</name>
      <anchorfile>classAL_1_1ALVideo.html</anchorfile>
      <anchor>a8fc38014fe1940f5228b20b2e13a12e3</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const unsigned int</type>
      <name>getNumberOfFrames</name>
      <anchorfile>classAL_1_1ALVideo.html</anchorfile>
      <anchor>a2222718940ad20d0bcd94d46d17653a3</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const unsigned int</type>
      <name>getNumberOfStreams</name>
      <anchorfile>classAL_1_1ALVideo.html</anchorfile>
      <anchor>a1cacce844916c1fd81b3b827ab8f7c92</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const unsigned int</type>
      <name>getCurrentFrameNumber</name>
      <anchorfile>classAL_1_1ALVideo.html</anchorfile>
      <anchor>a38907a76b3c862e60c78d6b7f1fc25af</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const unsigned int</type>
      <name>getCurrentStreamNumber</name>
      <anchorfile>classAL_1_1ALVideo.html</anchorfile>
      <anchor>a86c8c9f8c3e01448f1db3ea22d698ef1</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const bool</type>
      <name>isOpenForReading</name>
      <anchorfile>classAL_1_1ALVideo.html</anchorfile>
      <anchor>ae33042fd314e181e8fe852edb48d98a8</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const bool</type>
      <name>isOpenForWriting</name>
      <anchorfile>classAL_1_1ALVideo.html</anchorfile>
      <anchor>a4220ffab40b8a62d19576bdc898605a5</anchor>
      <arglist>() const </arglist>
    </member>
    <member kind="function">
      <type>const int</type>
      <name>getStreamWidth</name>
      <anchorfile>classAL_1_1ALVideo.html</anchorfile>
      <anchor>a76d2659ba127f8ee6e0217f08a1dae15</anchor>
      <arglist>(const unsigned int pStreamNumber) const </arglist>
    </member>
    <member kind="function">
      <type>const int</type>
      <name>getStreamHeight</name>
      <anchorfile>classAL_1_1ALVideo.html</anchorfile>
      <anchor>add033aee027286019787ca35beae3bf6</anchor>
      <arglist>(const unsigned int pStreamNumber) const </arglist>
    </member>
    <member kind="function">
      <type>const int</type>
      <name>getStreamResolution</name>
      <anchorfile>classAL_1_1ALVideo.html</anchorfile>
      <anchor>a5f38030a29ae00abb9765ff481478eaf</anchor>
      <arglist>(const unsigned int pStreamNumber) const </arglist>
    </member>
    <member kind="function">
      <type>const int</type>
      <name>getStreamColorSpace</name>
      <anchorfile>classAL_1_1ALVideo.html</anchorfile>
      <anchor>aaf30e1bac91a6234e42a80bcfdf45a95</anchor>
      <arglist>(const unsigned int pStreamNumber) const </arglist>
    </member>
    <member kind="function">
      <type>const int</type>
      <name>getStreamNbLayers</name>
      <anchorfile>classAL_1_1ALVideo.html</anchorfile>
      <anchor>a311ae706f433afaa1f4470e2d8a15853</anchor>
      <arglist>(const unsigned int pStreamNumber) const </arglist>
    </member>
    <member kind="function">
      <type>const int</type>
      <name>getStreamPixelDepth</name>
      <anchorfile>classAL_1_1ALVideo.html</anchorfile>
      <anchor>ac53ccdd4c1d33bf71d660575a75caa23</anchor>
      <arglist>(const unsigned int pStreamNumber) const </arglist>
    </member>
    <member kind="function">
      <type>const int</type>
      <name>getStreamSizePerImage</name>
      <anchorfile>classAL_1_1ALVideo.html</anchorfile>
      <anchor>abe54c745992cdff8145378867954a635</anchor>
      <arglist>(const unsigned int pStreamNumber) const </arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>AL::ALVisionExtractor</name>
    <filename>classAL_1_1ALVisionExtractor.html</filename>
    <member kind="function">
      <type></type>
      <name>ALVisionExtractor</name>
      <anchorfile>classAL_1_1ALVisionExtractor.html</anchorfile>
      <anchor>ab9e15b805363f8df57496a83535ce507</anchor>
      <arglist>(boost::shared_ptr&lt; ALBroker &gt; pBroker, const std::string &amp;pName, int resolution=kQVGA, int colorspace=kBGRColorSpace, int framerate=30)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>setColorSpace</name>
      <anchorfile>classAL_1_1ALVisionExtractor.html</anchorfile>
      <anchor>ae7554a5b38e9f8dac7b3de9386e342ab</anchor>
      <arglist>(const int &amp;colorSpace)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>setFrameRate</name>
      <anchorfile>classAL_1_1ALVisionExtractor.html</anchorfile>
      <anchor>aa98056e1a78f108f52da5321f37e02a4</anchor>
      <arglist>(const int &amp;framerate)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>setResolution</name>
      <anchorfile>classAL_1_1ALVisionExtractor.html</anchorfile>
      <anchor>a0ca49e075c32398d888b57117161c4cd</anchor>
      <arglist>(const int &amp;resolution)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>setActiveCamera</name>
      <anchorfile>classAL_1_1ALVisionExtractor.html</anchorfile>
      <anchor>a07010b10bbea2be761fef5319b577ae7</anchor>
      <arglist>(const int &amp;cameraId)</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getColorSpace</name>
      <anchorfile>classAL_1_1ALVisionExtractor.html</anchorfile>
      <anchor>a39127f262dd39906847c0a12ef27cdfc</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getFrameRate</name>
      <anchorfile>classAL_1_1ALVisionExtractor.html</anchorfile>
      <anchor>a89986694414cf657fdd17f6297d30570</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getResolution</name>
      <anchorfile>classAL_1_1ALVisionExtractor.html</anchorfile>
      <anchor>a16dd5a61307ecd8527159c904c1133c9</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>int</type>
      <name>getActiveCamera</name>
      <anchorfile>classAL_1_1ALVisionExtractor.html</anchorfile>
      <anchor>a848e2a31da16ef1d7485832c92d6d682</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isPaused</name>
      <anchorfile>classAL_1_1ALVisionExtractor.html</anchorfile>
      <anchor>af8fcb649eaf2cde7900d3517e84d9413</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isProcessing</name>
      <anchorfile>classAL_1_1ALVisionExtractor.html</anchorfile>
      <anchor>ac3c7bf7e64fc12ebcf708eb74597cbf3</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>QI_API_DEPRECATED void</type>
      <name>setParameter</name>
      <anchorfile>classAL_1_1ALVisionExtractor.html</anchorfile>
      <anchor>ac89b7cb7c60838437db7b47b6b6a20f1</anchor>
      <arglist>(const std::string &amp;paramName, const ALValue &amp;paramValue)</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>start</name>
      <anchorfile>classAL_1_1ALVisionExtractor.html</anchorfile>
      <anchor>ad9347a6ffa510bb70bb1ec7d6a3a9243</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>process</name>
      <anchorfile>classAL_1_1ALVisionExtractor.html</anchorfile>
      <anchor>a96e3b45aa05eae2e335320f9ae869e4d</anchor>
      <arglist>(ALImage *img)=0</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>pause</name>
      <anchorfile>classAL_1_1ALVisionExtractor.html</anchorfile>
      <anchor>acf3f73193eb34f1c1c58de35d9d1bc01</anchor>
      <arglist>(const bool &amp;paused)</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>stop</name>
      <anchorfile>classAL_1_1ALVisionExtractor.html</anchorfile>
      <anchor>aaa09a6cd7b6d8a5e1a31d861cfbf5db6</anchor>
      <arglist>()=0</arglist>
    </member>
  </compound>
  <compound kind="page">
    <name>index</name>
    <title>libalvision</title>
    <filename>index</filename>
    <docanchor file="index">API</docanchor>
    <docanchor file="index">qi</docanchor>
    <docanchor file="index">Extras</docanchor>
  </compound>
</tagfile>
