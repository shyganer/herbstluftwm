#!/bin/bash

source /home/shyganer/b2c/my-own/herbstluftwm/musthave_functions.sh

if $(is_panel_active onRightVirtualBottom) = true; then
	/home/shyganer/b2c/my-own/herbstluftwm/remove-right-panel.sh
else
	/home/shyganer/b2c/my-own/herbstluftwm/right-panel.sh
fi

exit 0
