# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    af.resampler.quality=7 \
    af.fast_downmix=1 \
    media.aac_51_output_enabled=1 \
    ro.af.client_heap_size_kbyte=8192 \
    ro.audio.usb.period_us=5000

# Input
PRODUCT_PROPERTY_OVERRIDES += \
    ro.input.noresample=1
