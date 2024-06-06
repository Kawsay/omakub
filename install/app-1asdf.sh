git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0

echo -e "\n# asd" >> ~/.bashrc
echo -e "\n. \"$HOME/.asdf/asdf.sh\"" >> ~/.bashrc
echo -e "\n. \"$HOME/.asdf/completions/asdf.bash\"" >> ~/.bashrc

source ~/.bashrc
