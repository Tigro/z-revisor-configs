# Kickstart file for composing the "SL 6" spin of RHEL 6
# Use a part of 'iso' to define how large you want your isos.
# Only used when composing to more than one iso.
# Default is 695 (megs), CD size. unless "revisor -cli --install-dvd" is used
# where the default size is a DVD
# Listed below is the size of a DVD if you wanted to split higher.
#part iso --size=4998

#timezone America/Chicago


# Package manifest for the compose.  Uses repo group metadata to translate groups.
# (@base is added by default unless you add --nobase to %packages)
# (default groups for the configured repos are added by --default)
##########################
%packages --default
# core
kernel*
dracut-*
mc
# drop for Desktop
-kexec-tools
-system-config-kdump
# no SL_desktop_tweaks
-SL_desktop_tweaks

@base
@basic-desktop
@cifs-file-server
@desktop-platform
@directory-client
@fonts
@general-desktop
@graphical-admin-tools
@graphics
@ice-desktop
@input-methods
@internet-applications
@internet-browser
@java-platform
@legacy-x
@mail-server
@mysql
@network-file-system-client
@network-server
@network-tools
@office-suite
@print-client
@print-server
@remote-desktop-clients
@russian-support
@server-platform
@web-server
@x11
%end
