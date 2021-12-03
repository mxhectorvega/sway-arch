#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Ejecutar desde tty1 swaywm (no display manager)
#if [ "$(tty)" = "/dev/tty1" ]; then
#	exec sway
#fi

[daemon]
    # Enabling automatic login
    AutomaticLoginEnable=true
    AutomaticLogin=$USERNAME
