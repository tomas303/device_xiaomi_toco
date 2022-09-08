# Device Common Tree
rm -rf device/xiaomi/sm6150-common
git clone --depth=1 https://github.com/ProjectElixir-Devices/device_xiaomi_sm6150-common-toco.git -b tiramisu device/xiaomi/sm6150-common

# Hardware Xiaomi
rm -rf hardware/xiaomi
git clone --depth=1 https://github.com/AndroidHQ254/android_hardware_xiaomi.git -b 13 hardware/xiaomi

# Kernel Tree
rm -rf kernel/xiaomi/sm6150
git clone --depth=1 https://github.com/AndroidHQ254/android_kernel_xiaomi_sm6150.git -b 13 kernel/xiaomi/sm6150

# Kernel Clang
rm -rf prebuilts/clang/host/linux-x86/clang-playground
git clone --depth=1 https://gitlab.com/d.murimi14/playgroundtc.git -b 15 prebuilts/clang/host/linux-x86/clang-playground

# Miui Camera
rm -rf vendor/MiuiCamera
git clone --depth=1 https://gitlab.com/d.murimi14/vendor-anxcamera.git -b tiramisu vendor/MiuiCamera

# Vendor Tree
rm -rf vendor/xiaomi
git clone --depth=1 https://github.com/AndroidHQ254/vendor_xiaomi.git -b tiramisu vendor/xiaomi

# Extras
rm -rf vendor/xiaomi/google
git clone --depth=1 https://github.com/ProjectElixir-Devices/vendor_xiaomi_google.git vendor/xiaomi/google
