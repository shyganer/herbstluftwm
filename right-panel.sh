#!/bin/sh

# On commence par creer le tag que prendra le virtual screen.
herbstclient add rbtm

# On cree les monitors
herbstclient add_monitor 384x1080+1536+0 rbtm onRightVirtualBottom

# On ajoute les differents padding pour que les virtuals screens ne se chevauchent pas
# client		function	name					padding
#													up		right	bottom	left
# 384 + 16 = 400
herbstclient	pad			develop					16		384

# Si le virtual screen en haut a droite est actif alors on ajoute un padding de 200 pixels supplementaires,
# Sinon on fait seulement un padding de 16 pixels pour dzen
if [ -z "$(herbstclient list_monitors | grep -i ontopvirtualright | cut -d ',' -f 2 | cut -d '"' -f 2)" ]; then
	herbstclient	pad			onRightVirtualBottom	16		0		0		0
else
	herbstclient	pad			onRightVirtualBottom	216		0		0		0
fi

exit 0
