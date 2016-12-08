#!/bin/bash

source /home/shyganer/b2c/config/herbstluftwm/musthave_functions.sh

# Suppression du panneau a gauche du principal
remove_panel onLeftVirtualBottom

# Si le panneau de gauche est present ainsi que les panneaux
# supperieurs, lors de la suppression de ce premier
# ajouter les 200 pixels supplementaires.
if $(is_panel_active onTopVirtualLeft) = true; then
	padding_panel develop 216 0 0 0
else
	padding_panel develop 16 0 0 0
fi

exit 0
