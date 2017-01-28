#!/bin/bash

source /home/shyganer/b2c/my-own/herbstluftwm/musthave_functions.sh

# Suppression des deux panneaux au dessus du principal
remove_panel onTopVirtualLeft
remove_panel onTopVirtualRight

# Remise du padding a zero pour le panneau principal
padding_panel develop 16

# Si le panel de droit est actif, faire un padding de celui ci
# depuis le up pour supprimer le chevauchement
if "$(is_panel_active onRightVirtualBottom)" = true; then
	padding_panel onRightVirtualBottom 16
fi

# Si le panel de gauche est actif, faire un padding de celui ci
# depuis le up pour supprimer le chevauchement
if "$(is_panel_active onLeftVirtualBottom)" = true; then
	padding_panel onLeftVirtualBottom 16
fi

exit 0
