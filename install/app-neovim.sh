mkdir -p ~/.local/build/
git clone https://github.com/neovim/neovim ~/.local/build
cd ~/.local/build/neovim
git checkout stable
make CMAKE_BUILD_TYPE=RelWithDebInfo
cd build && cpack -G DEB && sudo dpkg -i nvim-linux64.deb

if [ ! -d "$HOME/.config/nvim" ]; then
	git clone https://github.com/LazyVim/starter ~/.config/nvim
	cp ~/.local/share/omakub/themes/neovim/tokyo-night.lua ~/.config/nvim/lua/plugins/theme.lua
fi
