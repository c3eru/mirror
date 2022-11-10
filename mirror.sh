cd CIRRUS_WORKING_DIR
wget -q --show-progress --progress=bar:force --no-check-certificate "https://bigota.d.miui.com/V13.0.2.0.SGKIDXM/miui_SPESNIDGlobal_V13.0.2.0.SGKIDXM_7471370342_12.0.zip" || exit 1

rclone copy *.zip mobx:MIUI -P