#!/bin/bash

source /home/shyganer/b2c/config/herbstluftwm/musthave_functions.sh

# On commence par creer le tag que prendra le virtual screen.
create_new_tag rbtm

# On cree les monitors
create_new_panel 384x1080+1536+0 rbtm onRightVirtualBottom
hc lock_tag onRightVirtualBottom

# On ajoute les differents padding pour que les virtuals screens ne se chevauchent pas
# 384 + 16 = 400
#				name	up right bottom left
padding_panel	develop 16 384

# Si le virtual screen en haut a droite est actif alors on ajoute un padding de 200 pixels supplementaires,
# Sinon on fait seulement un padding de 16 pixels pour dzen
if $(is_panel_active onTopVirtualRight) = true ; then
	padding_panel onRightVirtualBottom 216 0 0 0
else
	padding_panel onRightVirtualBottom 16
fi

exit 0
