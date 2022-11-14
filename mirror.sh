cd $CIRRUS_WORKING_DIR

tautan=https://bigota.d.miui.com/V13.0.7.0.SKFIDXM/miui_SWEETIDGlobal_V13.0.7.0.SKFIDXM_cc0059bbeb_12.0.zip

wget -q --show-progress --progress=bar:force --no-check-certificate "$tautan" || exit 1
nama_file=$(basename *.zip)

rclone copy $nama_file mobx:MIUI -P

echo
echo Tautan Unduhan = https://file.cloudmobx.workers.dev/MIUI/$nama_file
echo
