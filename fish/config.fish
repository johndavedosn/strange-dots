if status is-interactive
	echo "Mr. Frank wants to say:"
	fortune | cowsay -f tux
	alias ll="ls -al"
	alias rmall="rm -rf ./*"
	alias get_quote="fortune | cowsay -f tux"
	export CONFIG="$HOME/.config/"
	abbr nv nvim
	abbr tm tmux
	abbr ff fastfetch
	export NVIM_CONFIG="$HOME/.config/nvim/"
	export FISH_CONFIG="$HOME/.config/fish/"
	export PATH="$HOME/.local/bin:$PATH"
end
