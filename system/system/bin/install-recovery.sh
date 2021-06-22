#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:33706912:1e028f3dd4348be35640fc8393d55ef348d5464d; then
  applypatch  EMMC:/dev/block/platform/bootdevice/by-name/boot:9720736:163a8202ce7fa090fb6c2c686d7b518a5e7077ee EMMC:/dev/block/platform/bootdevice/by-name/recovery 1e028f3dd4348be35640fc8393d55ef348d5464d 33706912 163a8202ce7fa090fb6c2c686d7b518a5e7077ee:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
