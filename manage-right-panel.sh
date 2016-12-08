#!/bin/bash

source /home/shyganer/b2c/config/herbstluftwm/musthave_functions.sh

if $(is_panel_active onRightVirtualBottom) = true; then
	/home/shyganer/b2c/config/herbstluftwm/remove-right-panel.sh
else
	/home/shyganer/b2c/config/herbstluftwm/right-panel.sh
fi

exit 0
