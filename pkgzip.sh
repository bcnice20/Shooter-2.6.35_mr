#!/bin/bash -

driver=~/android/shooter-2.6.35/drivers
wimax=$driver/net/wimax
zimg=~/android/shooter-2.6.35/arch/arm/boot/zImage
out=~/android/shooter-out
mods=$out/system/lib/modules
net=$driver/net/wireless/bcm4329_248

cp $wimax/SQN/sequans_sdio.ko $mods
cp $wimax/wimaxdbg/wimaxdbg.ko $mods
cp $wimax/wimaxuart/wimaxuart.ko $mods
cp $driver/spi/spidev.ko $mods
cp $driver/video/backlight/lcd.ko $mods

cp $zimg $out/kernel

cd $out
zip -r $out/shooter-kern.zip *
