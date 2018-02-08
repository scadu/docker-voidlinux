FROM void_glibc_base
RUN xbps-install -yS rpmextract wget dejavu-fonts-ttf pulseaudio \
GConf \
alsa-lib \
atk \
avahi-libs \
cairo \
dbus-glib \
dbus-libs \
expat \
fontconfig \
freetype \
gdk-pixbuf \
glib \
gnutls \
graphite \
gtk+ \
libEGL \
libGL \
libX11 \
libXScrnSaver \
libXau \
libXcomposite \
libXcursor \
libXdamage \
libXdmcp \
libXext \
libXfixes \
libXi \
libXinerama \
libXrandr \
libXrender \
libXtst \
libXxf86vm \
libcups \
libdrm \
libffi \
libgbm \
libglapi \
libharfbuzz \
libidn \
libpng \
libtasn1 \
libunistring \
libxcb \
libxshmfence \
nettle \
nspr \
nss \
p11-kit \
pango \
pixman \
wayland \
zlib \
&& wget https://repo.skype.com/latest/skypeforlinux-64.rpm -P /tmp \
&& cd /tmp \
&& rpmextract skypeforlinux-64.rpm \
&& cp -r ./usr / \
&& rm -rf * \
&& xbps-remove -yf rpmextract wget bsdtar \
&& rm -rf /var/cache/xbps
