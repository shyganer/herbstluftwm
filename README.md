# HERBSTLUF WINDOW MANAGER

## Useful links
https://www.herbstluftwm.org/index.html
https://www.herbstluftwm.org/faq.html

## How to install Herbstluft window manager
sudo apt-get install --install-recommends herbstluftwm dzen2

## Import default configuration file
### $HOME/.config/herbstluftwm must exists
cp /etc/xdg/herbstluftwm/autostart .config/herbstluftwm
cp /etc/xdg/herbstluftwm/panel.sh .config/herbstluftwm

## Required symbolic links
sudo ln -s /home/shyganer/b2c/config/herbstluftwm/manage-top-panel.sh /usr/local/bin/manage-top-panel
sudo ln -s /home/shyganer/b2c/config/herbstluftwm/manage-right-panel.sh /usr/local/bin/manage-right-panel
