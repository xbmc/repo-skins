import os
import xbmc
import shutil
import xbmcgui

OSD = xbmcgui.Dialog()

__sourcepath__ = xbmc.translatePath(os.path.join('special://skin/', 'scripts'))
__sourcefile__ = os.path.join(__sourcepath__, 'Amber.xml')
__targetpath__ = xbmc.translatePath(os.path.join('special://userdata/','keymaps'))

shutil.copy(__sourcefile__, __targetpath__)

OSD.ok("Amber Updated", "This update needs Kodi to be restarted to get all functionality. Please restart Kodi to get all functionality.")