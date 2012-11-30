/* Copyright (c) 2009, Code Aurora Forum. All rights reserved.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 2 and
 * only version 2 as published by the Free Software Foundation.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
 * 02110-1301, USA.
 *
 */

#ifndef __LINUX_MSM_CAMERA_H
#define __LINUX_MSM_CAMERA_H

#ifdef MSM_CAMERA_BIONIC
#include <sys/types.h>
#endif
#include <linux/types.h>
#include <asm/sizes.h>
#include <linux/ioctl.h>
#ifdef MSM_CAMERA_GCC
#include <time.h>
#else
#include <linux/time.h>
#endif

#define MSM_CAM_IOCTL_MAGIC 'm'

#define MSM_CAM_IOCTL_GET_SENSOR_INFO \
	_IOR(MSM_CAM_IOCTL_MAGIC, 1, struct msm_camsensor_info *)

#define MSM_CAM_IOCTL_REGISTER_PMEM \
	_IOW(MSM_CAM_IOCTL_MAGIC, 2, struct msm_pmem_info *)

#define MSM_CAM_IOCTL_UNREGISTER_PMEM \
	_IOW(MSM_CAM_IOCTL_MAGIC, 3, unsigned)

#define MSM_CAM_IOCTL_CTRL_COMMAND \
	_IOW(MSM_CAM_IOCTL_MAGIC, 4, struct msm_ctrl_cmd *)

#define MSM_CAM_IOCTL_CONFIG_VFE  \
	_IOW(MSM_CAM_IOCTL_MAGIC, 5, struct msm_camera_vfe_cfg_cmd *)

#define MSM_CAM_IOCTL_GET_STATS \
	_IOR(MSM_CAM_IOCTL_MAGIC, 6, struct msm_camera_stats_event_ctrl *)

#define MSM_CAM_IOCTL_GETFRAME \
	_IOR(MSM_CAM_IOCTL_MAGIC, 7, struct msm_camera_get_frame *)

#define MSM_CAM_IOCTL_ENABLE_VFE \
	_IOW(MSM_CAM_IOCTL_MAGIC, 8, struct camera_enable_cmd *)

#define MSM_CAM_IOCTL_CTRL_CMD_DONE \
	_IOW(MSM_CAM_IOCTL_MAGIC, 9, struct camera_cmd *)

#define MSM_CAM_IOCTL_CONFIG_CMD \
	_IOW(MSM_CAM_IOCTL_MAGIC, 10, struct camera_cmd *)

#define MSM_CAM_IOCTL_DISABLE_VFE \
	_IOW(MSM_CAM_IOCTL_MAGIC, 11, struct camera_enable_cmd *)

#define MSM_CAM_IOCTL_PAD_REG_RESET2 \
	_IOW(MSM_CAM_IOCTL_MAGIC, 12, struct camera_enable_cmd *)

#define MSM_CAM_IOCTL_VFE_APPS_RESET \
	_IOW(MSM_CAM_IOCTL_MAGIC, 13, struct camera_enable_cmd *)

#define MSM_CAM_IOCTL_RELEASE_FRAME_BUFFER \
	_IOW(MSM_CAM_IOCTL_MAGIC, 14, struct camera_enable_cmd *)

#define MSM_CAM_IOCTL_RELEASE_STATS_BUFFER \
	_IOW(MSM_CAM_IOCTL_MAGIC, 15, struct msm_stats_buf *)

#define MSM_CAM_IOCTL_AXI_CONFIG \
	_IOW(MSM_CAM_IOCTL_MAGIC, 16, struct msm_camera_vfe_cfg_cmd *)

#define MSM_CAM_IOCTL_GET_PICTURE \
	_IOW(MSM_CAM_IOCTL_MAGIC, 17, struct msm_camera_ctrl_cmd *)

#define MSM_CAM_IOCTL_SET_CROP \
	_IOW(MSM_CAM_IOCTL_MAGIC, 18, struct crop_info *)

#define MSM_CAM_IOCTL_PICT_PP \
	_IOW(MSM_CAM_IOCTL_MAGIC, 19, uint8_t *)

#define MSM_CAM_IOCTL_PICT_PP_DONE \
	_IOW(MSM_CAM_IOCTL_MAGIC, 20, struct msm_snapshot_pp_status *)

#define MSM_CAM_IOCTL_SENSOR_IO_CFG \
	_IOW(MSM_CAM_IOCTL_MAGIC, 21, struct sensor_cfg_data *)

#define MSM_CAMERA_LED_OFF  0
#define MSM_CAMERA_LED_LOW  1
#define MSM_CAMERA_LED_HIGH 2

#define MSM_CAM_IOCTL_FLASH_LED_CFG \
	_IOW(MSM_CAM_IOCTL_MAGIC, 22, unsigned *)

#define MSM_CAM_IOCTL_UNBLOCK_POLL_FRAME \
	_IO(MSM_CAM_IOCTL_MAGIC, 23)

#define MSM_CAM_IOCTL_CTRL_COMMAND_2 \
	_IOW(MSM_CAM_IOCTL_MAGIC, 24, struct msm_ctrl_cmd *)

#define MSM_CAM_IOCTL_AF_CTRL \
	_IOR(MSM_CAM_IOCTL_MAGIC, 25, struct msm_ctrl_cmt_t *)
#define MSM_CAM_IOCTL_AF_CTRL_DONE \
	_IOW(MSM_CAM_IOCTL_MAGIC, 26, struct msm_ctrl_cmt_t *)

#define MAX_SENSOR_NUM  3
#define MAX_SENSOR_NAME 32

#define PP_SNAP  0x01
#define PP_RAW_SNAP ((0x01)<<1)
#define PP_PREV  ((0x01)<<2)
#define PP_MASK		(PP_SNAP|PP_RAW_SNAP|PP_PREV)

enum msm_camera_update {
	MSM_CAM_CTRL_CMD_DONE,
	MSM_CAM_SENSOR_VFE_CMD,
};

#define MSM_CAM_CTRL_CMD_DONE  0
#define MSM_CAM_SENSOR_VFE_CMD 1

/*****************************************************
 *  structure
 *****************************************************/

/* define five type of structures for userspace <==> kernel
 * space communication:
 * command 1 - 2 are from userspace ==> kernel
 * command 3 - 4 are from kernel ==> userspace
 *
 * 1. control command: control command(from control thread),
 *                     control status (from config thread);
 */
struct msm_ctrl_cmd {
	uint16_t type;
	uint16_t length;
	void *value;
	uint16_t status;
	uint32_t timeout_ms;
	int resp_fd; /* FIXME: to be used by the kernel, pass-through for now */
};

struct msm_vfe_evt_msg {
	unsigned short type;	/* 1 == event (RPC), 0 == message (adsp) */
	unsigned short msg_id;
	unsigned int len;	/* size in, number of bytes out */
	void *data;
};
enum msm_camera_resp {
	MSM_CAM_RESP_CTRL,
	MSM_CAM_RESP_STAT_EVT_MSG,
	MSM_CAM_RESP_V4L2,

	MSM_CAM_RESP_MAX
};
/* this one is used to send ctrl/status up to config thread */
struct msm_stats_event_ctrl {
	/* 0 - ctrl_cmd from control thread,
	 * 1 - stats/event kernel,
	 * 2 - V4L control or read request */
	int resptype;
	int timeout_ms;
	struct msm_ctrl_cmd ctrl_cmd;
	/* struct  vfe_event_t  stats_event; */
	struct msm_vfe_evt_msg stats_event;
};

/* 2. config command: config command(from config thread); */
struct msm_camera_cfg_cmd {
	/* what to config:
	 * 1 - sensor config, 2 - vfe config */
	uint16_t cfg_type;

	/* sensor config type */
	uint16_t cmd_type;
	uint16_t queue;
	uint16_t length;
	void *value;
};
enum cfg_cmd_type {
	CMD_GENERAL,
	CMD_AXI_CFG_OUT1,
	CMD_AXI_CFG_SNAP_O1_AND_O2,
	CMD_AXI_CFG_OUT2,
	CMD_PICT_T_AXI_CFG,
	CMD_PICT_M_AXI_CFG,
	CMD_RAW_PICT_AXI_CFG,

	CMD_FRAME_BUF_RELEASE,
	CMD_PREV_BUF_CFG,
	CMD_SNAP_BUF_RELEASE,
	CMD_SNAP_BUF_CFG,
	CMD_STATS_DISABLE,
	CMD_STATS_AEC_AWB_ENABLE,
	CMD_STATS_AF_ENABLE,
	CMD_STATS_AEC_ENABLE,
	CMD_STATS_AWB_ENABLE,
	CMD_STATS_ENABLE,

	CMD_STATS_AXI_CFG,
	CMD_STATS_AEC_AXI_CFG,
	CMD_STATS_AF_AXI_CFG,
	CMD_STATS_AWB_AXI_CFG,
	CMD_STATS_RS_AXI_CFG,
	CMD_STATS_CS_AXI_CFG,
	CMD_STATS_IHIST_AXI_CFG,
	CMD_STATS_SKIN_AXI_CFG,

	CMD_STATS_BUF_RELEASE,
	CMD_STATS_AEC_BUF_RELEASE,
	CMD_STATS_AF_BUF_RELEASE,
	CMD_STATS_AWB_BUF_RELEASE,
	CMD_STATS_RS_BUF_RELEASE,
	CMD_STATS_CS_BUF_RELEASE,
	CMD_STATS_IHIST_BUF_RELEASE,
	CMD_STATS_SKIN_BUF_RELEASE,

	UPDATE_STATS_INVALID	,
	CMD_AXI_CFG_SNAP_GEMINI	,
	CMD_AXI_CFG_SNAP,
	CMD_AXI_CFG_PREVIEW	,
	CMD_AXI_CFG_VIDEO ,
    CMD_STATS_IHIST_ENABLE,
	CMD_STATS_RS_ENABLE,
	CMD_STATS_CS_ENABLE
};

/* vfe config command: config command(from config thread)*/
struct msm_vfe_cfg_cmd {
	int cmd_type;
	uint16_t length;
	void *value;
};

#define MAX_CAMERA_ENABLE_NAME_LEN 32
struct camera_enable_cmd {
	char name[MAX_CAMERA_ENABLE_NAME_LEN];
};
enum msm_pmem {
	MSM_PMEM_OUTPUT1,
	MSM_PMEM_OUTPUT2,
	MSM_PMEM_OUTPUT1_OUTPUT2,
	MSM_PMEM_THUMBNAIL,
	MSM_PMEM_MAINIMG,
	MSM_PMEM_RAW_MAINIMG,
	MSM_PMEM_AEC_AWB,
	MSM_PMEM_AF,
	MSM_PMEM_AEC,
	MSM_PMEM_AWB,
	MSM_PMEM_RS,
	MSM_PMEM_CS,
	MSM_PMEM_IHIST,
	MSM_PMEM_SKIN,
	MSM_PMEM_VIDEO,
	MSM_PMEM_PREVIEW,
	MSM_PMEM_MAX
};

enum msm_camera_out_frame {
	FRAME_PREVIEW_OUTPUT1,
	FRAME_PREVIEW_OUTPUT2,
	FRAME_SNAPSHOT,
	FRAME_THUMBNAIL,
	FRAME_RAW_SNAPSHOT,
	FRAME_MAX
};
struct msm_pmem_info {
	int type;
	int fd;
	void *vaddr;
	uint32_t offset;
	uint32_t len;
	uint32_t y_off;
	uint32_t cbcr_off;
	uint8_t active;
};

struct outputCfg {
	uint32_t height;
	uint32_t width;

	uint32_t window_height_firstline;
	uint32_t window_height_lastline;
};
enum vfeoutput_mode {
	OUTPUT_1,
	OUTPUT_2,
	OUTPUT_1_AND_2,            /* snapshot only */
	OUTPUT_1_AND_3,            /* video */
	CAMIF_TO_AXI_VIA_OUTPUT_2,
	OUTPUT_1_AND_CAMIF_TO_AXI_VIA_OUTPUT_2,
	OUTPUT_2_AND_CAMIF_TO_AXI_VIA_OUTPUT_1,
	LAST_AXI_OUTPUT_MODE_ENUM = OUTPUT_2_AND_CAMIF_TO_AXI_VIA_OUTPUT_1
};

enum msm_frame_path {
	MSM_FRAME_PREV_1,
	MSM_FRAME_PREV_2,
	MSM_FRAME_ENC,
};

enum output_type {
	OUTPUT_TYPE_NONE,
	OUTPUT_TYPE_P,
	OUTPUT_TYPE_T,
	OUTPUT_TYPE_S,
	OUTPUT_TYPE_V,
	OUTPUT_TYPE_MAX
};

struct msm_frame {
	struct timespec ts;
	int path;
	unsigned long buffer;
	uint32_t y_off;
	uint32_t cbcr_off;
	int fd;

	void *cropinfo;
	int croplen;
};

enum stat_type {
	STAT_AEAW,
	STAT_AEC,
	STAT_AF,
	STAT_AWB,
	STAT_RS,
	STAT_CS	,
	STAT_IHIST,
	STAT_SKIN,
	STAT_MAX
};

struct msm_stats_buf {
	int type;
	unsigned long buffer;
	int fd;
};

enum msm_v4l2_ctrl {
	MSM_V4L2_VID_CAP_TYPE,
	MSM_V4L2_STREAM_ON,
	MSM_V4L2_STREAM_OFF,
	MSM_V4L2_SNAPSHOT,
	MSM_V4L2_QUERY_CTRL,
	MSM_V4L2_GET_CTRL,
	MSM_V4L2_SET_CTRL,
	MSM_V4L2_QUERY,
    MSM_V4L2_GET_CROP,
    MSM_V4L2_SET_CROP,
	MSM_V4L2_MAX
};

#define V4L2_CAMERA_EXIT 	43
struct crop_info {
	void *info;
	int len;
};

struct msm_postproc {
	int ftnum;
	struct msm_frame fthumnail;
	int fmnum;
	struct msm_frame fmain;
};

struct msm_snapshot_pp_status {
	void *status;
};

enum sensor_cfg {
	CFG_SET_MODE,
	CFG_SET_EFFECT,
	CFG_START,
	CFG_PWR_UP,
	CFG_PWR_DOWN,
	CFG_WRITE_EXPOSURE_GAIN,
	CFG_SET_DEFAULT_FOCUS,
	CFG_MOVE_FOCUS,
	CFG_REGISTER_TO_REAL_GAIN,
	CFG_REAL_TO_REGISTER_GAIN,
	CFG_SET_FPS,
	CFG_SET_PICT_FPS,
	CFG_SET_BRIGHTNESS,
	CFG_SET_CONTRAST,
	CFG_SET_ZOOM,
	CFG_SET_EXPOSURE_MODE,
	CFG_SET_WB,
	CFG_SET_ANTIBANDING,
	CFG_SET_EXP_GAIN,
	CFG_SET_PICT_EXP_GAIN,
	CFG_SET_LENS_SHADING,

	CFG_GET_PICT_FPS,
	CFG_GET_PREV_L_PF,
	CFG_GET_PREV_P_PL,
	CFG_GET_PICT_L_PF,
	CFG_GET_PICT_P_PL,
    CFG_GET_AF_MAX_STEPS,
	CFG_GET_PICT_MAX_EXP_LC,
	CFG_SEND_WB_INFO,

    CFG_SET_ISO,
    CFG_SET_IMAGE_QUALITY,
    CFG_SET_SCENE_MODE,
    CFG_SET_ANTI_SHAKING,
	CFG_SET_BLINK_DETECTION, 
	CFG_SET_SMILE_DETECTION,  
    CFG_SET_NIGHT_MODE,		
    CFG_SET_AUTO_MODE,		    
    CFG_SET_ORIENTATION,
    CFG_SET_EXPOSURE_VALUE,
    CFG_SET_FLASH_MODE,
    CFG_SET_MACRO,
    CFG_GET_JPG_IMAGE_SIZE,
	CFG_GET_ASD_MODE,
    CFG_SET_FLICKER,
	CFG_SET_FOCUS_MODE,
	CFG_START_AUTO_FOCUS,
	CFG_CHECK_AUTO_FOCUS,
	CFG_STOP_AUTO_FOCUS,
	CFG_SET_MANUAL_FOCUS_STEP,
	CFG_SET_FOCUS_LOCATION,
	CFG_SET_MODEL_NAME,
	CFG_SET_TAKE_PIC_TIME,
	CFG_SET_GPS_INFO,
	CFG_SET_PREVIEW_MODE,

	CFG_MAX
};


enum sensor_move_focus {
  MOVE_NEAR,
  MOVE_FAR
};

enum sensor_mode {
 SENSOR_PREVIEW_MODE,
 SENSOR_SNAPSHOT_MODE,
 SENSOR_RAW_SNAPSHOT_MODE,
 SENSOR_SNAPSHOT_OUTPUT_MODE,
 SENSOR_VIDEO_MODE,
 SENSOR_RAW_SNAPSHOT_THUMBNAIL_MODE,
 SENSOR_OUTPUT_END_MODE,
 SENSOR_MODE_MAX,
};

enum sensor_resolution {
 SENSOR_QTR_SIZE,
 SENSOR_FULL_SIZE,   //LCD TYPE
 SENSOR_QVGA_SIZE,   //QVGA 
 SENSOR_VGA_SIZE,    //VGA
 SENSOR_QUADVGA_SIZE,//1M
 SENSOR_UXGA_SIZE,   //2M
 SENSOR_QXGA_SIZE,   //3M
 SENSOR_QSXGA_SIZE,  //5M
 SENSOR_INVALID_SIZE,
};

enum camera_scene_mode {
 CAMERA_SCENE_NORMAL,
 CAMERA_SCENE_NIGHT,
 CAMERA_SCENE_BACKLIGHT,
 CAMERA_SCENE_LANDSCAPE,
 CAMERA_SCENE_PORTRAIT,
 CAMERA_SCENE_NIGHT_PORTRAIT,
 CAMERA_SCENE_BEACH,
 CAMERA_SCENE_PARTY,
 CAMERA_SCENE_SPORTS,
 CAMERA_SCENE_CANDLE,
 CAMERA_SCENE_MAX
};

enum camera_iso {
 CAMERA_ISO_LGE_AUTO = 0,
 CAMERA_ISO_LGE_100,
 CAMERA_ISO_LGE_200,
 CAMERA_ISO_LGE_400,
 CAMERA_ISO_LGE_800, 
 CAMERA_ISO_LGE_1600,  
 CAMERA_ISO_LGE_MOVIE,
 CAMERA_ISO_LGE_MAX,
};

enum camera_wb {
 CAMERA_WB_YUV_AUTO,
 CAMERA_WB_YUV_INCANDESCENT,
 CAMERA_WB_YUV_DAYLIGHT,
 CAMERA_WB_YUV_FLUORESCENT,
 CAMERA_WB_YUV_CLOUDY_DAYLIGHT,
 CAMERA_WB_MAX
};

enum camera_effect { 
 CAMERA_EFFECT_OFF,
 CAMERA_EFFECT_SEPIA, 
 CAMERA_EFFECT_MONO, 
 CAMERA_EFFECT_NEGATIVE, 
 CAMERA_EFFECT_SOLARIZE, 
 CAMERA_EFFECT_POSTERIZE,
 CAMERA_EFFECT_WHITEBOARD, 
 CAMERA_EFFECT_BLACKBOARD, 
 CAMERA_EFFECT_AQUA, 
 CAMERA_EFFECT_ANTIQUE, 
 CAMERA_EFFECT_MAX
};

enum camera_af_mode {
 CAMERA_AF_MANUAL,
 CAMERA_AF_MACRO,
 CAMERA_AF_AUTO,
 CAMERA_AF_FACE,
 CAMERA_AF_MAX
};

enum camera_img_quality {
 CAMERA_IMG_QUALITY_NORMAL,
 CAMERA_IMG_QUALITY_FINE,
 CAMERA_IMG_QUALITY_SUPER_FINE,
 CAMERA_IMG_QUALITY_MAX
};

enum camera_exposure_mode {
 CAMERA_AE_AVERAGE,
 CAMERA_AE_CENTER_WEIGHTED,
 CAMERA_AE_SPOT,
 CAMERA_AE_MAX
};

enum sensor_night_mode {
 CAMERA_NORMAL_MODE,
 CAMERA_NIGHT_MODE,
 CAMERA_NIGHT_MAX
};

enum sensor_auto_mode {
 CAMERA_AUTO_MODE,
 CAMERA_PROGRAM_MODE,
 CAMERA_AUTO_SUSPEND,
 CAMERA_AUTO_RESUME,
 CAMERA_AUTO_MAX
};

enum sensor_asd_mode {
	CAMERA_AUTOSCENEMODE_LANDSCAPE_DAY,
    CAMERA_AUTOSCENEMODE_PORTRAIT_DAY, 
	CAMERA_AUTOSCENEMODE_LANDSCAPE_NIGHT,
	CAMERA_AUTOSCENEMODE_PORTRAIT_NIGHT, 
    CAMERA_AUTOSCENEMODE_MACRO, 
    CAMERA_AUTOSCENEMODE_BACKLIGHT,
	CAMERA_AUTOSCENEMODE_AUTO, 
    CAMERA_AUTOSCENEMODE_MAX
}; 

enum sensor_antishaking_mode {
    CAMERA_ANTISHAKING_OFF,
	CAMERA_ANTISHAKING_ON,
	CAMERA_ANTISHAKING_MAX
};


struct sensor_pict_fps {
	uint16_t prevfps;
	uint16_t pictfps;
};

struct exp_gain_cfg {
	uint16_t gain;
	uint32_t line;
};

struct focus_cfg {
	int32_t steps;
	int dir;
};

struct fps_cfg {
	uint16_t f_mult;
	uint16_t fps_div;
	uint32_t pict_fps_div;
};
struct wb_info_cfg {
	uint16_t red_gain;
	uint16_t green_gain;
	uint16_t blue_gain;
};
struct sensor_cfg_data {
	enum sensor_cfg cfgtype;
	enum sensor_mode mode;
	enum sensor_resolution rs;
	uint8_t max_steps;

	union {
		int8_t effect;
        int8_t wb;
        int8_t iso;
        int8_t image_quality;
        int8_t scene_mode;
        int8_t ev;
        int8_t zoom;
        int8_t flash;
        uint32_t jpg_size;
        int8_t flicker;
		int8_t anti_shaking;
		int8_t blink_detection;
		int8_t smile_detection;
		int8_t night_mode;		
		int8_t auto_mode;				
        int8_t exposure_mode;
        int8_t asd_mode;		
        int8_t orientation;				
		uint8_t lens_shading;
		uint16_t prevl_pf;
		uint16_t prevp_pl;
		uint16_t pictl_pf;
		uint16_t pictp_pl;
		uint32_t pict_max_exp_lc;
		uint16_t p_fps;
		int8_t prev_mode;
		int8_t af_mode;
		char model_name[8];
		int16_t focus_loc[4];
		int16_t takepic_time[7];
		int gps_info[3];
		struct sensor_pict_fps gfps;
		struct exp_gain_cfg exp_gain;
		struct focus_cfg focus;
		struct fps_cfg fps;
		struct wb_info_cfg wb_info;
	} cfg;
};

enum sensor_get_info {
	GET_NAME,
	GET_PREVIEW_LINE_PER_FRAME,
	GET_PREVIEW_PIXELS_PER_LINE,
	GET_SNAPSHOT_LINE_PER_FRAME,
	GET_SNAPSHOT_PIXELS_PER_LINE,
	GET_SNAPSHOT_FPS,
	GET_SNAPSHOT_MAX_EP_LINE_CNT,
};

struct msm_camsensor_info {
	char name[MAX_SENSOR_NAME];
	uint8_t flash_enabled;
	int8_t total_steps;
};
#endif /* __LINUX_MSM_CAMERA_H */
