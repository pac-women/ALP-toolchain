# ALP toolchain
According to https://www.atgames.net/arcades/features/ you could just ask AtGames customer service to get ALP toolchain

Here's the setup guide

Step 1: Get RK3399 toolchain.
  You could get RK3399 toolchain from customer service (filename = rk3399-host.tar.gz)

Step 2: Extract and install
  After downloading, extract it to a destination.
  Steps:
```
tar -zxvf ./rk3399-host.tar.gz
mv host/ /opt/rk3399_toolchain/
```
  The extract toolchain is under host. Move it to /opt/rk3399_toolchain/, it's your SDK_BASE

Step3:
  Create a script rk3399env.sh as follows: 
```
SDK_BASE=/opt/rk3399_toolchain/
export PATH=$SDK_BASE/bin/:$PATH
export CC="aarch64-linux-gcc --sysroot=$SDK_BASE/aarch64-buildroot-linux-gnu/sysroot"
export CXX="aarch64-linux-g++ --sysroot=$SDK_BASE/aarch64-buildroot-linux-gnu/sysroot"
export PKG_CONFIG_PATH=$SDK_BASE/aarch64-buildroot-linux-gnu/sysroot/usr/lib/pkgconfig
export SDKTARGETSYSROOT=$SDK_BASE/aarch64-buildroot-linux-gnu/sysroot
export LD="aarch64-linux-ld"
export AS="aarch64-linux-as"
```
  Before build any target, source toolchain first.
```	
source ./rk3399env.sh
```
