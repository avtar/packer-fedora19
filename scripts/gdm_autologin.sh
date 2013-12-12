# Log in automatically as the vagrant user
sed -i '/\[daemon\]/ a\
AutomaticLoginEnable=true\
AutomaticLogin=vagrant\
TimedLoginEnable=true\
TimedLogin=vagrant\
TimedLoginDelay=0
' /etc/gdm/custom.conf
