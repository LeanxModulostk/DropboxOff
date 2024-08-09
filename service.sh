#!/system/bin/sh

MODDIR="${0%/*}"

sleep 69

#Dropbox Off?
#su -c "cmd dropbox set-rate-limit 10000"
#content insert --uri content://settings/global --bind name:s:dropbox_max_files --bind value:i:1
#su -c "settings put global dropbox_max_files 1"
su -c "settings put global dropbox:dumpsys:procstats disabled"
su -c "settings put global dropbox:dumpsys:usagestats disabled"
su -c "settings put global dropbox:procstats disabled"
su -c "settings put global dropbox:usagestats disabled"
su -c "settings put global dropbox:data_app_wtf disabled"
su -c "settings put global dropbox:keymaster disabled"
su -c "settings put global dropbox:system_server_wtf disabled"
su -c "settings put global dropbox:system_app_strictmode disabled"
su -c "settings put global dropbox:system_app_wtf disabled"
su -c "settings put global dropbox:system_server_strictmode disabled"
su -c "settings put global dropbox:data_app_strictmode disabled"
su -c "settings put global dropbox:netstats disabled"
su -c "settings put global dropbox:data_app_anr disabled"
su -c "settings put global dropbox:data_app_crash disabled"
su -c "settings put global dropbox:system_server_anr disabled"
su -c "settings put global dropbox:system_server_watchdog disabled"
su -c "settings put global dropbox:system_server_crash disabled"
su -c "settings put global dropbox:system_server_native_crash disabled"
su -c "settings put global dropbox:system_server_lowmem disabled"
su -c "settings put global dropbox:system_app_crash disabled"
su -c "settings put global dropbox:system_app_anr disabled"
su -c "settings put global dropbox:storage_trim disabled"
su -c "settings put global dropbox:SYSTEM_AUDIT disabled"
su -c "settings put global dropbox:SYSTEM_BOOT disabled"
su -c "settings put global dropbox:SYSTEM_LAST_KMSG disabled"
su -c "settings put global dropbox:system_app_native_crash disabled"
su -c "settings put global dropbox:SYSTEM_TOMBSTONE disabled"
su -c "settings put global dropbox:SYSTEM_TOMBSTONE_PROTO disabled"
su -c "settings put global dropbox:data_app_native_crash disabled"
su -c "settings put global dropbox:SYSTEM_RESTART disabled"

sleep 69

dropbox=$(cat $MODDIR/dropbox)
if [ "${dropbox}" != "👌🏿" ] ; then
    echo "🖕🏿" > $MODDIR/dropbox
    # Establecer la ruta de la carpeta a procesar
    folder_path="/data/system/dropbox"
    # Crear el archivo XML
    xml_file="/storage/emulated/0/Dropbox-Lean.xml"
    echo "Dropbox Off?" >> $xml_file
    echo " " >> $xml_file
    echo "Files:" >> $xml_file

    # Recorrer los archivos de la carpeta y agregarlos al archivo XML
    for file in "$folder_path"/*; do
        if [ -f "$file" ]; then
            filename=$(basename "$file")
            echo "$filename" >> $xml_file
        fi
    done

    echo "" >> $xml_file
    echo "By @LeanHijosdesusMadres" >> $xml_file
    echo "@modulostk" >> $xml_file

    rm -r /data/system/dropbox/*
    echo "👌🏿" > $MODDIR/dropbox
fi

exit 0
