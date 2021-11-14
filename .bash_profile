#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Ejecutar desde tty1 swaywm
if [ "$(tty)" = "/dev/tty1" ]; then
	exec sway
fi