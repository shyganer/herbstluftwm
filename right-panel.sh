#!/bin/sh

# On commence par creer le tag que prendra le virtual screen.
herbstclient add rbtm

# On cree les monitors
herbstclient add_monitor 384x1080+1536+0 rbtm onRightVirtualBottom

# On ajoute les differents padding pour que les virtuals screens ne se chevauchent pas
# client		function	name					padding
herbstclient	pad			develop					16 384
herbstclient	pad			onRightVirtualBottom	16

exit 0
