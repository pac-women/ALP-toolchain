SDK_BASE=/opt/rk3399_toolchain/
export PATH=$SDK_BASE/bin/:$PATH
export CC="aarch64-linux-gcc --sysroot=$SDK_BASE/aarch64-buildroot-linux-gnu/sysroot"
export CXX="aarch64-linux-g++ --sysroot=$SDK_BASE/aarch64-buildroot-linux-gnu/sysroot"
export PKG_CONFIG_PATH=$SDK_BASE/aarch64-buildroot-linux-gnu/sysroot/usr/lib/pkgconfig
export SDKTARGETSYSROOT=$SDK_BASE/aarch64-buildroot-linux-gnu/sysroot
export LD="aarch64-linux-ld"
export AS="aarch64-linux-as"

