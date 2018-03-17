#!/bin/bash
CHROOTDIR="./base"
REPO="http://repo2.voidlinux.eu/current"

[[ -d ${CHROOTDIR} ]] && rm -rf ${CHROOTDIR}
mkdir ${CHROOTDIR}
mkdir -p ${CHROOTDIR}/var/db/xbps/keys/
cp -a /var/db/xbps/keys/* ${CHROOTDIR}/var/db/xbps/keys/

xbps-install -yS -r ${CHROOTDIR} -R ${REPO} base-voidstrap
rm -rf ${CHROOTDIR}/var/cache/xbps

[[ -e void_base.tar.xz ]] && rm -f void_base.tar.xz
cd ${CHROOTDIR}
tar cfJ ../void_base.tar.xz .
