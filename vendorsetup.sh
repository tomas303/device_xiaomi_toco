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
git clone --depth=1 https://gitlab.com/PixelOS-Devices/playgroundtc.git -b 17 prebuilts/clang/host/linux-x86/clang-playground
git clone --depth=1 https://github.com/AndroidHQ254/vendor_xiaomi.git -b tiramisu vendor/xiaomi
git clone --depth=1 https://github.com/ProjectElixir-Devices/vendor_xiaomi_google.git vendor/xiaomi/google
git clone --depth=1 https://gitlab.com/AndroidHQ254/vendor-xiaomi-toco-miuicamera.git -b leica vendor/xiaomi/toco-miuicamera
git clone --depth=1 https://github.com/LineageOS/android_vendor_codeaurora_telephony.git -b lineage-20.0 vendor/codeaurora/telephony
git clone --depth=1 https://github.com/LineageOS/android_hardware_lineage_compat.git hardware/lineage/compat
