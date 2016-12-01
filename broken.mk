# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from n1awifi device
$(call inherit-product, device/samsung/n1awifi/device.mk)

# Inherit some common broken stuff.
$(call inherit-product, vendor/broken/config/common_full_tablet_wifionly.mk)

PRODUCT_NAME := broken_n1awifi
PRODUCT_DEVICE := n1awifi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_MODEL=SM-P600 \
    PRODUCT_NAME=n1awifi \
    PRODUCT_DEVICE=n1awifi \
    TARGET_DEVICE=n1awifi

# Broken Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
	DEVICE_MAINTAINERS="Josh Wiley (Orion116)"
