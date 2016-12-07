#!/bin/sh

# On commence par creer les tags que prendront les virtuals screens.
herbstclient add tlft
herbstclient add trgt

# On cree les monitors, celon la syntaxe suivante:
# 1080 / 5   = 216
# 1920 / 5   = 384
# 1920 - 384 = 1536
# client		function	resolution			tag		name
herbstclient	add_monitor 1536x216			tlft	onTopVirtualLeft
herbstclient	add_monitor  384x216+1536+0		trgt	onTopVirtualRight

# On ajout les differents padding pour que les virtuals screens ne se chevauchent pas:
# client		function	name				padding
herbstclient	pad			onTopVirtualLeft	16
herbstclient	pad			onTopVirtualRight	16
herbstclient	pad			develop				216
