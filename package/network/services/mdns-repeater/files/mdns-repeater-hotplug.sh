#!/bin/sh

PFN="/var/run/mdns-repeater.pid"
PID=$(cat ${PFN} 2>>/dev/null)

if [ -n "${PID}" ]; then
	if [ -e /proc/${PID}/exe ]; then
		kill -TERM ${PID}
	fi
fi

rm -f ${PFN}

sleep 2

IFACES="lan1 lan2 lan3 lan4 wifi2_4 wifi5G"

mdns-repeater ${IFACES}
