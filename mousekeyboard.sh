#!/bin/sh

# /etc/X11/xorg.conf.d/50-mouse-acceleration.conf

Section "InputClass"
	Identifier "My Mouse"
	Driver "libinput"
	MatchIsPointer "yes"
	Option "AccelProfile" "flat"
EndSection



'Section "InputClass"\n
	Identifier "My Mouse"\n
	MatchIsPointer "yes"\n
	Option "AccelerationProfile" "-1"\n
	Option "AccelerationScheme" "none"\n
	Option "AccelSpeed" "-1"\n
EndSection

Section "InputClass"
	Identifier "My Mouse"
	MatchIsPointer "yes"
	Option "AccelerationProfile" "-1"
	Option "AccelerationScheme" "none"
	Option "AccelSpeed" "-1"
EndSection"
EOT'

##keyboard

localectl set-keymap de-latin1-nodeadkeys

localectl --no-convert set-x11-keymap de pc105 
nodeadkeys
