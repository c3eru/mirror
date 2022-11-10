cd $CIRRUS_WORKING_DIR

wget --show-progress --progress=bar:force --no-check-certificate "https://bigota.d.miui.com/V13.0.2.0.SGKIDXM/miui_SPESNIDGlobal_V13.0.2.0.SGKIDXM_7471370342_12.0.zip" || exit 1
nama_file=$(basename *.zip)

rclone copy *.zip mobx:MIUI -P

echo
echo Tautan Unduhan = https://file.cloudmobx.workers.dev/MIUI/$nama_file
echo
