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
---
**1.1.16**
- Bug fix: removed unmatched parenthesis causing log errors
- Updated MGM, MGM+ and HBO Max flags 
- Fixed colour issue with volume indicator in certain views on light theme https://github.com/realcopacetic/skin.copacetic/issues/77
- Improved notifcation style switching when moving between views and windows. Underlying cause of https://github.com/realcopacetic/skin.copacetic/issues/77
- Fixed bug in Startup.xml
- Fixed bug in Content_Settings.xml preventing a label from showing in Skin Settings > General
- Added option for movement to fullscreen artwork on billboard and list views https://github.com/realcopacetic/skin.copacetic/issues/79
- Fixed missing multiart on Billboard home widgets https://github.com/realcopacetic/skin.copacetic/issues/60
- Added ability to completely disable hidden options menu when kiosk mode enabled https://github.com/realcopacetic/skin.copacetic/issues/59
- Added ability to change opacity of background panels in Skin Settings > General https://github.com/realcopacetic/skin.copacetic/issues/45
- Consistent background opacity between DialogSlider.xml, DialogPlayerProcessInfo.xml and other panels https://github.com/realcopacetic/skin.copacetic/issues/31
- seekbar and seekoffset label added to video player https://github.com/realcopacetic/skin.copacetic/issues/32

**1.1.15**
- Added multiart and Ken Burns effect to infoscreen backgrounds https://github.com/realcopacetic/skin.copacetic/issues/60
- Added homescreen clearlogo supports for background playlists set through skinshortcuts https://github.com/realcopacetic/skin.copacetic/issues/61

**1.1.14**
- Refined animation delay for grid view details that appear as an overlay to the thumbnail after artwork is dimmed
- Only use Return_Label prop when label/videoplayer title contains a period
- Added chapter markers and chapter label to seekbar during video playback https://github.com/realcopacetic/skin.copacetic/issues/71
- Fixed spacing for wider MPAA flags in video playback breadcrumb https://github.com/realcopacetic/skin.copacetic/issues/70

**1.1.13**
- script.upnext close button fix https://github.com/realcopacetic/skin.copacetic/issues/62
- Added resolution label to breadcrumb for grid https://github.com/realcopacetic/skin.copacetic/issues/63
- Added option to turn off infoscreen star ratings https://github.com/realcopacetic/skin.copacetic/issues/64
- Disable OSD autoclose when another settings window is open on top of OSD https://github.com/realcopacetic/skin.copacetic/issues/65
- Added default control for videoinformation and addoninformation https://github.com/realcopacetic/skin.copacetic/issues/58

**1.1.12**
- Compare cropped clearlogo dbid with listitem dbid to ensure only displays on correct items
- Hide breadcrumb label on list view when it is the same as listitem.label to avoid duplication https://github.com/realcopacetic/skin.copacetic/issues/48
- Add container level transitions on themoviedb helper plugin menu windows
- Misc bug fixes for MyPVRGuide and PVRGuideInfo
- Fix for fullscreen info being cut off

**1.1.11**
- Fixed info widget for similar tv shows from studio to use network ID to lookup instead for plugin content
- Added hardcoded LibreELEC settings shortcut to shutdownmnu https://github.com/realcopacetic/skin.copacetic/issues/54
- New window animations for continuous video playback during PVR 
- MyPVRGuide and PVRGuide info alphas - Request for feedback

**1.1.10**
- Refinement of new visualisation screen

**1.1.9**
- Debugging off

**1.1.8**
- Fix for Linux issues with skin.shortcuts by renaming Overrides.xml to overrides.xml https://github.com/realcopacetic/skin.copacetic/issues/43
- Fix for networksetup window visibility condition problem https://github.com/realcopacetic/skin.copacetic/issues/46
- Fix for broken visibility condition preventing seekbar and fullscreen info displaying on pause/playback https://github.com/realcopacetic/skin.copacetic/issues/42
- Fix for missing albumcover during playback on musicvisualisation screen by switching from Player.Art(Thumb) with MusicPlayer.Cover https://github.com/realcopacetic/skin.copacetic/issues/36
- Fix for missing fanart in musicvisualisation which can be used to enable slideshow in addons such as Radio Paradise and Artist slideshow
- New visualisation layout options

**1.1.7**
- Attempted fix for Linux issues with skin.shortcuts implementation in Copacetic

**1.1.6**
- Fixed music OSD label when Previous button selected
- Started work on adding better view support for plugins
- Ability to switch between List (Background), List (Thumbnails) and Grid views for plugins when there is no container content type set (e.g. when browsing menus in TheMovieDB Helper) 
- Removed ability to disable slideshows in order to simplify logic of light theme
- Fixed issue where navigating from settings to a shortcut like TMDB Helper caused background slideshow to become hidden
- Fixed window order issue when modal dialogs called from keyboard shortcut during playback (sometimes they would appear behind the diffuse layer)
- Fixed infoscreen widgets not loading on first opening if they rely on window properties from script by adding fallback variables using ListItems
- Added support for Youtube and other plugins using container.content(videos) for multiple views in myvideonav.xml and for home screen widgets
- Added missing default value for Skin.String(Widget6_Display) so the label isn't missing from the slider in skin settings when configuring Widget 6
- Added dummy PVR windows as potential fix for issue where switching to Copacetic is resetting PVR settings in other skins


**1.1.5**
- Removed visualisation.waveform dependency as this addon is not available on Linux
- Fixed movie infoscreen widget for corresponding set

**1.1.4**
- Added studio flag for Neon
- Changed navigation on home menu to wrap on additional direction press so at the end of the list if you press right again, it will take you back to the list. And at the start, pressing left will take you to the end
- Widgets will also wrap around on second press if there is more than one item in the container
- Optimised screenshots and icons in /resources and /extras/skinsettings folders
- Fixed several infoscreen widgets that weren't working correctly when the source of the list item was a plugin and themoviedbhelper was installed and being used to populate the plugin

**1.1.3**
- Fixed issue introduced in 1.1.1 with wrong multiart displaying on some widgets
- Fixed issue introduced in 1.1.2 where disabled/empty widgets could not be changed in skinsettings 

**1.1.2**
- Fixed issue affecting wrong artwork sometimes being shown in widgets using grid and fanart layout when scrolling backwards
- Fixed multiart behaviour on list/billboard view when main container loses focus
- Fixed artwork displayed on secondary lists for list/billboard view when multiart visible
- Refined user experience of widget settings screen. It should now be easier to see how to configure widgets
- Removed inactive icons from dialogselect window when accessed via skinsettings

**1.1.1**
- Option for thumb or tv show artwork on widgets containing episodes
- New widget settings screen with ability to easily reorder widgets
- Cropped clearlogo window properties are cleared each time a widget is unfocused to avoid issue where clearlogo from previous widget would sometimes be shown momentarily before updating

**1.1.0**
- Dependency added back in for resource.fonts.copacetic
- Fixed colour of notification label when light theme is selected and background slideshow is visible on.container-less screens in myvideonav/mymusicnav
- Fixed colour of notification/volume label when light theme is selected but trailer is auto-playing
- Fix to prevent view-specific notification widget showing on top of video window when trailer is auto-playing
- Fixed center alignment of clearlogo on fullscreen info / pause screen during video playback
- Fixed order of priority for HDR type flag and label. Now both will only fallback to filenames if there is no value for ListItem.HDRType
- Added multiart to background slideshows
- Added kiosk mode in skin settings to lock hidden view menu customisations
- Visualisation window will now hide artwork/info about currently playing song according to standard Player.ShowInfo boolean

**1.0.7**
- Depdency on resource.fonts.copacetic removed while awaiting its approval into Kodi Nexus resources repo

**1.0.6**
- Keyart will now only show in place of posters if 'Prefer keyart for poster views' is selected in skin settings. Previously it would show whenever a clearlogo was present, regardless of this setting

**1.0.5**
- DialogAddonSettings.xml hidden when keyboard or numeric input opened on top
- Fixed GridView being enabled for AddonBrowser.xml even when disabled in skin settings
- Fixed StripView details being hidden during transition between widgets on info screens
- Added addon version number to ListView info breadcrumb in AddonBrowser.xml

**1.0.4**
- Rebuilt artwork controls and animations for List and Billboard views to make more lightweight and improve scrolling when multiart is visible
- Removed duplicate 'ends' label from infoscreen during video playback for video files that are not movies or episodes
- Added System.AddonIsEnabled(xyz) conditions for all use of scripts and plugins including dependencies that are required to be present
- Dependencies for script.copacetic.helper and resource.fonts.copacetic bumped to latest versions
- Added missing progress backing gradient to secondary artwork for Listview Thumbnail / Showcaseview
- Updated MAX logo for new streaming service

**1.0.3**
- Connected to Weblate for submission of future translations as automated pull requests
- Majority of Italian and French translations submitted via Weblate
- Fixed issue when setting up a custom widget where focus would get stuck on Display and you couldn't select Path/Name/Sort method etc
- Added end time for currently playing video to Fullscreen Info / Pause screen (if info on pause screen is enabled in settings)

**1.0.2**
- Fixed 2 msgstr formatting errors in language\resource.language.en_gb\strings.po
- Fixed auto-update button on DialogAddonInfo.xml. Previously even though the label was updating between on/off, it wasn't actually changing the underlying status of the control
- Fixed label for audo-update button on DialogAddonInfo.xml adding a forward slash between the name and the value

**1.0.1**
- Fix for fontset issue causing some users to have issues switching to the skin. Thanks to **beatmasterRS** for providing the fix
- Fix for a bug that caused folder names in gridview for containers with files to sometimes get stuck on the name of a previously focused listitem

**1.0.0** 
- Initial release
