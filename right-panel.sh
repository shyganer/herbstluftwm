#!/bin/sh

tag=""
name=""
pad_up=""
pad_down=""
pad_left=""
pad_right=""
resolution=""

hc ()
{
	herbstclient "$@"
}

create_new_tag()
{
	tag=$1

	hc add $tag

	unset tag
}

create_new_panel ()
{
	resolution=$1
	tag=$2
	name=$3

	hc add_monitor $resolution $tag $name

	unset resolution
	unset tag
	unset name
}

remove_panel ()
{
	name=$1

	hc remove_monitor $name

	unset name
}

padding_panel ()
{
	name=$1
	pad_up=$2
	pad_right=$3
	pad_down=$4
	pad_left=$5

	hc pad $name $pad_up $pad_right $pad_down $pad_left

	unset name
	unset pad_up
	unset pad_right
	unset pad_down
	unset pad_left
}

resize_panel ()
{
	name=$1
	pad_up=$2
	pad_right=$3
	pad_down=$4
	pad_left=$5

	hc pad $name $pad_up $pad_right $pad_down $pad_left

	unset name
	unset pad_up
	unset pad_right
	unset pad_down
	unset pad_left
}

is_panel_active ()
{
	name=$1

	if [ -z "$(herbstclient list_monitors | grep -i $name | cut -d ',' -f 2 | cut -d '"' -f 2)" ]; then
		unset name
		return 1
	else
		unset name
		return 0
	fi
}


# On commence par creer le tag que prendra le virtual screen.
#herbstclient add rbtm
create_new_panel rbrm

# On cree les monitors
#herbstclient add_monitor 384x1080+1536+0 rbtm onRightVirtualBottom
create_new_panel 384x1080+1536+0 rbtm onRightVirtualBottom

# On ajoute les differents padding pour que les virtuals screens ne se chevauchent pas
# client		function	name					padding
#													up		right	bottom	left
# 384 + 16 = 400
#herbstclient	pad			develop					16		384
padding_panel develop 16 384

# Si le virtual screen en haut a droite est actif alors on ajoute un padding de 200 pixels supplementaires,
# Sinon on fait seulement un padding de 16 pixels pour dzen
#if [ -z "$(herbstclient list_monitors | grep -i ontopvirtualright | cut -d ',' -f 2 | cut -d '"' -f 2)" ]; then
#	herbstclient	pad			onRightVirtualBottom	16		0		0		0
#else
#	herbstclient	pad			onRightVirtualBottom	216		0		0		0
#fi

if [ "$(is_panel_active onRightVirtualBottom)" -eq 1 ]; then
	padding_panel onRightVirtualBottom 16 0 0 0
else
	padding_panel onRightVirtualBottom 216 0 0 0
fi

exit 0
