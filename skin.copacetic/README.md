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