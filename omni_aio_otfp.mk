TARGET_BOOTANIMATION_SIZE := 1080x720

# Inherit from AOSP 64-bit support
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from AOSP product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit omni's custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Pull in GSM-specific stuff such as APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

# Call device specific makefile
$(call inherit-product, device/lenovo/aio_otfp/device.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := omni_aio_otfp
PRODUCT_DEVICE := aio_otfp
PRODUCT_BRAND := Lemon
PRODUCT_MODEL := K3 Note
PRODUCT_MANUFACTURER := Lenovo
PRODUCT_RESTRICT_VENDOR_FILES := false
