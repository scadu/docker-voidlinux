FROM void_glibc_base
RUN xbps-install -yS chromium dejavu-fonts-ttf pulseaudio libavcodec \
&& rm -rf /usr/share/locale \
&& rm -rf /var/cache/xbps/
