#!/bin/sh

# Suppression du panneau au droit du principal
herbstclient remove_monitor onRightVirtualBottom

# Remise du padding a zero pour le panneau principal
herbstclient pad develop 16 0 0 0

exit 0
