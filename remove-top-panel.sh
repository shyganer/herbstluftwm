#!/bin/sh

# Suppression des deux panneaux au dessus du principal
herbstclient remove_monitor onTopVirtualLeft
herbstclient remove_monitor onTopVirtualRight

# Remise du padding a zero pour le panneau principal
herbstclient pad develop 16
