LOCAL_PATH := device/multilaser/ml11

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery.fstab:recovery/root/etc/recovery.fstab

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.ml11.rc:root/init.ml11.rc

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=160 \
    ro.product.model=ML11-M7sQuadCore \
    ro.product.brand=Multilaser \
    ro.product.device=ML11-M7sQuadCore \
    ro.product.name=ML11-M7sQuadCore \
    ro.product.manufacturer=Multilaser

PRODUCT_PACKAGES += \
    lights.polaris \
    audio.primary.polaris \
    camera.polaris \
    sensors.polaris
