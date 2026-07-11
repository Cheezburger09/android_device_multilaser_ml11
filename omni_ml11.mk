$(call inherit-product, vendor/omni/config/common.mk)

$(call inherit-product, device/multilaser/ml11/device.mk)

PRODUCT_DEVICE := ml11
PRODUCT_NAME := omni_ml11
PRODUCT_BRAND := Multilaser
PRODUCT_MODEL := ML11-M7sQuadCore
PRODUCT_MANUFACTURER := Multilaser

PRODUCT_RELEASE_NAME := ML11

PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.device=ml11 \
    ro.product.model=ML11-M7sQuadCore \
    ro.product.brand=Multilaser \
    ro.product.manufacturer=Multilaser
