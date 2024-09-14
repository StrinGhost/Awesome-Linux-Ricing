#!/bin/bash

# Root Check 
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit 1
fi

#######################################################################


# Update package database and install packages for Debian-based systems
sudo apt update -y &>>installation_output.txt & apt install lolcat figlet -y &>>installation_output.txt 

echo "##################################################" | lolcat
echo "                                                 " | lolcat
echo "$(figlet -f slant 'Despaired Itachi')" | lolcat
echo "                                                 " | lolcat
echo "##################################################" | lolcat
echo "#                                                #" | lolcat
echo "#  GitHub: https://github.com/Despaired-itachi   #" | lolcat
echo "#                                                #" | lolcat
echo "##################################################" | lolcat
echo ""
echo ""
echo "$(figlet -f slant 'Kali Linux Customization')" | lolcat
echo ""
echo ""
echo "Updating package database and installing essential packages..." | lolcat
sudo apt-get install -y zsh arandr flameshot arc-theme feh i3blocks i3status i3 i3-wm lxappearance python3-pip rofi unclutter cargo papirus-icon-theme neofetch picom betterlockscreen wtmpdb bat eza net-tools fzf tmux open-vm-tools btop stow ripgrep gh  &>>installation_output.txt
sudo apt-get install -y libxcb-shape0-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev autoconf meson &>>installation_output.txt
sudo apt-get install -y libxcb-render-util0-dev libxcb-shape0-dev libxcb-xfixes0-dev i3lock-fancy polybar &>>installation_output.txt

# install Alacritty , obsidian
echo "Installing alacritty , obsidian" | lolcat
if dpkg -l | grep -q "obsidian" || which obsidian > /dev/null; then
   echo "Obsidian already Installed." | lolcat
else
   echo "Installing Obsidian" | lolcat
   wget https://github.com/obsidianmd/obsidian-releases/releases/download/v1.6.7/obsidian_1.6.7_amd64.deb &>>installation_output.txt
   sudo dpkg -i obsidian_1.6.7_amd64.deb &>>installation_output.txt
   sudo apt install -f -y &>>installation_output.txt
   rm alacritty_0.12.0_amd64_bullseye.deb
fi

if dpkg -l | grep -q "alacritty" || which alacritty > /dev/null; then
   echo "Alacritty already Installed." | lolcat
else
   echo "Installing Alacritty" | lolcat
   wget https://github.com/barnumbirr/alacritty-debian/releases/download/v0.12.0-1/alacritty_0.12.0_amd64_bullseye.deb &>>installation_output.txt
   sudo dpkg -i alacritty_0.12.0_amd64_bullseye.deb &>>installation_output.txt
   sudo apt install -f -y &>>installation_output.txt
   rm alacritty_0.12.0_amd64_bullseye.deb
fi

# Install pywal using pip
echo "Installing pywal..." | lolcat
pip3 install pywal &>>installation_output.txt

# make directories 
echo "Setting up directories and fonts..." | lolcat
mkdir -p ~/.local/share/fonts/
mkdir ~/.fonts
mkdir ~/.config
mkdir ~/Pictures/screenshots
mkdir -p ~/Desktop/ovpn

# Check and install Iosevka Nerd Font
if fc-list | grep -qi "Iosevka"; then
    echo "Iosevka Nerd Font already installed" | lolcat
else
    echo "Installing Iosevka fonts" | lolcat
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Iosevka.zip &>>installation_output.txt
    unzip Iosevka.zip -d ~/.local/share/fonts/ &>>installation_output.txt
    rm Iosevka.zip
fi

# Check and install RobotoMono Nerd Font
if fc-list | grep -qi "RobotoMono"; then
    echo "RobotoMono Nerd Font already installed" | lolcat
else
    echo "Installing RobotoMono fonts" | lolcat
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/RobotoMono.zip &>>installation_output.txt
    unzip RobotoMono.zip -d ~/.local/share/fonts/ &>>installation_output.txt
    rm RobotoMono.zip
fi

# Check and install Hack Nerd Font
if fc-list | grep -qi "Hack"; then
    echo "Hack Nerd Font already installed" | lolcat
else
    echo "Installing Hack Nerd fonts" | lolcat
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/Hack.zip &>>installation_output.txt
    unzip Hack.zip -d ~/.local/share/fonts/ &>>installation_output.txt
    rm Hack.zip
fi
fc-cache -f

# Copy configuration files
echo "Copying configuration files..." | lolcat
cp -r config/* ~/.config/
chmod +x chbg
cp chbg ~/.chbg
cp -r images ~/.images
cp -r /usr/bin/batcat /usr/bin/cat
cp -r /usr/bin/eza /usr/bin/ls
cp -r clipse /usr/local/bin/
cp nord.rasi /usr/share/rofi/themes/
cp -r copy /usr/local/bin/


# Make scripts executable
chmod +x ~/.config/polybar/launch.sh
chmod +x ~/.config/i3/clipboard_fix.sh 
chmod +x ~/.config/ranger/scope.sh
chmod +x ~/.config/rofi/power/powermenu.sh


# Configure Betterlockscreen 
echo "Configuring betterlockscreen..." | lolcat
betterlockscreen -u ~/.images/0.jpeg &>>installation_output.txt

# Install tpm and Configure tmux
if [ -d "~/.tmux/plugins/tpm" ]; then
   echo "tpm already installed." | lolcat
else
   echo "Installing tpm..." | lolcat
   git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm &>>installation_output.txt
   echo "Installing Tmux plugins..." | lolcat 
   if [ -f "~/.tmux/plugins/tpm/scripts/install_plugins.sh" ]; then
       bash " ~/.tmux/plugins/tpm/scripts/install_plugins.sh"
   fi
fi

# Install Neovim with Nvchad
if [ -d "/opt/nvim" ]; then
   echo "Neovim Already installed" | lolcat
else
   echo "Installing Neovim" | lolcat
   curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz &>>installation_output.txt
   sudo tar -C /opt -xzf nvim-linux64.tar.gz
   mv /opt/nvim-linux64 /opt/nvim
   echo "Installing NvChad after installation completes. Run 'nvim' to download plugins then ':MasonInstallAll'." | lolcat
   git clone https://github.com/NvChad/starter ~/.config/nvim
fi

# Install Oh My Zsh
echo "Installing Oh My Zsh..." | lolcat
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --keep-zshrc &>>installation_output.txt
cp zshrc ~/.zshrc

# Prompt user for reboot
echo "(Despaired_Itachi) (+) Kali Linux Customisation Completed!" | lolcat

echo ""
echo ""
echo "Outputs saved in installation_output.txt in case of any error consider checking it out." | lolcat
echo ""
echo ""

echo "Reboot required to see the changes. Do you want to reboot now (y/n):" | lolcat
read -r option

# Check user input and take action
if [[ "$option" == "y" || "$option" == "Y" ]]; then
    echo "Rebooting the system now..." | lolcat
    sudo reboot now
else
    echo "Configuration complete: Manual reboot required." | lolcat
fi
