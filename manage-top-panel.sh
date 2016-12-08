#!/bin/bash

source /home/shyganer/b2c/config/herbstluftwm/musthave_functions.sh

if $(is_panel_active onTopVirtualLeft) = true; then
	/home/shyganer/b2c/config/herbstluftwm/remove-top-panel.sh
else
	/home/shyganer/b2c/config/herbstluftwm/top-panel.sh
fi

exit 0
