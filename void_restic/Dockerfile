FROM void_base
RUN xbps-install -yS wget \
&& wget https://github.com$(wget https://github.com/restic/restic/releases/latest -O - 2>/dev/null| grep "href.*linux_amd64" | sed 's#.*href="##;s#".*##') \
&& bzip2 -d restic* \
&& mv restic* /usr/bin/restic \
&& chmod +x /usr/bin/restic \
&& xbps-remove -yf wget \
&& rm -rf /var/cache/xbps
