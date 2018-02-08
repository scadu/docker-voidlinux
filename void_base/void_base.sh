#!/bin/bash
CHROOTDIR="./base"

[[ -d ${CHROOTDIR} ]] && rm -rf ${CHROOTDIR}
mkdir ${CHROOTDIR}
mkdir -p ${CHROOTDIR}/var/db/xbps/keys/
cp -a /var/db/xbps/keys/* ${CHROOTDIR}/var/db/xbps/keys/

xbps-install -yS -r ${CHROOTDIR} -R http://repo.voidlinux.eu/current base-voidstrap
rm -rf ${CHROOTDIR}/var/cache/xbps

[[ -e void_base.tar ]] && rm -f void_base.tar
cd ${CHROOTDIR}
tar cf ../void_base.tar .
