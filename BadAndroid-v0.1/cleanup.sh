#!/system/bin/sh

BADANDROID_DIR=/data/local/tmp/badandroid
busybox killall dnsmasq
busybox umount /sys/class/android_usb/
busybox umount /sys/devices/virtual/android_usb/
busybox umount $BADANDROID_DIR/sys_class_android_usb/
busybox umount $BADANDROID_DIR/sys_devices_virtual_android_usb/
busybox rm -r $BADANDROID_DIR

echo 0 > /sys/class/android_usb/android0/enable
echo mtp,adb > /sys/class/android_usb/android0/functions
echo 1 > /sys/class/android_usb/android0/enable