# Release name
PRODUCT_RELEASE_NAME := nabi2_xd

# Boot animation
TARGET_SCREEN_HEIGHT := 1366
TARGET_SCREEN_WIDTH := 768

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/FUHU_INC/nabi2_xd/full_nabi2_xd.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := nabi2_xd
PRODUCT_NAME := vanir_nabi2_xd
PRODUCT_BRAND := nabi
PRODUCT_MODEL := nabi2_xd
PRODUCT_MANUFACTURER := FUHU_INC

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nabi2_xd BUILD_FINGERPRINT="nabi/NV10A/nabi2_xd:4.4.4/KTU84L/USA:user/test-keys" PRIVATE_BUILD_DESC="nabi_xd_custom-user 4.4.3 KTU84L 1148727 test-keys"
