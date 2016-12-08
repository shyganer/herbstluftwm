#!/bin/sh

# Suppression des deux panneaux au dessus du principal
herbstclient remove_monitor onTopVirtualLeft
herbstclient remove_monitor onTopVirtualRight

# Remise du padding a zero pour le panneau principal
herbstclient pad develop 16

# Si le virtual screen de droite est actif et qu'on supprime les virtuals screens du haut alors,
# on resize le panning de droite pour ne pas avoir de vide
if [ -z "$(herbstclient list_monitors | grep -i onrightvirtualbottom | cut -d ',' -f 2 | cut -d '"' -f 2)" ]; then
	herbstclient	pad			onRightVirtualBottom	16		0		0		0
fi

exit 0
