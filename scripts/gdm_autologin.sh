# Log in automatically as the vagrant user
sed -i '/\[daemon\]/ a\
AutomaticLoginEnable=true\
AutomaticLogin=if\
TimedLoginEnable=true\
TimedLogin=if\
TimedLoginDelay=0
' /etc/gdm/custom.conf
