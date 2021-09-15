taken from https://github.com/jc-kynesim/rpi-ffmpeg/issues/9

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
