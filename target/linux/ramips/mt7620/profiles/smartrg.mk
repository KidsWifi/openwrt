###############################################################################
#               _____                      _  ______ _____                    #
#              /  ___|                    | | | ___ \  __ \                   #
#              \ `--. _ __ ___   __ _ _ __| |_| |_/ / |  \/                   #
#               `--. \ '_ ` _ \ / _` | '__| __|    /| | __                    #
#              /\__/ / | | | | | (_| | |  | |_| |\ \| |_\ \                   #
#              \____/|_| |_| |_|\__,_|_|   \__\_| \_|\____/ Inc.              #
#                                                                             #
###############################################################################
#                                                                             #
#                       copyright 2016 by SmartRG, Inc.                       #
#                              Santa Barbara, CA                              #
#                                                                             #
###############################################################################
#                                                                             #
# Author: Chad Monroe                                                         #
#                                                                             #
# Purpose: Basic profile for MT7260 based devices by SmartRG (e.g. WE65ac)    #
#                                                                             #
###############################################################################

define Profile/WE65ac
	NAME:=SmartRG WE65ac
	PACKAGES:=kmod-mt76 \
				kmod-ledtrig-gpio kmod-ledtrig-netdev \
				swconfig kmod-button-hotplug kmod-gpio-dev pciutils grep \
				dmesg terminfo
endef

define Profile/WE65ac/Description
	Support for SmartRG WE65ac WiFi Extender
endef
$(eval $(call Profile,WE65ac))
