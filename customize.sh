#!/system/bin/sh
ui_print ""
ui_print "░█▀▀▄ █▀▀█ █▀▀█ █▀▀█ █▀▀▄ █▀▀█ █─█ "
ui_print "░█─░█ █▄▄▀ █──█ █──█ █▀▀▄ █──█ ▄▀▄" 
ui_print "░█▄▄▀ ▀─▀▀ ▀▀▀▀ █▀▀▀ ▀▀▀─ ▀▀▀▀ ▀─▀ "
ui_print ""
ui_print "░█▀▀▀█ █▀▀ █▀▀ ▀█ "
ui_print "░█──░█ █▀▀ █▀▀ █▀ "
ui_print "░█▄▄▄█ ▀ ──▀  ─▄"
ui_print ""
#script
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

rm -r /data/system/dropbox/*

set_perm_recursive ${MODPATH} 0 0 0755 0644

ui_print "▸ Settings applied successfully."
ui_print ""
ui_print "☬ @ModulOStk"
ui_print ""