#!/bin/sh

if [ -z "$(herbstclient list_monitors | grep -i ontopvirtualleft | cut -d ',' -f 2 | cut -d '"' -f 2)" ]; then
	/home/shyganer/b2c/config/herbstluftwm/top-panel.sh
else
	/home/shyganer/b2c/config/herbstluftwm/remove-top-panel.sh
fi

exit 0
