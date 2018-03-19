FROM scadu/void_base
RUN useradd builder -s /bin/bash && xbps-install -Sy xtools \
&& rm -rf /var/cache/xbps/* /root/.cache/
ADD prepare.sh /opt/
RUN chmod +x /opt/prepare.sh
USER builder
WORKDIR /home/builder/
CMD /opt/prepare.sh
