#!/bin/sh

export GTK_IM_MODULE='uim'
export QT_IM_MODULE='uim'
uim-xim &
export XMODIFIERS='@im=uim'
uim-toolbar-gtk-systray &
sh ~/.fehbg &
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
numlockx &
xset b off
compton --shadow-exclude 'g:e:Conky' --config ~/.compton.conf -b
restore_alsa() {
    while [ -z "$(pidof pulseaudio)" ]; do
        sleep 0.5
    done
    alsactl -f /var/lib/alsa/asound.state restore 
}
restore_alsa &
exec spectrwm
