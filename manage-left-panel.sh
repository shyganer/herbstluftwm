#!/bin/bash

source /home/shyganer/b2c/my-own/herbstluftwm/musthave_functions.sh

if $(is_panel_active onLeftVirtualBottom) = true; then
	/home/shyganer/b2c/my-own/herbstluftwm/remove-left-panel.sh
else
	/home/shyganer/b2c/my-own/herbstluftwm/left-panel.sh
fi

exit 0
