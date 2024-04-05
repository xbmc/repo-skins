# Copacetic [![License](https://img.shields.io/badge/License-GPLv3-blue)](https://github.com/jurialmunkey/skin.arctic.horizon.2/blob/master/LICENSE.txt) [![License](https://img.shields.io/badge/license-CC--NC--SA%204.0-green)](http://creativecommons.org/licenses/by-nc-sa/4.0/)

All code contained in this project is licensed under GPL 3.0.

All designs contained in this work are licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 Unported License.
To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/
or send a letter to Creative Commons, 171 Second Street, Suite 300, San Francisco, California, 94105, USA.

### Credit
---
* __Dodi Achmad on Unsplash__ for image used in addon [fanart.jpg](https://unsplash.com/photos/3qaojaP-6cE). Free for use under Unsplash licence.

### Special thanks
---
* __Hitcher__ for inspiring this project and kickstarting my hopeless mockups into a working codebase. For supporting through the initial designs and providing loads of support and advice.

* __jurialmunkey__ for all the best-practice code examples and forum support.

* __sualfred__ for plenty of inspiration and [script.embuary.helper](https://github.com/sualfred/script.embuary.helper), which provided some key functionality before the release of new Nexus features.

### Changelog
---
**1.1.27**
- Fixed filename case mismatch causing some OSD buttons not to show on Linux-based devices https://github.com/realcopacetic/skin.copacetic/issues/128
- Fixed background slideshow timer stuck on 10 seconds regardless of what was set in skin settings https://github.com/realcopacetic/skin.copacetic/issues/136
- Added a limit of 40 to the container that fetches artwork for home screen menu items when global slideshows or custom playlists not set. Hope is that this will speed up how long it takes to fetch artwork https://forum.kodi.tv/showthread.php?tid=376861&pid=3190882#pid3190882
- Effects sped up slightly (effects slow down reduced from 0.8 to 0.7)

**1.1.26**
- Added fix to prevent multiple volume bars showing when audio is muted and scrolling through home screen widgets
- Cleaned up Now_Playing expressions
- Added Now_Playing for current set using window property from script.copacetic.helper added in 1.0.13 https://github.com/realcopacetic/skin.copacetic/issues/132

**1.1.25**
- Fixed label to show on homescreen screensaver when no clearlogo present
- Added option to make artwork label presistent all the time on all background screens.
- Fixed typo causing wrong localised label to display for genre on infosceen https://github.com/realcopacetic/skin.copacetic/issues/116
- Added always available background label to show name of currently displayed fanart. Enable it in Settings > Copacetic > Background. If disabled, the label will be shown as a fallback during home screensaver if option to show clearlogos is enabled, but clearlogo for current listitem is not present https://github.com/realcopacetic/skin.copacetic/issues/124 https://github.com/realcopacetic/skin.copacetic/issues/120
- Updated paths for remote fontsets served by resources.fonts.copacetic due to change in folder structure in 1.0.5 https://github.com/realcopacetic/resource.fonts.copacetic/issues/4
- Bumped dependency for resources.fonts.copacetic to 1.0.5 due to above issue.
- Bumped dependency for script.copacetic.helper to latest version (1.0.12)
- Fixed OSD issues https://github.com/realcopacetic/skin.copacetic/issues/133
- Fixed undiscovered issue with infolabel on List views
- Made some fixes to notification widgets
- Made some fixes to videoplaylist/musicplaylist
- Made some fixes to visualisation window https://github.com/realcopacetic/skin.copacetic/issues/130
- Added support for artist fanart multiart to visualisation slideshow https://github.com/realcopacetic/skin.copacetic/issues/47

Still to do:
- OSD : (still to update --> Buttons, Settings, Stars, icon_Player)
- login background
- Create radio station button


**1.1.24**
- Disabled debugging flag

**1.1.23**
- Fixed alignment bug and missing scrollbar on smartplaylisteditor window that could cause list of rules to exceed the sie of the panel https://github.com/realcopacetic/skin.copacetic/issues/129
- Added star rating widget to videoosd controls allowing user to view/set a userrating from videosd screen
- Added language and subtitle quick toggles to videoosd screen 

**1.1.22**
- Added navigation from new infoscreen extra details pane. Pressing down will navigate to widgets.
- Removed conditions on home background requiring library to have content as this was preventing people using plugins for their content from setting backgrounds for home menu items via skinshortcuts https://forum.kodi.tv/showthread.php?tid=373114&pid=3189521#pid3189521
- Refined skinsettings for global slideshow picker. Now you will only be able to select options from the Slider that are supported by your local library. You can use a Custom plugin path and, if no local library found, Custom will be the default option selected.
- Added skin support for new script.copacetic.helper feature (1.0.11) to fetch fanarts from plugin sources for global background slideshows https://github.com/realcopacetic/skin.copacetic/issues/108
- Choices in Global background slider now locked based on library status. If no local library present, only 'Custom path' option will be available
- Fixed bug in now_playing expressions causing artwork from plugins without a DBID to be coonsidered playing and dimmed.
- Fixed missing now-playing icon from Billboard view
- Updated OSD controls https://github.com/realcopacetic/skin.copacetic/issues/110 https://github.com/realcopacetic/skin.copacetic/issues/105 

**1.1.21**
- Added a fallback label for when clearlogo is not present in home screen background slideshow https://github.com/realcopacetic/skin.copacetic/issues/120
- Refined now playing expressions to make for better matching of currently displayed tv show/ season list item to videoplayer tvshowdibid. This will avoid two shows with the same name both showing as playing now when an episode from one is played https://github.com/realcopacetic/skin.copacetic/issues/100
- Added studio flag for Mubi https://github.com/realcopacetic/skin.copacetic/issues/119
- Added extra condition preventing windowopen animation on Home screen background artwork when returning to the homescreen immediately after ending playback of a video (Window.Previous(fullscreenvideo) + !Player.HasVideo). The reason for this is that, for an unknown reason, the window open animation was not triggering in this particular instance, causing the homescreen background not to load until navigating to another window and back to home.
- Cleaned up some naming conventions between script.copacetic.helper and skin.copacetic

**1.1.20**
- Added additional details to info screens for local movies and episodes. Access 'Details' tab by pressing left on the infoscreen menu.
https://github.com/realcopacetic/skin.copacetic/issues/116
https://github.com/realcopacetic/skin.copacetic/issues/115
- Added option to disable hardcoded shutdownmenu items (Home, Light/Night, LibreELEC) in skin settings under Copacetic > General > Menus https://github.com/realcopacetic/skin.copacetic/issues/121
- Added new LibreELEC shortcut in skin settings under Copacetic > General > Menus https://github.com/realcopacetic/skin.copacetic/issues/121
- New studio flags for Ascot Elite Entertainment, Gravitas Ventures, Hanway Films, IM Global, Open Road, RankinBass, Screen Media, Toei, Toei Animation, Vertical, Well Go USA https://github.com/realcopacetic/skin.copacetic/issues/119

**1.1.18-19**
- Fixed rogue mask that was visible during Auto trailer playback https://github.com/realcopacetic/skin.copacetic/issues/105
- Container Content change transition added when navigating files view seasons > episodes
- Changed folder structure of secondary fontset to avoid '+' for Linux **resource.fonts.copacetic v1.0.4 required** https://github.com/realcopacetic/resource.fonts.copacetic/issues/2
- Added support for Simplified Chinese (Inter + Notos Sans SC) **resource.fonts.copacetic v1.0.4 required** https://github.com/realcopacetic/resource.fonts.copacetic/issues/3
- New BFI studio flag
- Fixed logic of actor credits widget, so that it will display even if they only have 1 credit that is NOT the item currently being viewed.
- New studio flags for American International Pictures (AIP), Shudder, Toho, Filmnation, New World Pictures, The Ladd Company, Hammer, Animax as per request from @"loki00" https://forum.kodi.tv/showthread.php?tid=373114&page=10#:~:text=Warning%20Level%3A%200%25-,%23145,-2024%2D03%2D12
- Simplified transitions between Windows when sharing global backgrounds to create a smoother UX feel
- Fixed widget scrollbars not appearing on first window load for home screen or info screens
- Simplified container transition expressions and extended transitions to addons so there is a transition between list levels (e.g. add-on browser > my add-ons > look and feel, etc)

**1.1.17**
- Fixed bug causing dialogaddoninformation to lose focus on opening for some addons
- Added fade effect to infoscreen thumbnail when shutdownmenu visible on top
- Added optional shutdown menu shortcut to hidden views menu https://github.com/realcopacetic/skin.copacetic/issues/90
- Fixed error in in skinshortcuts management window - non-existent control 309
- Moved custom playlist background slideshow from homescreen to global via script.copacetic.helper 1.0.9
- Rearranged skin settings to consolidate all background settings in one screen
- When global background slideshow is showing or live tv is playing, removed fade in/out transitions between home, addonbrowser, settings screens, tvguide and tv/radio search for a smoother experience. This required removing Ken Burns effect from these background slideshows.
- Removed some of the unnecessary transitions between different views when navigating through addonbrowser menus
- Fixed multiart bug breaking artwork for billboard view in programs
- Fixed typo breaking fix for previous issue https://github.com/realcopacetic/skin.copacetic/issues/60
- Fixed colour of volume indicator on home screen widgets when light theme selected
- Added disabled indicator to addonbrowser for disabled addons in List and Grid views, plus installed indicator for installed addons when browsing repos
- Redesigned script-upnext widget and added options to skinsettings to enable/disable addon and choose art type. https://github.com/realcopacetic/skin.copacetic/issues/102

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
