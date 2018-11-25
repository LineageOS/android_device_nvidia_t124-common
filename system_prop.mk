# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    af.resampler.quality=7 \
    af.fast_downmix=1 \
    media.aac_51_output_enabled=1 \
    ro.af.client_heap_size_kbyte=8192 \
    ro.audio.usb.period_us=5000

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196610 \
    persist.tegra.compositor=glcomposer

# Input
PRODUCT_PROPERTY_OVERRIDES += \
    ro.input.noresample=1

# WiFi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    ap.interface=wlan0 \
    persist.wlan.ti.calibrated=0
