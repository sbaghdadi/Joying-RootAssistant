#!/system/bin/sh
#

# Installer for the seSuperuser su binary.
# Original: https://github.com/phhusson/Superuser
# This one: https://github.com/seSuperuser/Superuser
# This sub repository only contains and installs the su binary and install-recovery.sh script

# Version 1.0, 28 September 2017, HvdW

# Make backup of original su
cp -f /system/bin/su /system/bin/su.org
cp -f /data/seSuperuser/su /system/bin/su
chmod 06775 /system/bin/su

# Is there already an install-recovery.sh ?
if [ ! -f /system/bin/install-recovery.sh ]
then
	cp -f /system/bin/install-recovery.sh /system/bin/install-recovery.sh.org
fi
printf "#!/system/bin/sh\n" > /system/bin/install-recovery.sh
printf "\n\n" >> /system/bin/install-recovery.sh
printf "This install-recovery.sh is installed here to start the seSuperuser su binary\n" >> /system/bin/install-recovery.sh
printf "in daemon mode\n\n" >> /system/bin/install-recovery.sh
printf "/system/bin/su --daemon &\n" >> /system/bin/install-recovery.sh
chmod 755 /system/bin/install-recovery.sh



