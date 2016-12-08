#!/bin/sh

if [ -z "$(herbstclient list_monitors | grep -i onrightvirtualbottom | cut -d ',' -f 2 | cut -d '"' -f 2)" ]; then
	/home/shyganer/b2c/config/herbstluftwm/right-panel.sh
else
	/home/shyganer/b2c/config/herbstluftwm/remove-right-panel.sh
fi

exit 0
