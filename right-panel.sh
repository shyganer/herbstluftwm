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
		echo true
	else
		unset name
		echo false	
	fi
}

# On commence par creer le tag que prendra le virtual screen.
create_new_tag rbtm

# On cree les monitors
create_new_panel 384x1080+1536+0 rbtm onRightVirtualBottom

# On ajoute les differents padding pour que les virtuals screens ne se chevauchent pas
# 384 + 16 = 400
#				name	up right bottom left
padding_panel	develop 16 384

# Si le virtual screen en haut a droite est actif alors on ajoute un padding de 200 pixels supplementaires,
# Sinon on fait seulement un padding de 16 pixels pour dzen
if $(is_panel_active onTopVirtualRight) = true ; then
	padding_panel onRightVirtualBottom 16
else
	padding_panel onRightVirtualBottom 216 0 0 0
fi

exit 0
