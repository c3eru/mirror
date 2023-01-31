cd $CIRRUS_WORKING_DIR

tautan=https://onboardcloud.dl.sourceforge.net/project/xiaomi-eu-multilang-miui-roms/xiaomi.eu/MIUI-STABLE-RELEASES/MIUIv14/xiaomi.eu_multi_NUWA_V14.0.12.0.TMBCNXM_v14-13.zip

wget -q --show-progress --progress=bar:force --no-check-certificate "$tautan" || exit 1

nama_file=$(basename *)

mkdir -p $nama_file

unzip -o $nama_file -d $nama_file
rm -rf nama_file.zip

chmod 755 simg2img
chmod 644 $nama_file/images/super.img.*

./simg2img $nama_file/images/super.img.0 $nama_file/images/super.img.1 $nama_file/images/super.img.2 $nama_file/images/super.img.3 $nama_file/images/super.img.4 $nama_file/images/super.img.5 $nama_file/images/super.img.6 $nama_file/images/super.img.7 $nama_file/images/super.img.8 $nama_file/images/super.img.9 $nama_file/images/super.img.10 $nama_file/images/super.img

rm -rf $nama_file/images/super.img.*

zip -0 -r -q $nama_file $nama_file/*
rclone copy $nama_file.zip uprom:MIUI -P
