if status is-interactive
	alias ll="ls -al"
	alias rmall="rm -rf ./*"
	export CONFIG="$HOME/.config/"
	abbr nv nvim
	abbr tm tmux
	abbr ff fastfetch
	abbr cf cottonfetch
	export NVIM_CONFIG="$HOME/.config/nvim/"
	export FISH_CONFIG="$HOME/.config/fish/"
	export PATH="$HOME/.local/bin:$PATH"
end
