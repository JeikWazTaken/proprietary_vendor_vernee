#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/recovery:10425216:7c05f1f9f06cc7b0ad896700ecdb2c1817c0a633; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/boot:9282432:6df636266a0ab90d21d2fa9084b977a6e8e71f41 EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/recovery 7c05f1f9f06cc7b0ad896700ecdb2c1817c0a633 10425216 6df636266a0ab90d21d2fa9084b977a6e8e71f41:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
