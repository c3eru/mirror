cd $CIRRUS_WORKING_DIR

wget -q --show-progress --progress=bar:force --no-check-certificate "https://bigota.d.miui.com/V13.0.7.0.RGKIDXM/miui_SPESNIDGlobal_V13.0.7.0.RGKIDXM_5da99bf349_11.0.zip" || exit 1
nama_file=$(basename *.zip)

rclone copy $nama_file mobx:MIUI -P

echo
echo Tautan Unduhan = https://file.cloudmobx.workers.dev/MIUI/$nama_file
echo
