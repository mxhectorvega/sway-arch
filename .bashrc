# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc


# Promopt actualizado marzo 2022
export PS1="\[$(tput bold)\](\[$(tput sgr0)\]\[\033[38;5;243m\]\[$(tput bold)\]\A\[$(tput sgr0)\]\[$(tput bold)\])\[$(tput bold)\]\[$(tput bold)\]-\[$(tput sgr0)\]\[$(tput bold)\](\[$(tput sgr0)\]\[\033[38;5;27m\]\[$(tput bold)\]\u\[$(tput sgr0)\]\[$(tput bold)\])\[$(tput bold)\]\[$(tput bold)\]-\[$(tput sgr0)\]\[$(tput bold)\](\[$(tput sgr0)\]\[\033[38;5;178m\]\[$(tput bold)\]\w\[$(tput sgr0)\]\[$(tput bold)\])\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/-(\[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;171m\]\[$(tput bold)\]\1\[$(tput sgr0)\]\[$(tput bold)\])/')\n\\$ \[$(tput sgr0)\]"
