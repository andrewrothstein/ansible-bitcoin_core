#!/usr/bin/env sh
set -e
DIR=~/Downloads
MIRROR=https://bitcoin.org/bin

dl()
{
    ver=$1
    platform=$2
    archive_type=${4:-tar.gz}
    file="bitcoin-${ver}-${platform}.${archive_type}"
    lfile=$DIR/$file
    url=$MIRROR/bitcoin-core-${ver}/$file
    if [ ! -e $lfile ];
    then
        curl -Sslf -o $lfile $url
    fi

    printf "    # %s\n" $url
    printf "    %s: sha256:%s\n" $platform $(sha256sum $lfile | awk '{print $1}')
}

dl_ver() {
    ver=$1
    printf "  '%s':\n" $ver
    dl $ver aarch64-linux-gnu
    dl $ver arm-linux-gnueabihf
    dl $ver riscv64-linux-gnu
    dl $ver x86_64-linux-gnu
    dl $ver powerpc64le-linux-gnu
    dl $ver x86_64-apple-darwin
    dl $ver arm64-apple-darwin
}

#dl_ver 26.0
dl_ver ${1:-27.0}
