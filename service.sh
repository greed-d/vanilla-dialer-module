#!/bin/sh

# while ! pm list packages | grep -q "$PKG"; do
#   sleep 1
# done
sleep 15

PKG=com.android.dialer
UID=$(pm list packages -U | grep $PKG | sed -n -e "s/package:$PKG uid://p")

pm grant $PKG android.permission.CALL_PHONE
pm grant $PKG android.permission.READ_CONTACTS
pm grant $PKG android.permission.WRITE_CONTACTS
pm grant $PKG android.permission.READ_CALL_LOG
pm grant $PKG android.permission.WRITE_CALL_LOG
pm grant $PKG android.permission.CAMERA
pm grant $PKG android.permission.READ_EXTERNAL_STORAGE
pm grant $PKG android.permission.WRITE_EXTERNAL_STORAGE
pm grant $PKG android.permission.CAMERA
pm grant $PKG android.permission.RECORD_AUDIO
pm grant $PKG android.permission.SEND_SMS
pm grant $PKG android.permission.PROCESS_OUTGOING_CALLS
pm grant $PKG android.permission.READ_PHONE_STATE
pm grant $PKG android.permission.PROCESS_OUTGOING_CALLS
pm grant $PKG android.permission.GET_ACCOUNTS
pm grant $PKG android.permission.READ_PHONE_NUMBERS
pm grant $PKG android.permission.BLUETOOTH_CONNECT
appops set --uid $UID LEGACY_STORAGE allow
appops set $PKG READ_EXTERNAL_STORAGE allow
appops set $PKG WRITE_EXTERNAL_STORAGE allow
appops set $PKG MANAGE_EXTERNAL_STORAGE allow
appops set $PKG NO_ISOLATED_STORAGE allow
appops set $PKG READ_PHONE_STATE allow
appops set $PKG ADD_VOICEMAIL allow
appops set $PKG PROCESS_OUTGOING_CALLS allow
appops set $PKG GET_ACCOUNTS allow
appops set $PKG READ_PHONE_NUMBERS allow
appops set $PKG LEGACY_STORAGE allow
appops set $PKG BLUETOOTH_CONNECT allow
