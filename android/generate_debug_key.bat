REM Adjust these paths to yours
SET PATH=J:\laztoapk\downloads\android-sdk-windows\tools;J:\laztoapk\downloads\android-sdk-windows\platform-tools;C:\Program Files\Java\jdk1.8.0_25\bin;
SET APP_NAME=New folder (2)
SET ANDROID_HOME="J:\laztoapk\downloads\android-sdk-windows"
SET APK_SDK_PLATFORM="J:\laztoapk\downloads\android-sdk-windows\platforms\android-12"
SET APK_PROJECT_PATH=J:\lazarus\Source\New folder (2)\android
SET SDK_BUILDTOOLS=21.1.2
SET PASSWORD=123456

mkdir %APK_PROJECT_PATH%\bin

keytool -genkey -v -keystore %APK_PROJECT_PATH%\bin\LCLDebugKey.keystore -alias LCLDebugKey -keyalg RSA -validity 10000

