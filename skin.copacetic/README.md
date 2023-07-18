# Copacetic [![License](https://img.shields.io/badge/License-GPLv3-blue)](https://github.com/jurialmunkey/skin.arctic.horizon.2/blob/master/LICENSE.txt) [![License](https://img.shields.io/badge/license-CC--NC--SA%204.0-green)](http://creativecommons.org/licenses/by-nc-sa/4.0/)

All code contained in this project is licensed under GPL 3.0.

All designs contained in this work are licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 Unported License.
To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/
or send a letter to Creative Commons, 171 Second Street, Suite 300, San Francisco, California, 94105, USA.

### Special thanks
---
* __Hitcher__ for inspiring this project and kickstarting my hopeless mockups into a working codebase. For supporting through the initial designs and providing loads of support and advice.

* __jurialmunkey__ for all the best-practice code examples and forum support.

* __sualfred__ for plenty of inspiration and [script.embuary.helper](https://github.com/sualfred/script.embuary.helper), which provided some key functionality before the release of new Nexus features.

### Changelog

**1.1.4**
- Added studio flag for Neon
- Changed navigation on home menu to wrap on additional direction press so at the end of the list if you press right again, it will take you back to the list. And at the start, pressing left will take you to the end.
- Widgets will also wrap around on second press if there is more than one item in the container.
- Optimised screenshots and icons in /resources and /extras/skinsettings folders.
- Fixed several infoscreen widgets that weren't working correctly when the source of the list item was a plugin and themoviedbhelper was installed and being used to populate the plugin.

**1.1.3**
- Fixed issue introduced in 1.1.1 with wrong multiart displaying on some widgets
- Fixed issue introduced in 1.1.2 where disabled/empty widgets could not be changed in skinsettings 

**1.1.2**
- Fixed issue affecting wrong artwork sometimes being shown in widgets using grid and fanart layout when scrolling backwards.
- Fixed multiart behaviour on list/billboard view when main container loses focus
- Fixed artwork displayed on secondary lists for list/billboard view when multiart visible
- Refined user experience of widget settings screen. It should now be easier to see how to configure widgets
- Removed inactive icons from dialogselect window when accessed via skinsettings

**1.1.1**
- Option for thumb or tv show artwork on widgets containing episodes
- New widget settings screen with ability to easily reorder widgets
- cropped clearlogo window properties are cleared each time a widget is unfocused to avoid issue where clearlogo from previous widget would sometimes be shown momentarily before updating

**1.1.0**
- Dependency added back in for resource.fonts.copacetic.
- Fixed colour of notification label when light theme is selected and background slideshow is visible on.container-less screens in myvideonav/mymusicnav.
- Fixed colour of notification/volume label when light theme is selected but trailer is auto-playing.
- Fix to prevent view-specific notification widget showing on top of video window when trailer is auto-playing.
- Fixed center alignment of clearlogo on fullscreen info / pause screen during video playback
- Fixed order of priority for HDR type flag and label. Now both will only fallback to filenames if there is no value for ListItem.HDRType
- Added multiart to background slideshows
- Added kiosk mode in skin settings to lock hidden view menu customisations
- Visualisation window will now hide artwork/info about currently playing song according to standard Player.ShowInfo boolean

**1.0.7**
- Depdency on resource.fonts.copacetic removed while awaiting its approval into Kodi Nexus resources repo.

**1.0.6**
- Keyart will now only show in place of posters if 'Prefer keyart for poster views' is selected in skin settings. Previously it would show whenever a clearlogo was present, regardless of this setting.

**1.0.5**
- DialogAddonSettings.xml hidden when keyboard or numeric input opened on top.
- Fixed GridView being enabled for AddonBrowser.xml even when disabled in skin settings.
- Fixed StripView details being hidden during transition between widgets on info screens.
- Added addon version number to ListView info breadcrumb in AddonBrowser.xml.

**1.0.4**
- Rebuilt artwork controls and animations for List and Billboard views to make more lightweight and improve scrolling when multiart is visible.
- Removed duplicate 'ends' label from infoscreen during video playback for video files that are not movies or episodes.
- Added System.AddonIsEnabled(xyz) conditions for all use of scripts and plugins including dependencies that are required to be present.
- Dependencies for script.copacetic.helper and resource.fonts.copacetic bumped to latest versions.
- Added missing progress backing gradient to secondary artwork for Listview Thumbnail / Showcaseview.
- Updated MAX logo for new streaming service.

**1.0.3**
- Connected to Weblate for submission of future translations as automated pull requests.
- Majority of Italian and French translations submitted via Weblate.
- Fixed issue when setting up a custom widget where focus would get stuck on Display and you couldn't select Path/Name/Sort method etc.
- Added end time for currently playing video to Fullscreen Info / Pause screen (if info on pause screen is enabled in settings).

**1.0.2**
- Fixed 2 msgstr formatting errors in language\resource.language.en_gb\strings.po.
- Fixed auto-update button on DialogAddonInfo.xml. Previously even though the label was updating between on/off, it wasn't actually changing the underlying status of the control.
- Fixed label for audo-update button on DialogAddonInfo.xml adding a forward slash between the name and the value.

**1.0.1**
- Fix for fontset issue causing some users to have issues switching to the skin. Thanks to **beatmasterRS** for providing the fix.
- Fix for a bug that caused folder names in gridview for containers with files to sometimes get stuck on the name of a previously focused listitem.

**1.0.0** 
- Initial release.


### To do
- More from studio on plugins - use with_separator AND: https://github.com/jurialmunkey/plugin.video.themoviedb.helper/wiki/Lists-Discover
- Improved infoscreen path-tracing for widgets populated by plugin sources