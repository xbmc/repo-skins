import xbmc,xbmcgui
import fileinput,os,sys,re,string

SOURCESFILE = 'special://userdata/sources.xml'
SKINHOME = 'special://skin'
READMODE = 'r'
xml = []

def getvideosource(xml):
	# process all video sources in XML for source names

	IsVideoSource = False

	try:

		f = open(SOURCESFILE , READMODE)
		s = f.read()
		f.close()
		ls = s.split("\n") # This means each new line will be loaded into it's own array.
		
		for l in ls:
		
			l = string.lstrip(l)
			
			if '<video>' in l:
				IsVideoSource = True
				continue
			elif '</video>' in l:
				IsVideoSource = False
				continue
			elif IsVideoSource and '<name>' in l:
				l = string.replace(l, '<name>' , '')
				l = string.replace(l, '</name>' , '')
				xml.append(l)
				continue
	except:
		print str( sys.exc_info()[ 1 ] )
	
def selectsource(xml):	
	# Prompt User for source name

	Listnum = xbmcgui.Dialog().select(xbmc.getLocalizedString(31427) ,xml)
	print (xbmc.getLocalizedString(31427))
	return Listnum
	
def main():
	SourceType = string.replace(str(sys.argv[1:]),"'","")
	SourceType = string.replace(SourceType,"[","")
	SourceType = string.replace(SourceType,"]","")	
	try:
		getvideosource(xml)
		Listnum = selectsource(xml)
		xbmc.executebuiltin("XBMC.Skin.SetString(default-" + SourceType + "source," + xml[Listnum] + ")")
	except IndexError:
		sys.exit(2)

if __name__ == '__main__':
	main()	
