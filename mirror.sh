cd $CIRRUS_WORKING_DIR

wget -q --show-progress --progress=bar:force --no-check-certificate "https://bigota.d.miui.com/V13.0.2.0.SGKIDXM/miui_SPESNIDGlobal_V13.0.2.0.SGKIDXM_7471370342_12.0.zip" || exit 1
nama_file=$(basename *.zip)

rclone copy $nama_file mobx:MIUI -P

echo Tautan Unduhan = https://file.cloudmobx.workers.dev/MIUI/$nama_file
