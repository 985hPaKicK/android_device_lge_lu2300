#!/bin/sh

# Copyright (C) 2011 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

VENDOR=lge
DEVICE=lu2300

rm -rf ../../../vendor/$VENDOR/$DEVICE
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/app
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/etc
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/wl
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/wifi
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/dhcpcd
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/permissions
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/firmware
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/bluetooth
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/qsound
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/fonts
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/egl
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/hw
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/bluez-plugin
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/modules
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/usr
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/usr/keychars
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/usr/keylayout
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/media
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/media/camera
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary/media/camera/fw

# HAL
adb pull /system/lib/hw/lights.qsd8k.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/hw/lights.qsd8k.so
adb pull /system/lib/hw/copybit.qsd8k.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/hw/copybit.qsd8k.so
adb pull /system/lib/hw/gralloc.default.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/hw/gralloc.default.so
adb pull /system/lib/hw/gralloc.qsd8k.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/hw/gralloc.qsd8k.so
adb pull /system/lib/liblgosp-hal.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/liblgosp-hal.so

# 3D
adb pull /system/lib/egl/libEGL_adreno200.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/egl/libEGL_adreno200.so
adb pull /system/lib/egl/libGLESv1_CM_adreno200.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/egl/libGLESv1_CM_adreno200.so
adb pull /system/lib/egl/libq3dtools_adreno200.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/egl/libq3dtools_adreno200.so
adb pull /system/lib/egl/libGLESv2_adreno200.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/egl/libGLESv2_adreno200.so
adb pull /system/lib/egl/egl.cfg ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/egl/egl.cfg
adb pull /system/etc/firmware/yamato_pfp.fw ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/firmware/yamato_pfp.fw
adb pull /system/etc/firmware/yamato_pm4.fw ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/firmware/yamato_pm4.fw
adb pull /system/lib/libgsl.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libgsl.so

# Sensor
adb pull /system/bin/akmd2 ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/akmd2

# Wifi
adb pull /system/lib/modules/wireless.ko ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/modules/wireless.ko
adb pull /system/lib/libnetutils.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libnetutils.so
adb pull /system/etc/wl/nvram.txt ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/wl/nvram.txt
adb pull /system/etc/wl/rtecdc-apsta.bin ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/wl/rtecdc-apsta.bin
adb pull /system/etc/wl/rtecdc-mfgtest.bin ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/wl/rtecdc-mfgtest.bin
adb pull /system/etc/wl/rtecdc.bin ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/wl/rtecdc.bin
adb pull /system/etc/wifi/wpa_supplicant.conf ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/wifi/wpa_supplicant.conf
adb pull /system/etc/dhcpcd/dhcpcd.conf ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/dhcpcd/dhcpcd.conf
adb pull /system/bin/dhd ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/dhd
adb pull /system/bin/iperf ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/iperf
adb pull /system/bin/wl ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/wl

# Bluetoooth
adb pull /system/bin/BCM4325D1_004.002.004.0262.0275.hcd ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/BCM4325D1_004.002.004.0262.0275.hcd

# Camera
adb pull /system/media/camera/fw/CE14XF00.bin ../../../vendor/$VENDOR/$DEVICE/proprietary/media/camera/fw/CE14XF00.bin
adb pull /system/media/camera/fw/CE14XF01.bin ../../../vendor/$VENDOR/$DEVICE/proprietary/media/camera/fw/CE14XF01.bin
adb pull /system/media/camera/fw/CE14XF02.bin ../../../vendor/$VENDOR/$DEVICE/proprietary/media/camera/fw/CE14XF02.bin
adb pull /system/media/camera/fw/CE14XF03.bin ../../../vendor/$VENDOR/$DEVICE/proprietary/media/camera/fw/CE14XF03.bin
adb pull /system/lib/libmmipl.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libmmipl.so
adb pull /system/lib/libmmjpeg.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libmmjpeg.so
adb pull /system/lib/liboemcamera.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/liboemcamera.so
adb pull /system/lib/libcamera.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libcamera.so
adb pull /system/lib/libcamera_client.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/llibcamera_client.so
adb pull /system/lib/libcameraservice.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libcameraservice.so
adb pull /system/lib/libOlaCameraJNI.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libOlaCameraJNI.so
adb pull /system/lib/libOlaEngine.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libOlaEngine.so
adb pull /system/lib/libOlaFrameResource.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libOlaFrameResource.so
adb pull /system/lib/libOlaImageEditorJNI.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libOlaImageEditorJNI.so
adb pull /system/lib/libola_pixel_utils.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libola_pixel_utils.so

# QSOUND
adb pull /system/etc/qsound/mQ256-v44se.dls ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/qsound/mQ256-v44se.dls
adb pull /system/etc/qsound/mQ512-v44as.dls ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/qsound/mQ512-v44as.dls
adb pull /system/etc/qsound/mQ512-v44se.dls ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/qsound/mQ512-v44se.dls

# Permissions
adb pull /system/etc/permissions/android.software.live_wallpaper.xml ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/permissions/android.software.live_wallpaper.xml
adb pull /system/etc/permissions/com.nextreaming.AudioEffectManager.xml ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/permissions/com.nextreaming.AudioEffectManager.xml
adb pull /system/etc/permissions/com.nextreaming.NexSubtitle.xml ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/permissions/com.nextreaming.NexSubtitle.xml
adb pull /system/etc/permissions/com.qualcomm.location.vzw_library.xml ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/permissions/com.qualcomm.location.vzw_library.xml

# LGE services
adb pull /system/bin/qmuxd ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/qmuxd

# rmt_storage (What is this?)
adb pull /system/bin/rmt_storage ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/rmt_storage

# port-bridge (What is this?)
adb pull /system/bin/port-bridge ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/port-bridge

# wipeirface (What is this?)
adb pull /system/bin/wiperiface ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/wiperiface

# netmgr (What is this?)
adb pull /system/bin/netmgrd ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/netmgrd
adb pull /system/lib/libdsutils.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libdsutils.so
adb pull /system/lib/libnetmgr.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libnetmgr.so

# CKPD-daemon (What is this?)
adb pull /system/bin/CKPD-daemon ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/CKPD-daemon

# RIL
adb pull /system/lib/libril.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libril.so
adb pull /system/lib/libril-qc-1.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libril-qc-1.so
adb pull /system/lib/libril-qcril-hook-oem.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libril-qcril-hook-oem.so
adb pull /system/lib/liboncrpc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/liboncrpc.so
adb pull /system/lib/libpbmlib.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libpbmlib.so
adb pull /system/lib/libpdapi.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libpdapi.so
adb pull /system/lib/libpdsm_atl.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libpdsm_atl.so
adb pull /system/lib/libqueue.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libqueue.so
adb pull /system/lib/libnv.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libnv.so
adb pull /system/lib/liboem_rapi.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/liboem_rapi.so
adb pull /system/lib/libdsm.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libdsm.so
adb pull /system/lib/libdiag.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libdiag.so
adb pull /system/lib/libauth.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libauth.so
adb pull /system/lib/libcm.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libcm.so
adb pull /system/lib/libwms.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libwms.so
adb pull /system/lib/libwmsts.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libwmsts.so
adb pull /system/lib/libmmgsdilib.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libmmgsdilib.so
adb pull /system/lib/libgsdi_exp.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libgsdi_exp.so
adb pull /system/lib/libgstk_exp.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libgstk_exp.so
adb pull /system/lib/libqmi.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libqmi.so
adb pull /system/lib/libdll.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libdll.so
adb pull /system/lib/libbcmwl.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libbcmwl.so
adb pull /system/lib/libdss.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libdss.so
adb pull /system/lib/libqcomm_omx.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libqcomm_omx.so
adb pull /system/lib/libping_apps.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libping_apps.so
adb pull /system/lib/libping_mdm.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libping_mdm.so
adb pull /system/lib/libhardware_legacy.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libhardware_legacy.so
adb pull /system/lib/libloc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libloc.so
adb pull /system/lib/libloc-rpc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libloc-rpc.so
adb pull /system/lib/libcommondefs.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libcommondefs.so
adb pull /system/bin/rild ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/rild

# NEXTREAMING
adb pull /system/lib/libnextreaming_divx_drm16_service.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libnextreaming_divx_drm16_service.so
adb pull /system/lib/libnextreaming_drm16.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libnextreaming_drm16.so
adb pull /system/lib/libnextreaming_source_node.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libnextreaming_source_node.so
adb pull /system/lib/libnextreaming_source_node_reg.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libnextreaming_source_node_reg.so
adb pull /system/lib/libnextreaming_subtitle_jni.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libnextreaming_subtitle_jni.so
adb pull /system/lib/libomx_nextreaming_ac3dec_sharedlibrary.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libomx_nextreaming_ac3dec_sharedlibrary.so
adb pull /system/lib/libomx_nextreaming_bsacdec_sharedlibrary.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libomx_nextreaming_bsacdec_sharedlibrary.so
adb pull /system/lib/libomx_nextreaming_divxdec_sharedlibrary.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libomx_nextreaming_divxdec_sharedlibrary.so
adb pull /system/lib/libomx_nextreaming_musicamdec_sharedlibrary.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libomx_nextreaming_musicamdec_sharedlibrary.so
adb pull /system/lib/libomx_nextreaming_wmadec_sharedlibrary.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libomx_nextreaming_wmadec_sharedlibrary.so
adb pull /system/lib/libomx_nextreaming_wmvdec_sharedlibrary.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libomx_nextreaming_wmvdec_sharedlibrary.so

# OMX
adb pull /system/lib/libOmxAacDec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libOmxAacDec.so
adb pull /system/lib/libOmxAacEnc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libOmxAacEnc.so
adb pull /system/lib/libOmxAmrEnc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libOmxAmrEnc.so
adb pull /system/lib/libOmxEvrcDec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libOmxEvrcDec.so
adb pull /system/lib/libOmxEvrcEnc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libOmxEvrcEnc.so
adb pull /system/lib/libOmxMp3Dec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libOmxMp3Dec.so
adb pull /system/lib/libOmxQcelp13Dec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libOmxQcelp13Dec.so
adb pull /system/lib/libOmxQcelp13Enc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libOmxQcelp13Enc.so
adb pull /system/lib/libOmxVidEnc.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libOmxVidEnc.so
adb pull /system/lib/libOmxVdec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libOmxVdec.so
adb pull /system/lib/libOmxCore.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libOmxCore.so

# OMX sharedlib
adb pull /system/lib/libomx_sharedlibrary.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libomx_sharedlibrary.so
adb pull /system/lib/libomx_aacdec_sharedlibrary.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libomx_aacdec_sharedlibrary.so
adb pull /system/lib/libomx_amrdec_sharedlibrary.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libomx_amrdec_sharedlibrary.so
adb pull /system/lib/libomx_amrenc_sharedlibrary.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libomx_amrenc_sharedlibrary.so
adb pull /system/lib/libomx_avcdec_sharedlibrary.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libomx_avcdec_sharedlibrary.so
adb pull /system/lib/libomx_m4vdec_sharedlibrary.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libomx_m4vdec_sharedlibrary.so
adb pull /system/lib/libomx_mp3dec_sharedlibrary.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libomx_mp3dec_sharedlibrary.so

# MM
adb pull /system/lib/libmm-omxcore.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libmm-omxcore.so

# OMX BIN
adb pull /system/bin/mm-abl-test ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/mm-abl-test
adb pull /system/bin/mm-adec-omxaac-test ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/mm-adec-omxaac-test
adb pull /system/bin/mm-adec-omxevrc-test ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/mm-adec-omxevrc-test
adb pull /system/bin/mm-adec-omxmp3-test ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/mm-adec-omxmp3-test
adb pull /system/bin/mm-adec-omxQcelp13-test ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/mm-adec-omxQcelp13-test
adb pull /system/bin/mm-aenc-omxaac-test ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/mm-aenc-omxaac-test
adb pull /system/bin/mm-aenc-omxamr-test ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/mm-aenc-omxamr-test
adb pull /system/bin/mm-aenc-omxevrc-test ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/mm-aenc-omxevrc-test
adb pull /system/bin/mm-audio-native-test ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/mm-audio-native-test
adb pull /system/bin/mm-jpeg-dec-test ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/mm-jpeg-dec-test
adb pull /system/bin/mm-jpeg-enc-test ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/mm-jpeg-enc-test
adb pull /system/bin/mm-qcamera-test ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/mm-qcamera-test
adb pull /system/bin/mm-qcamera-testsuite-client ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/mm-qcamera-testsuite-client
adb pull /system/bin/mm-vdec-omx-property-mgr ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/mm-vdec-omx-property-mgr
adb pull /system/bin/mm-venc-omx-test ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/mm-venc-omx-test
adb pull /system/bin/mm-vdec-omx-test ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/mm-vdec-omx-test

# Opencore
adb pull /system/lib/libopencorehw.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libopencore_author.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libopencore_common.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libopencore_downloadreg.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libopencore_download.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libopencore_mp4localreg.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libopencore_mp4local.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libopencore_net_support.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libopencore_player.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libopencore_rtspreg.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib
adb pull /system/lib/libopencore_rtsp.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib

# Q3 LIB ?
adb pull /system/lib/libq3di32.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libq3di32.so
adb pull /system/lib/libqchain32.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libqchain32.so
adb pull /system/lib/libqnr32.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libqnr32.so
adb pull /system/lib/libmqcore32.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libmqcore32.so

# DioDict
adb pull /system/app/DioDict.apk ../../../vendor/$VENDOR/$DEVICE/proprietary/app/DioDict.apk
adb pull /system/lib/libDioDictEngineNative.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libDioDictEngineNative.so
adb pull /system/lib/libdhwr.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libdhwr.so
adb pull /system/lib/libpowertts-jni.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libpowertts-jni.so

# Key
adb pull /system/usr/keychars/lgosp-hid.kcm.bin ../../../vendor/$VENDOR/$DEVICE/proprietary/usr/keychars/lgosp-hid.kcm.bin
adb pull /system/usr/keychars/pp2106_qwerty.kcm.bin ../../../vendor/$VENDOR/$DEVICE/proprietary/usr/keychars/pp2106_qwerty.kcm.bin
adb pull /system/usr/keychars/surf_keypad.kcm.bin ../../../vendor/$VENDOR/$DEVICE/proprietary/usr/keychars/surf_keypad.kcm.bin
adb pull /system/usr/keychars/synaptics-rmi-touchscreen.kcm.bin ../../../vendor/$VENDOR/$DEVICE/proprietary/usr/keychars/synaptics-rmi-touchscreen.kcm.bin
adb pull /system/usr/keylayout/8k_handset.kl ../../../vendor/$VENDOR/$DEVICE/proprietary/usr/keylayout/8k_handset.kl
adb pull /system/usr/keylayout/lgosp-hid.kl ../../../vendor/$VENDOR/$DEVICE/proprietary/usr/keylayout/lgosp-hid.kl
adb pull /system/usr/keylayout/surf_keypad.kl ../../../vendor/$VENDOR/$DEVICE/proprietary/usr/keylayout/surf_keypad.kl
adb pull /system/usr/keylayout/synaptics-rmi-touchscreen.kl ../../../vendor/$VENDOR/$DEVICE/proprietary/usr/keylayout/synaptics-rmi-touchscreen.kl
adb pull /system/usr/keylayout/AVRCP.kl ../../../vendor/$VENDOR/$DEVICE/proprietary/usr/keylayout/AVRCP.kl

# Hangul IME
adb pull /system/lib/libHangulCore.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libHangulCore.so

# Message
adb pull /system/app/Message.apk ../../../vendor/$VENDOR/$DEVICE/proprietary/app/Message.apk
adb pull /system/fonts/LG_Android_SMS.ttf ../../../vendor/$VENDOR/$DEVICE/proprietary/fonts/LG_Android_SMS.ttf

# TDMB
adb pull /system/bin/TdmbDiag ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/TdmbDiag
adb pull /system/app/TDMB.apk ../../../vendor/$VENDOR/$DEVICE/proprietary/app/TDMB.apk

# Etc
adb pull /system/etc/01_qcomm_omx.cfg ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/01_qcomm_omx.cfg
adb pull /system/etc/vold.fstab ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/vold.fstab
adb pull /system/etc/apns-conf.xml ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/apns-conf.xml
adb pull /system/etc/pvplayer.cfg ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/pvplayer.cfg
adb pull /system/etc/init.qcom.bt.sh ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/init.qcom.bt.sh
adb pull /system/etc/init.qcom.coex.sh ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/init.qcom.coex.sh
adb pull /system/etc/init.qcom.fm.sh ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/init.qcom.fm.sh
adb pull /system/etc/init.qcom.post_boot.sh ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/init.qcom.post_boot.sh
adb pull /system/etc/init.qcom.sdio.sh ../../../vendor/$VENDOR/$DEVICE/proprietary/etc/init.qcom.sdio.sh

# LG OSP
adb pull /system/bin/lgospd_hid ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/lgospd_hid
adb pull /system/bin/lgospd ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/lgospd
adb pull /system/lib/liblgosp.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/liblgosp.so
adb pull /system/lib/modules/lgosp-hid.ko ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/modules/lgosp-hid.ko

# LGE LIB
adb pull /system/lib/liblgedrmutil.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/liblgedrmutil.so
adb pull /system/lib/liblge_modem_apis.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/liblge_modem_apis.so
adb pull /system/lib/liblgerft.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/liblgerft.so
adb pull /system/lib/liblgt_browser.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/liblgt_browser.so
adb pull /system/lib/liblgt_downloader.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/liblgt_downloader.so
adb pull /system/lib/liblgtomadrm.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/liblgtomadrm.so
adb pull /system/lib/libbroadcast_frame.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libbroadcast_frame.so
adb pull /system/lib/libbroadcast_service.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libbroadcast_service.so
adb pull /system/lib/liblgt_system.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/liblgt_system.so

# LGE BIN
adb pull /system/bin/libbroadcast_server ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/libbroadcast_server

# LGE ETC LIB
adb pull /system/lib/libPowerDSR.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libPowerDSR.so
adb pull /system/lib/libdrmlinker.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libdrmlinker.so
adb pull /system/lib/libdslgapi.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libdslgapi.so
adb pull /system/lib/libdsprofile.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libdsprofile.so
adb pull /system/lib/libdigicapsdrm.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libdigicapsdrm.so
adb pull /system/lib/libdigicapsdrm_rec.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libdigicapsdrm_rec.so
adb pull /system/lib/libARMPlatform.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libARMPlatform.so
adb pull /system/lib/libARMService.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libARMService.so
adb pull /system/lib/libsis20plus.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libsis20plus.so
adb pull /system/lib/libsis20plus_LGEdrv.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libsis20plus_LGEdrv.so
adb pull /system/lib/libgcnative.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libgcnative.so
adb pull /system/lib/libimsservice.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libimsservice.so
adb pull /system/lib/libmlobex.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libmlobex.so
adb pull /system/lib/libmm-abl.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libmm-abl.so
adb pull /system/lib/libwiperjni.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libwiperjni.so
adb pull /system/lib/libstagefrighthw.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libstagefrighthw.so
adb pull /system/lib/libuvcm_jni.so ../../../vendor/$VENDOR/$DEVICE/proprietary/lib/libuvcm_jni.so

# LGE ETC BIN
adb pull /system/bin/diag_klog ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/diag_klog
adb pull /system/bin/diag_mdlog ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/diag_mdlog
adb pull /system/bin/handset-keypress ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/handset-keypress
adb pull /system/bin/nl_listener ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/nl_listener
adb pull /system/bin/rft ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/rft
adb pull /system/bin/rft.sh ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/rft.sh
adb pull /system/bin/mtc ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/mtc
adb pull /system/bin/eta ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/eta
adb pull /system/bin/event_monitor ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/event_monitor
adb pull /system/bin/PktRspTest ../../../vendor/$VENDOR/$DEVICE/proprietary/bin/PktRspTest
adb pull /system/bin/lgesystemd ../../../vendor/$VENDOR/$DEVICE/proprietary/bin
adb pull /system/bin/lgesystemd_boot ../../../vendor/$VENDOR/$DEVICE/proprietary/bin

# LGE APPS
adb pull /system/app/AndroidBrowser.apk ../../../vendor/$VENDOR/$DEVICE/proprietary/app/AndroidBrowser.apk
adb pull /system/app/AndroidDownloader.apk ../../../vendor/$VENDOR/$DEVICE/proprietary/app/AndroidDownloader.apk
adb pull /system/app/CommonService.apk ../../../vendor/$VENDOR/$DEVICE/proprietary/app/CommonService.apk
adb pull /system/app/ImsProvider.apk ../../../vendor/$VENDOR/$DEVICE/proprietary/app/ImsProvider.apk
adb pull /system/app/ContentsManager.apk ../../../vendor/$VENDOR/$DEVICE/proprietary/app/ContentsManager.apk
adb pull /system/app/HiddenMenuKorea.apk ../../../vendor/$VENDOR/$DEVICE/proprietary/app/HiddenMenuKorea.apk
adb pull /system/app/LGCommon.apk ../../../vendor/$VENDOR/$DEVICE/proprietary/app/LGCommon.apk
adb pull /system/app/LGTARMService.apk ../../../vendor/$VENDOR/$DEVICE/proprietary/app/LGTARMService.apk
adb pull /system/app/LGTService.apk ../../../vendor/$VENDOR/$DEVICE/proprietary/app/LGTService.apk
adb pull /system/app/LGTServiceProvider.apk ../../../vendor/$VENDOR/$DEVICE/proprietary/app/LGTServiceProvider.apk
adb pull /system/app/LGVideoPlayer.apk ../../../vendor/$VENDOR/$DEVICE/proprietary/app/LGVideoPlayer.apk
adb pull /system/app/OZStore.apk ../../../vendor/$VENDOR/$DEVICE/proprietary/app/OZStore.apk
adb pull /system/app/WipiPlayer.apk ../../../vendor/$VENDOR/$DEVICE/proprietary/app/WipiPlayer.apk
adb pull /system/app/LGOnScreenPhone.apk ../../../vendor/$VENDOR/$DEVICE/proprietary/app/LGOnScreenPhone.apk
