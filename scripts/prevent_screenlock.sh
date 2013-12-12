# Prevent the screen from locking
sudo -u vagrant dbus-launch gsettings set org.gnome.desktop.session idle-delay 0
sudo -u vagrant dbus-launch gsettings set org.gnome.desktop.screensaver idle-activation-enabled false
sudo -u vagrant dbus-launch gsettings set org.gnome.desktop.lockdown disable-lock-screen true
