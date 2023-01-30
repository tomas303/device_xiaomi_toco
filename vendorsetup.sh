rm -rf device/xiaomi/sm6150-common
rm -rf vendor/xiaomi
rm -rf hardware/xiaomi
rm -rf kernel/xiaomi
rm -rf prebuilts/clang/host/linux-x86/clang-playground
rm -rf vendor/codeaurora/telephony
rm -rf hardware/lineage/compat

git clone --depth=1 https://github.com/ProjectElixir-Devices/device_xiaomi_sm6150-common-toco.git -b tiramisu device/xiaomi/sm6150-common
git clone --depth=1 https://github.com/AndroidHQ254/android_hardware_xiaomi.git -b 13 hardware/xiaomi
git clone --depth=1 https://github.com/AndroidHQ254/android_kernel_xiaomi_sm6150.git -b 13 kernel/xiaomi/sm6150
git clone --depth=1 https://gitlab.com/PixelOS-Devices/playgroundtc.git -b 16 prebuilts/clang/host/linux-x86/clang-playground
git clone --depth=1 https://github.com/AndroidHQ254/vendor_xiaomi.git -b tiramisu vendor/xiaomi
git clone --depth=1 https://github.com/ProjectElixir-Devices/vendor_xiaomi_google.git vendor/xiaomi/google
git clone --depth=1 https://gitlab.com/AndroidHQ254/vendor-xiaomi-toco-miuicamera.git -b leica vendor/xiaomi/toco-miuicamera
git clone --depth=1 https://github.com/LineageOS/android_vendor_codeaurora_telephony.git -b lineage-20.0 vendor/codeaurora/telephony
git clone --depth=1 https://github.com/LineageOS/android_hardware_lineage_compat.git hardware/lineage/compat

cd frameworks/av
wget https://github.com/AndroidHQ254/miuicamerapatches/raw/main/frameworks_av/0001-Camera-Skip-stream-size-check-for-whitelisted-apps.patch
wget https://github.com/AndroidHQ254/miuicamerapatches/raw/main/frameworks_av/0002-Camera-Avoid-roundBufferDimensionsNearest-also-for-H.patch
git apply *.patch

cd ../..

cd frameworks/base
wget https://github.com/AndroidHQ254/miuicamerapatches/raw/main/frameworks_base/0001-Revert-Camera-Ignore-torch-status-update-for-aux-or-.patch
wget https://github.com/AndroidHQ254/miuicamerapatches/raw/main/frameworks_base/0002-Revert-CameraManager-Fixup-exposing-aux-camera-to-ap.patch
wget https://github.com/AndroidHQ254/miuicamerapatches/raw/main/frameworks_base/0003-Revert-Camera-Replace-packageblacklist-with-packagee.patch
wget https://github.com/AndroidHQ254/miuicamerapatches/raw/main/frameworks_base/0004-Revert-camera-Support-exposing-aux-camera-to-apps.patch
wget https://github.com/AndroidHQ254/miuicamerapatches/raw/main/frameworks_base/0005-camera-Add-backwards-compatible-CaptureResultExtras-.patch
git apply *.patch

cd ../..
