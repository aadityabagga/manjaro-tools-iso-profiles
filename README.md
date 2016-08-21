manjaro-tools-iso-profiles
==========================

######* profile.conf

~~~
# default displaymanager: none
# supported; lightdm, sddm, gdm, lxdm, mdm
# displaymanager="none"

# Set to false to disable autologin in the livecd
# autologin="true"

# use multilib packages; x86_64 only
# multilib="true"

# nonfree mhwd drivers
# nonfree_mhwd="true"

# use plymouth
# plymouth_boot="true"

# use pxe
# pxe_boot="true"

################ torrent ################

# the torrent tracker url
# tracker_url=""

# Piece size, 2^n
# piece_size=21

################ install ################

# possible values: grub;systemd-boot
# efi_boot_loader="grub"

# configure calamares for netinstall
# netinstall="false"

# the default url for the netinstall.yaml
# netgroups="https://raw.githubusercontent.com/manjaro/manjaro-tools-iso-profiles/master/shared/netinstall"

# configure calamares to use chrootcfg instead of unpackfs
# unpackfs="true"

# unset defaults to given value
# plymouth_theme=manjaro-elegant

# unset defaults to given values
# names must match systemd service names
# enable_systemd=('bluetooth' 'cronie' 'ModemManager' 'NetworkManager' 'org.cups.cupsd' 'tlp' 'tlp-sleep')

# unset defaults to given values,
# names must match openrc service names
# enable_openrc=('acpid' 'bluetooth' 'consolekit' 'cronie' 'cupsd' 'dbus' 'syslog-ng' 'NetworkManager')

################# live-session #################

# unset defaults to given value
# hostname="manjaro"

# unset defaults to given value
# username="manjaro"

# unset defaults to given value
# password="manjaro"

# the login shell
# defaults to bash
# login_shell=/bin/bash

# unset defaults to given values
# addgroups="video,audio,power,disk,storage,optical,network,lp,scanner,wheel"

# unset defaults to given values
# names must match systemd service names
# services in enable_systemd array don't need to be listed here
# enable_systemd_live=('manjaro-live' 'mhwd-live' 'pacman-init')

# unset defaults to given values,
# names must match openrc service names
# services in enable_openrc array don't need to be listed here
# enable_openrc_live=('manjaro-live' 'mhwd-live' 'pacman-init')
~~~

######* New Packagelist tags

~~~
>openrc
>systemd

>i686
>x86_64
>multilib

>nonfree_default
>nonfree_i686
>nonfree_x86_64
>nonfree_multilib
~~~

######* Packages-Root
* Contains root image packages
* ideally no xorg

######* Packages-Custom
* Contains the custom image packages
* desktop environment packages go here
* this file is joined at build time with shared/Packages-Desktop to pull in shared desktop packages

######* Packages-Mhwd
* Contains the MHWD driver packages repo

######* Packages-Live
* Contains packages you only want in live session but not installed on the target system with installer
* default files are in shared folder and can be symlinked or defined in a real file

######* buildiso can be configured to use custom repos.

* create a user-repos.conf

~~~
${profile_dir}/user-repos.conf
~~~

Add only your repos to user-repos.conf!
