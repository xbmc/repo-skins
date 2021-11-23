## Mimic-LR ##


Mimic-LR is a continuation of the Mimic skin (which was discontinued as of kodi 18) to keep Mimic alive for Kodi Matrix (and beyond), which includes the Lyrebird updates.

This was renamed from the former Lyrebird-Rmod fork.

This adds the following features to the original Mimic skin:

1.  Some updates to the PVR guide to display the Show poster, rather than the channel icon, as well as other adjustments/fixes

2.  This supports the weather.noaa (https://github.com/randallspicher/weather.noaa) weather plugin, which fetches weather reports from the National Weather Service https://www.weather.gov (eg NOAA).  weather.gov provides seperate forecasts for Days and Nights, rather than just one per day.   It also provides much more verbose forecasts, so there's now a Detailed weather screen. In addition, there is the option to display the weather.gov weather icons (which are much more expansive than Kodi's icons, and include things like the % chance of rain on them)

3.  There's a feature to display the Actor-Role based images (ala thetvdb.com images), that is, show a different character image of the actor in that TV show (or Movie), instead of always showing the same generic image that Kodi scrapes.  Note, that this is accomplished by placing images in a directory (path configured in the skin "extra" settings),  where the image name is  "Actor - Role.jpg".  The actor name and role must match what kodi has in the database for that actor's name and role.  In many cases, this will require using .nfo files to "clean up" many of the names to clean out special chars which cannot be used in filenames, such as when thetvdb uses a / to display multiple roles, "Some Actor as Joe/Bob/Bob's Ghost" 

For example:,  
  *   /media-share/People/Bruce Campbell - Ash Williams.jpg
  *   /media-share/People/Bruce Campbell - Autolycus.jpg
  *   /media-share/People/Bruce Campbell - Brisco County Jr..jpg
  *   /media-share/People/Bruce Campbell - Final Shemp.jpg
  *   /media-share/People/Bruce Campbell - Jack Stiles.jpg
     
4.  You can use external files for Genres/tags and Music Source icons.  (see properties under the skin's Extra settings).  The icon paths are set via the settings.

For example:
  *   /media-share/icons/movies
  *   /media-share/icons/tvshows
  *   /media-share/icons/music

These will show up in the Thumbnail view, and List view, or on various home-page widgets when displaying Genres, Music Sources, or Tags.  
Note that movies and tvshows are separated, you can have different genre icons for tv and movies. (or copy the same icons into both, your choice)
The names must exaclty match the names of the Genre/Tag/Souce, and can have either jpg/png/gif extensions.
example: /media-share/icons/movies/Adventure.png

5. Various other fixes/changes, (example, addtional full-screen-music views can be togged though)

THANKS AND CREDITS:

	** $Rufo
		- For Lyrbird

	** @Braz
		- For creating Mimic, the code of which is the basis for Lyrebird. Thank you for your blessing in starting this project.
		
	** @Wintermute0110
		- For his continual work on Advanced Emulator Launcher and its sister projects. For always being somebody who has tolerated the whimsical nature of
		  my development projects. Generally being an all around ace guy and someone who actively takes time to help out.
		  
	** @Chrisism
		- For always being helpful and humble, contibuting silently in the background to Advanced Emulator Launcher and starting up the Game Studios flag collection
		  which Lyrebird makes use of. Top guy who never seeks thanks but deserves it. =)
		  
	** @Paradix
		- For your work on Cirrus Extended 3 back in the day, without it there wouldn't have been a beginning and without your initial encouragement back then things
		  wouldn't be where they are now. Wherever you are in life, hope everything is roses. Cheers, bud.
		  
	** @Keibertz
		- For creating a mod for Cirrus Extended (http://myxbmc.bplaced.net/blog/?p=736) that was far too nice to remain as obscure as the location it was found in.
		  The design formed the start of the Keibertz view in Lyrebird, the name derived in honor of its origins.
		  
	** @Jondar
		- For contibuting the fix to add Australian classification flags. Appreciate you saving me the time in doing so and giving back to the project.
		
	** @Rdyott & @Gman12
		- For your continued interest and enthusiasm for the project.

***


