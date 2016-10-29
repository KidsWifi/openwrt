#!/bin/sh

do_we65ac_factory() {
	. /lib/ramips.sh

	local board=$(ramips_board_name)

	case "$board" in
		we65ac) 
			/usr/srg/scripts/we65ac-serialize

		;;
	esac
}

boot_hook_add preinit_main do_we65ac_factory 
