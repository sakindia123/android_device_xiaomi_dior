LOCAL_PATH:= $(call my-dir)

ifeq ($(strip $(BOARD_HAS_QCOM_WLAN)),true)

# Make a symlink for WiFi firmware
#Create symbolic links
$(shell mkdir -p $(TARGET_OUT_ETC)/firmware/wlan/prima; \
        ln -sf /data/misc/wifi/WCNSS_qcom_cfg.ini \
        $(TARGET_OUT_ETC)/firmware/wlan/prima/WCNSS_qcom_cfg.ini)

endif
