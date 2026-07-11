LOCAL_PATH := device/multilaser/ml11

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/recovery.fstab:recovery/root/etc/recovery.fstab \
    $(LOCAL_PATH)/rootdir/init.recovery.sun8i.rc:root/init.recovery.sun8i.rc \
    $(LOCAL_PATH)/rootdir/init.sun8i.rc:root/init.sun8i.rc \
    $(LOCAL_PATH)/rootdir/init.rc:root/init.rc \
    $(LOCAL_PATH)/rootdir/ueventd.rc:root/ueventd.rc \
    $(LOCAL_PATH)/rootdir/ueventd.sun8i.rc:root/ueventd.sun8i.rc \
    $(LOCAL_PATH)/prebuilt/kernel:kernel

PRODUCT_PACKAGES += \
    charger \
    charger_res_images

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.secure=0 \
    ro.adb.secure=0 \
    ro.debuggable=1 \
    persist.sys.usb.config=mtp,adb

PRODUCT_CHARACTERISTICS := tablet
