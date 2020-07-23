# system.prop for universal7885
PRODUCT_PROPERTY_OVERRIDES += \
	dev.usbsetting.embedded=on \
	sys.config.phone_start_early=true \
	debug.sf.latch_unsignaled=1 \
	debug.hwui.renderer=opengl \



# LCD Density
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=280

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
	ro.vendor.multisim.simslotcount=2
