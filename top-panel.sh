#!/bin/bash 

source /home/shyganer/b2c/config/herbstluftwm/musthave_functions.sh

# On commence par creer les tags que prendront les virtuals screens.
create_new_tag tlft
create_new_tag trgt

# On cree les monitors, celon la syntaxe suivante:
# 1080 / 5   = 216
# 1920 / 5   = 384
# 1920 - 384 = 1536
create_new_panel 1536x216		 tlft onTopVirtualLeft
create_new_panel 384x216+1536+0	 trgt onTopVirtualRight

# On ajout les differents padding pour que les virtuals screens ne se chevauchent pas:
# client		function	name				padding
padding_panel onTopVirtualLeft 16
padding_panel onTopVirtualRight	16
padding_panel develop 216

exit 0
