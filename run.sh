#!/bin/sh

# ln -s ../openbmc/build/evb-ast2600/tmp/deploy/images/evb-ast2600/obmc-phosphor-image-evb-ast2600.static.mtd obmc-phosphor-image-evb-ast2600.static.mtd

./qemu-system-arm -m 1024 -M ast2600-evb -nographic -drive file=./obmc-phosphor-image-evb-ast2600.static.mtd,format=raw,if=mtd -net nic -net user,hostfwd=::2222-:22,hostfwd=::2443-:443,hostfwd=udp::2623-:623,hostfwd=::12345-:12345,hostname=qemu
