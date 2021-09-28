32-bit Vulkan driver compilation
```bash
sudo rm -r /home/pi/mesa_vulkan
echo 1/8 Update
sudo apt update
echo 2/8 Upgrade
sudo apt full-upgrade -y
echo 3/8 Install pre-requisites
sudo apt install -y libxcb-randr0-dev libxrandr-dev \
        libxcb-xinerama0-dev libxinerama-dev libxcursor-dev \
        libxcb-cursor-dev libxkbcommon-dev xutils-dev \
        xutils-dev libpthread-stubs0-dev libpciaccess-dev \
        libffi-dev x11proto-xext-dev libxcb1-dev libxcb-*dev \
        bison flex libssl-dev libgnutls28-dev x11proto-dri2-dev \
        x11proto-dri3-dev libx11-dev libxcb-glx0-dev \
        libx11-xcb-dev libxext-dev libxdamage-dev libxfixes-dev \
        libva-dev x11proto-randr-dev x11proto-present-dev \
        libclc-dev libelf-dev git build-essential mesa-utils \
        libvulkan-dev ninja-build libvulkan1 python-mako \
        libdrm-dev libxshmfence-dev libxxf86vm-dev libunwind-dev \
		valgrind libzstd-dev vulkan-tools
echo 4/8 Install meson
sudo apt purge meson -y
sudo pip3 install meson 
echo 5/8 Install mako
sudo pip3 install mako
echo 6/8 Get v3dv
cd ~
git clone https://gitlab.freedesktop.org/mesa/mesa.git mesa_vulkan
echo 7/8 Build v3dv
cd mesa_vulkan
CFLAGS="-mcpu=cortex-a72 -mfpu=neon-fp-armv8" CXXFLAGS="-mcpu=cortex-a72 -mfpu=neon-fp-armv8" meson --prefix /usr -Dplatforms=x11 -Dvulkan-drivers=broadcom -Ddri-drivers= -Dgallium-drivers=kmsro,v3d,vc4 -Dbuildtype=release build
ninja -C build -j4
sudo ninja -C build install
echo 8/8 Updated Mesa Driver
glxinfo -B
```
<details>
    <summary>other instructions</summary>
taken from https://github.com/jc-kynesim/rpi-ffmpeg/issues/9

FOLLOW STEPS HERE FIRST: https://github.com/jc-kynesim/rpi-ffmpeg/issues/9

The steps for building this ffmpeg version is found above in this thread. I will put them again on one of my git projects but probably not for a while.

My notes on building latest (as of writing) Mesa are:

sudo pip3 install mako
sudo apt install bison byacc flex
sudo apt install libxcb-glx0-dev libxcb-shm0-dev libxcb-dri2-0-dev libxcb-present-dev
sudo apt install libxshmfence-dev

git clone https://github.com/mesa3d/mesa.git
cd mesa

meson --prefix /usr --libdir lib -Dplatforms=x11 -Dvulkan-drivers=broadcom -Ddri-drivers= -Dgallium-drivers=v3d,kmsro,vc4 -Dbuildtype=release build

sudo ninja -C build -j3
sudo ninja -C build install

sudo apt install mesa-utils (for glxinfo)
glxinfo -B

The main hurdle was to figure out why the install doesn't trump the distro included old mesa. Also I'm wondering why that seems to be installed in two locations on Rasberry OS,
/lib/arm-linux-gnueabihf
/usr/lib/arm-linux-gnueabihf

The one you build will get installed in the location pointed to by '--prefix /usr' seen above.

Then what I did was,
sudo nano /etc/ld.so.conf.d/000-AAA-Mesa.conf
and just add
/usr/lib
Basically pointing to where you install the new mesa.

sudo ldconfig
Reboot

Then if you run glxinfo -B you should get something like,

name of display: :0.0
display: :0  screen: 0
direct rendering: Yes
Extended renderer info (GLX_MESA_query_renderer):
    Vendor: Broadcom (0x14e4)
    Device: V3D 4.2 (0xffffffff)
    Version: 21.3.0
    Accelerated: yes
    Video memory: 3660MB
    Unified memory: yes
    Preferred profile: compat (0x2)
    Max core profile version: 0.0
    Max compat profile version: 2.1
    Max GLES1 profile version: 1.1
    Max GLES[23] profile version: 3.1
OpenGL vendor string: Broadcom
OpenGL renderer string: V3D 4.2
OpenGL version string: 2.1 Mesa 21.3.0-devel (git-c679dbe09c)
OpenGL shading language version string: 1.20

OpenGL ES profile version string: OpenGL ES 3.1 Mesa 21.3.0-devel (git-c679dbe09c)
OpenGL ES profile shading language version string: OpenGL ES GLSL ES 3.10
</details>
