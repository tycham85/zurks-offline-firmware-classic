# Zurk's Offline Firmware 
#### version 34.1
This is a fork currently of the work of "phineasthecat" work here on github that I found had quite some bugs. Either I'll merge the changes I'm making here with their project, or I'll continue this fork (in case their account is dead).

## License

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.
You should have received a copy of the GNU General Public License along with this program in the file LICENSE.TXT.  If not, see <http://www.gnu.org/licenses/>.
Copyright (C) 2012 Free Software Foundation, Inc. All rights reserved. 


## Which Firmware ?

This is Zurk's Offline Firmware v34, backported to the Chumby Classic. 

**NOTE: Please install the SSL fix firmware before usage-- see ssl-fix-update.txt for more info!**


## Usage

* Copy to a blank USB thumbdrive (FAT32 formatted, 2GB or greater, root folder, make sure you keep directory structure) - power off your activated, networked, functional chumby - insert thumbdrive - power on. Wait for the voice prompts (3-5 min) and when it reboots remove the USB thumbdrive. The first boot after install will take a while (1-2 min without swapfile.on, up to !half an hour or more! with swapfile.on), the next ones are much faster. If upgrading with an on board firmware already on the Chumby the procedure is the same. The loader will detect the earlier install and upgrade it automatically. 

* You will need to change the control panel time to your correct location after bootup. Also change the brightness and sound to your preference. 

* Ensure your chumby is activated, on the network and fully operational with the included firmware (update.zip) prior to using this offline firmware. 

* Although you do not need to activate your chumby and can run this offline firmware completely without a network, for a first time installation both network and activated chumby are recommended to make life simple. For operating in network-less environments please delete the file autoreboot.on from the chumby storage root. 


## USB disk problems

The installation checks the files on the USB disk before installing to your chumby. If the files have issues such as data corruption etc the install will stop. Please replace the USB disk and try a new one or reformat the USB disk and retry it. USE A FAST USB Drive of high quality. This firmware runs from the USB.


## Help

Forums are available at : 

https://sourceforge.net/p/zurk/discussion/12064/

Feel free to discuss any topics as required. The chumby forums may provide more general help but they may not be available for much longer. 


## Chumote!

The Chumote! infrastructure has been expanded with this release. Simply point your web browser to your chumby's ip address and you should see the new infrastructure pop up. You can now see the contents of the chumby screen and set a few parameters as well as start ssh. For insecure networks ensure you set a ssh password with "passwd root" once you ssh into the chumby. 


## Music 

Note that chumby music infrastructure has been **REMOVED** from the offline firmware including PANDORA. You may restore chumby infrastructure and PANDORA by completing the following procedure : After booting the chumby using the offline firmware use a web browser ( firefox/chrome/IE/safari etc ) and go to http://ip.address.of.your.chumby (You can find the IP Address in the control panel -> Settings -> Device info under ip: - The 192.168.xxx.xxx is your chumby ip address ). Your chumby is automatically converted into a webserver with a web-based control and information page loaded when you boot up the offline firmware. You will see a webpage with links. Simply click the link to select chumby.com online infrastructure and pandora will be enabled. You can also disable it and run off the offline firmware provided music infrastructure by selecting the second link. You cannot run the offline firmware music infrastructure at the same time as the chumby provided music infrastructure. 


## DLNA / UPnP Infrastructure

The file dlna.on must be deleted to disable DLNA support. By default it is enabled and can be controlled from the web control panel. Use a javascript enabled web browser to browse http://ip.address.of.chumby/dlna to access the DLNA / UPnP control panel.
Note that on first boot DLNA will NOT be available until approximately 1 hour has passed. You can check the status of DLNA by using the web control panel. 
DLNA can be used with any UPnP or DLNA music server or device. An open source cross-platform server such as MediaTomb is recommended. 


## Customization - Widgets/Weather

Customize widgets and weather by selecting the appropriate link for Multi Channel Widget Editor or Weather Editor from the link on the chumby web control panel. Ensure you click the reload channel link on the control panel to see your changes on the chumby. 

Weather updates are hourly. Wait up to 1 hour before assuming something has gone wrong with your changes. 


## Customization - Music

Firmwares now have a common music infrastructure built-in. You can customize the music by editing the folder : lighty/html/chumcast/list
and create the corresponding xshow file with a list of your music. This will modify the blueocty radio

You must type the following command on the chumby after you edit music on there directly : sync

You can customize the podcasts by selecting the corresponding Podcast Editor on the menu of the chumby web based control panel.


## Networkless mode

Want to run your chumby without a network ? Network-less mode is for you. Delete the file autoreboot.on from /mnt/usb and your chumby will work without a network. Note that this procedure is irreversible unless you reinstall the software on the chumby using a usb disk. Until that happens the chumby will not connect to any network.


## Note

Once you have changed any settings to your liking, prior to putting the chumby into actual use, ensure you sync and reboot it at least once.


## Guide

Only obsolete guides are currently available. Documentation will be included as volunteers write it for the new embedded infrastructure. 


## Changelog

* v34.1 - Forked this project from "phineasthecat" and made modifications to the "debugchumby" script to work with swap files, created an "on.sh" script to remotely turn the screen on, as well as created the "tmp" folder necessary for functioning

* v34- Added default channel setting on boot in Widget Editor. 

* v33- Added voice prompt to detect reboot state. Graphical interface on firmware loader if voice prompts non functional. 

* v32- Added Intercom channel. Replace text to speech subsystem with new system using lower memory footprint. Added signature verification checking to detect corrupt images. Modified loader with disk compression support. 

* v31- Bugfix for time sync patch which caused audio device disconnections on sync. Enhanced rdate connectivity in hosts to NIST. 

* v30- Added time sync patch (modified) based on patch posted in the forums by Stan. 

* v29- Added reliability patch to fix c8 original chumby firmware script issue for reboots. added night mode to lessen reboot frequency.

* v28- Added more of Philip Van Baren's widget parameters mod to widget editor. Added selective network checking to crontab to hopefully remove network disconnections. Added framework for BBC feeds to be virtualized in the future.   

* v27- Added Philip Van Baren's widget parameters mod to widget editor. Added timezone input on index page.  

* v26- World clock. Improved network handling. Save Chumby channel based on the promo video. 

* v25- Better network handling. Removed bonjour (can be enabled by deleting bonjour.off) to save CPU/memory. 

* v24- Less aggressive reboot strategy for net failures. Better memory handling for C1s. 

* v23- Added web based file manager to Chumote! panel. Added per widget timeouts on web control panel. Improved loader system. Reduction in RAM usage on c1/i35. Further fix for rare long term chumby kernel bug. Added GOES West Satellite feed. 

* v22- Chumby embedded infrastructure. Fix for DLNA by M.Heigl. Minor weather animation improvements. Infrastructure improvements for potential future widget drag and drop support. Weather editing support. Alarm infrastructure support for online alarm editing. Podcast editing via the web.

* v21- Minor search engine fix for c1. Added PNG animation support for replacing GIF animation support which has transparency problems (black background) with certain animated GIFs. 

* v20- Added working BBC World Vintage Edition as a temporary replacement to broken reuters news (reuters spotlight API failed). Thumbnail/profile cleanup. Lightboxes for web control panel. Chumby widgetcache bugfix for cached animated gifs.

* v19- Tom Higgins Chumote (alpha) integration, dannysland podcasts. Shoutcast search engine. Cleanup of music for stub server integration. Doppler radar/animated GIF support. Remove broken LOLCats :( - replace with Flickr stream. 

* v18- Preliminary fix for long term crash bug in all chumbies. Python, PHP & Perl cgi support added to built-in web server. 

* v17- DLNA / UPnP Support & Perl 5.10. Random shuffler, egg timer. Zen Garden theme for the web control panel. 

* v16- Cleanup, small music bugfix. 

* v15- Added multiple profile infrastructure with two profiles. Can support any number of profiles. 

* v14- Removed all chumby music infrastructure, restored NYT PodCasts, CBS PodCasts, fixed broken blueocty links.

* v13- Added a selection of docs and customization guide to the docs folder.

* v12- Bugfix for chumbies with broken network hardware.  

* v11- Added periodic event recorder i.e. blackbox in case of hangs, dmesg script, better memory data, LOLcats. 

* v10- Patched chumby1 fw to include the chumby classic and improved network detection updates, fixed english calendar, extra network checks/failsafes

* v9 - added messaging API, now display a message on your chumby simply by going to http://ip.of.chumby/cgi-bin/message.sh?whatever

* v8 - more weather api tweaks, replace c1 german cal with eng

* v7 - fix images, java, speech engine, weather api (edit psp/zwapi.sh with your city and country code)

* v6 - added rapidfire, long term cleanup, clock overlay on c1

* v5 - removed http cache, installed adblock

* v4 - add stuff 

* v3 - corrected ntp drift on c8

* v2 - corrected sound

* v1 - init release


###### Zurk's Offline Firmware
