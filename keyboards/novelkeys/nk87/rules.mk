# Do not put the microcontroller into power saving mode
# when we get USB suspend event. We want it to keep updating
# backlight effects.
OPT_DEFS += -DNO_SUSPEND_POWER_DOWN

# Build Options
#   change yes to no to disable
#
BOOTMAGIC_ENABLE = yes      # Enable Bootmagic Lite
MOUSEKEY_ENABLE = yes       # Mouse keys
EXTRAKEY_ENABLE = yes       # Audio control and System control
CONSOLE_ENABLE = no         # Console for debug
COMMAND_ENABLE = no         # Commands for debug and configuration
# NKRO_ENABLE = yes           # Enable N-Key Rollover
BACKLIGHT_ENABLE = no       # Enable keyboard backlight functionality
RGBLIGHT_ENABLE = no        # Enable keyboard RGB underglow
AUDIO_ENABLE = no           # Audio output

CIE1931_CURVE = yes

# project specific files
SRC =	keyboards/wilba_tech/wt_main.c \
		keyboards/wilba_tech/wt_rgb_backlight.c \
		drivers/led/issi/is31fl3733.c \
		quantum/color.c \
		i2c_master.c


# Custom build options
COMBO_ENABLE = no           # https://docs.qmk.fm/#/feature_combo
TAP_DANCE_ENABLE = no       # https://docs.qmk.fm/#/feature_tap_dance

# https://github.com/qmk/qmk_firmware/issues/19472#issuecomment-1368810027
# For use with KVM
KEYBOARD_SHARED_EP = no
NKRO_ENABLE = no
VIA_ENABLE = no
