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
	if [ -z "" ]; then
		return 1
	else
		return 0
	fi
}

# On commence par creer les tags que prendront les virtuals screens.
#herbstclient add tlft
#herbstclient add trgt
create_new_tag tlft
create_new_tag trgt

# On cree les monitors, celon la syntaxe suivante:
# 1080 / 5   = 216
# 1920 / 5   = 384
# 1920 - 384 = 1536
# client		function	resolution			tag		name
#herbstclient	add_monitor 1536x216			tlft	onTopVirtualLeft
#herbstclient	add_monitor  384x216+1536+0		trgt	onTopVirtualRight
create_new_panel 1536x216 tlft onTopVirtualLeft
create_new_panel 384x216+1536+0	 trgt onTopVirtualRight

# On ajout les differents padding pour que les virtuals screens ne se chevauchent pas:
# client		function	name				padding
#herbstclient	pad			onTopVirtualLeft	16
#herbstclient	pad			onTopVirtualRight	16
#herbstclient	pad			develop				216
padding_panel onTopVirtualLeft 16
padding_panel onTopVirtualRight	16
padding_panel develop 216

exit 0
