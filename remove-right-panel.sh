#!/bin/bash

source /home/shyganer/b2c/config/herbstluftwm/musthave_functions.sh

# Suppression du panneau au droit du principal
remove_panel onRightVirtualBottom

# Si le panneau de droite est present ainsi que les panneaux
# supperieur, lors de la suppression de ce premier
# ajouter les 200 pixels supplementaires.
if $(is_panel_active onTopVirtualLeft) = true; then
	padding_panel develop 216 0 0 0
else
	padding_panel develop 16 0 0 0
fi

exit 0
