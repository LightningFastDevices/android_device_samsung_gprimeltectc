#Inherit from vendor
$(call inherit-product-if-exists, vendor/samsung/gprimeltezt/gprimeltezt-vendor.mk)

# Inherit from common
BOARD_NFC_CHIPSET := pn547
$(call inherit-product, device/samsung/gprimelte-common/device-common.mk)

LOCAL_PATH := device/samsung/gprimeltezt

# System properties
-include $(LOCAL_PATH)/system_prop.mk

# Common overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/gprimeltezt/overlay

#NFC
NXP_CHIP_TYPE := 1
PRODUCT_PACKAGES += \
	nfc_nci.pn54x.msm8916
