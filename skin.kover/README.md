# KOver [A Customizable KODI skin]

KOver (for KODI Overlay) offers a different approach of KODI skins. Not just purely designed, it also offers to the user the possibility to **customize it and make thousands of configurations**.
Born to be a PVR oriented skin with a half screen view in mind, the way the layout was coded evolved to allow to dynamically **change positions, sizes, colors and much more to your needs**.
However, because spending time into making it to look how you want is not the taste of everyone, **KOver can also build itself** with some presets.

* [Official Development thread](http://forum.kodi.tv/showthread.php?tid=207581)
* [Official Community page](https://plus.google.com/u/0/b/102331461184341553815/communities/101384208271707123426)
* [Support KOver - Donate](http://pledgie.com/campaigns/30029)

![KOver screenshot](https://raw.githubusercontent.com/Jayz2K/skin.KOver/master/_screenshots/screenshot001.jpg "KOver!")

## Menu

* [First start and Basic features](#first-start-and-basic-features)
  * [Auto Build](#auto-build)
    * [Auto Build : Viewtypes](#auto-build--viewtypes)
    * [Auto Build : Colors](#auto-build--colors)
  * [Customizing Home](#customizing-home)
    * [Customizing Home menu Items](#customizing-home-menu-items)
    * [Select Viewtype](#select-viewtype)
* [Advanced Features](#advanced-features)
  * [KOver Designer](#kover-designer)
    * [Sections](#sections)
    * [Viewtypes](#viewtypes)
      * [Exception for EPG](#exception-for-epg)
      * [Exception for Extended Infos](#exception-for-extended-infos)
    * [Blocs](#blocs)
    * [Settings](#settings)
      * [Common](#common)
        * [Sizing / positioning limitations](#sizing--positioning-limitations)
        * [IdleFade](#idlefade)
      * [Wallpaper](#wallpaper)
      * [General Setup](#general-setup)
      * [Blocs Background](#blocs-background)
      * [Bloc 1 : List](#bloc1--list)
      * [Bloc 2 : Infos](#bloc2--infos)
      * [Bloc 3 : Art](#bloc3--art)
      * [Bloc 4 : Video / Home art](#bloc4--video--home-art)
      * [Bloc 5 : Submenu](#bloc5--submenu)
    * [Working with Templates](#working-with-templates)
  * [KOver Color Tool](#kover-color-tool)
  * [Import / Export features](#import--export-features)
    * [Import](#import)
	* [Export](#export)
	  * [Backup](#backup)
	  * [Export color scheme](#export-color-scheme)
	  * [Export viewtypes](#export-viewtypes)
* [Expert Feature : custom lists](#expert-feature--custom-lists)
  * [Example for Designer_CustomList1.xml](#example-for-designer_customlist1xml)
 

## First start and Basic features

When installing KOver and launching it for the first time, it will write some settings (minimum requirements) for the skin to display correctly. Straight after the first start, only one [viewtype](#viewtypes) per section will be available. You have then 2 options :

* Use the [autobuild](#auto-build) feature to populate viewtypes
* Use the [Designer](#kover-designer) to build your own viewtypes

### Auto Build

`SETTINGS > SKIN SETTINGS > AUTOBUILD`

As said, the auto build feature is made for you to not spend time making all your [viewtypes](#viewtypes). It's also a good way to see what is possible to do with KOver before you start using the [Designer](#kover-designer). You will be able to modify the built [viewtypes](#viewtypes) after applying the auto build.

#### Auto Build : viewtypes

You can populate KOver with 5 different [viewtypes](#viewtypes) sets : 2 for a PVR use and 3 for a fullscreen use.

| Name | Mode | Description |
| :-----------: | :------: | ----------- |
| **PVR : Horizontal** | Half screen | Provides a set of [viewtypes](#viewtypes) in horizontal mode. |
| **PVR : Vertical** | Half screen | Provides a set of [viewtypes](#viewtypes) in vertical mode. |
| **Fullscreen : Classic** | Full screen | Provides a set of [viewtypes](#viewtypes) using all screen space. |
| **Fullscreen : Two-thirds** | Full screen | Provides a set of [viewtypes](#viewtypes) using 2/3 of the screen. Gives a more confortable view. |
| **Fullscreen : Hybrid** | Full screen | Provides a set of [viewtypes](#viewtypes) combining some of the 2 above presets. |

#### Auto Build : colors

You can apply 4 built-in [color schemes](#kover-color-tool).

| Name | Description |
| :-----------: |  ----------- |
| **Default dark** | Apply a dark/colorful color scheme. A good one for TVs. It's also the one provided at first launch. |
| **Default light** | Apply a light/colorful color scheme. A good one for computer screens. |
| **Default FTV style** | Apply a dark/orange color scheme. Reproduces the FTV UI colors. |
| **Default Flat style** | Apply a dark/blue color scheme. Gives a 'Flat' style to the UI. |

### Customizing Home

`SETTINGS > SKIN SETTINGS > GENERAL SETUP > EDIT HOME MENU ...`

You can customize KOver's home menu like many other skins by setting your menu items and icons. But KOver pushes the personal settings further by extending [viewtypes](#viewtypes) to the Home menu. You can build [viewtypes](#viewtypes) for Home like you make them for libraries.
When using the [autobuild](#autobuild) feature, KOver provides 3 default [viewtypes](#viewtypes) you can choose. At first launch, the first [viewtypes](#viewtype) is set by default to show you only the submenus. You might want to change this by setting to show widgets instead.

#### Customizing Home menu items

| Name | Feature | Description |
| :-----------: | :-----------: | ----------- |
| **Select widget** | Common | Choose the widget to display for the item. |
| **Select background** | Common | Choose the picture to display as wallpaper. |
| **[Select viewtype](#select-viewtype)** | KOver | Choose the viewtype to display for the item. See [Select viewtype](#select-viewtype) |
| **Select Bloc 4 Picture** | KOver | Choose an additional picture to display in [Bloc 4](#bloc4--video--home-art). |
| **Choose shortcut** | Common | Choose the target for the item. |
| **Set label** | Common | Choose the name to display for the item. |
| **Change icon** | Common | Choose the icon to display for the item. |
| **Change action** | Common | Overrides the onclick action. |
| **Customize submenu** | Common | Open the next level settings for the item. |
| **Move left** | Common | Reorder items. |
| **Move right** | Common | Reorder items. |
| **Add** | Common | Add a new item. |
| **Delete** | Common | Delete item. |

#### Select viewtype

As explained above, KOver allows you to build your own [viewtypes](#viewtypes) and attach them to any Home item.
[View Select viewtype in action (Home)](https://plus.google.com/102331461184341553815/posts/YsYaCubdosu). 

> At first launch, you won't see any widget until you set a [viewtype](#viewtypes) made for it (the default one only shows submenu).

If you haven't made viewtypes changes in the designer or if you applied a preset from [autobuild](#autobuild), you will get the 3 following [viewtypes](#viewtypes) available when you `Select viewtype`

| Name | Description |
| :-----------: | ----------- |
| **Home Layout** | This is the default [viewtype](#viewtypes). Only shows submenu for the mainmenu item. |
| **Libraries** | This is a widget [viewtype](#viewtypes). Shows the item's widget and switches to submenu using navigation. |
| **Live TV** | This is a widget [viewtype](#viewtypes). Shows the item's widget and switches to submenu using navigation. Optimized for live tv widget. |

## Advanced features

Advanced features are what makes KOver different. 3 powerful tools will let you make thousands of combinations between layouts and colors.

* [KOver Designer](#kover-designer) : A WYSIWYG editor for viewtypes building
* [KOver Color tool](#kover-color-tool) : A WYSIWYG editor for color schemes creation
* [Import / Export](#import--export-features) : A set of import / export feature for sharing or importing community creations made with Designer and Color tool

**Since those are advanced features, they are disabled by default. Enable them in**

`SETTINGS > SKIN SETTINGS > GENERAL SETUP`

### KOver Designer

![Designer screenshot](https://raw.githubusercontent.com/Jayz2K/skin.KOver/master/_screenshots/screenshot002.jpg "Designer!")

KOver Designer is the core of KOver. The whole skin is built around this powerful layout manager. The designer has been made to be as simple as possible for a straight forward use. It works with a tree logic :

> Section where you want to create the viewtype
    > The viewtype you want to create / editor
	    > The bloc inside the viewtype you want to configure
		    > The setting you want to change
			
[View Designer in action](https://plus.google.com/102331461184341553815/posts/aaZW3tXFNN4)
			
#### Sections

You can create / change the [viewtypes](#viewtypes) for the following sections

| Name | Description |
| :-----------: | ----------- |
| **Home** | [Viewtypes](#viewtypes) 1 to 9 will be selectable in the "[Edit Home menu ...](#customize-home)". Each available viewtype can be attached to any main menu item. |
| **Videos** | [Viewtypes](#viewtypes) 1 to 9 will be selectable in the library context menu. Apply to videos, movies and tvshows (video content). |
| **Music** | [Viewtypes](#viewtypes) 1 to 9 will be selectable in the library context menu. Apply to artists, albums (music content). |
| **TV** | [Viewtypes](#viewtypes) 1 to 9 will be selectable in the library context menu. Apply to channels, epg (PVR content). See [exception for epg](#exception-for-epg). |
| **Pictures** | [Viewtypes](#viewtypes) 1 to 9 will be selectable in the library context menu. Apply to pictures. |
| **Programs** | [Viewtypes](#viewtypes) 1 to 9 will be selectable in the library context menu. Apply to addons, programs and some addons content. See [exception for extended infos](#exception-for-extended-infos). |
| **Weather** | [Viewtype](#viewtypes) 1 only applies to Weather. Weather window (KODI) doesn't manage viewtypes. |

#### Viewtypes

In almost all cases, you can create / change up to 9 viewtypes per [section](#sections). 
You can create a new viewtype in an empty slot with :

* Apply Default Horizontal / Vertical
* Copy [template](#working-with-templates) to view.

You can access more options for an existing viewtype by clicking on ViewX or it's name. You will then be able to :

* Rename the viewtype (the name that will be displayed as selectable)
* Copy view to [template](#working-with-templates).

###### Exception for epg

> EPG window (KODI) doesn't manage [viewtypes](#viewtypes). In order to customize it, use only the first [viewtype](#viewtypes) in the **TV** [section](#sections).

###### Exception for extended infos

> Extended Infos window (SCRIPT) doesn't manage viewtypes. In order to customize it, use only the first [viewtype](#viewtypes) in the **Programs** [section](#sections).

#### Blocs

Each viewtype is made of wallpaper, furnitures, 5 blocs and their background. Each bloc has its specific content

| Name | Description |
| :-----------: | ----------- |
| **[Wallpaper](#wallpaper)** | You can set the wallpaper's style, choose your own picture or just hide it. |
| **[General Setup](#general-setup)** | Change the layout orientation or sidebar, dialog panel and separators options. |
| **[Blocs background](#blocs-background)** | Change the position, size and visibility of the blocs barckground. |
| **[Bloc 1 : List](#bloc1--list)** | Dedicated to the main nav list (ex. movies, songs). Change the position, size, visibility and list type. |
| **[Bloc 2 : Infos](#bloc2--infos)** | Dedicated to the selected item informations (ex. Duration, plot and iten position in the list). Change the position, size and visibility. |
| **[Bloc 3 : Art](#bloc3--art)** | Dedicated to the selected item art (ex. Fanart, thumb). Change the position, size and visibility. |
| **[Bloc 4 : Video / Home art](#bloc4--video--home-art)** | If you're in home [section](#select-viewtype), display the homeart set in [Edit Home menu ...](#customize-home) .If you're not in Home, embed the current playing video. Change the position, size and visibility. |
| **[Bloc 5 : Submenu](#bloc5--submenu)** | Dedicated to the item context menu. Change the position, size and visibility. Also toggles visibility of the other blocs. |

#### Settings

Each bloc has a certain amount of settings you can give different values. Some are [commons](#common) to most of the blocs, others are specifics.

> Please note that some settings will lock others depending on the given value. For example like for [Sizing / positioning limitations](#sizing--positioning-limitations).

##### Common

| Name | Description |
| :-----------: | ----------- |
| **Visibility** | You can choose between `VISIBLE` `HIDDEN` `IDLEFADE` `ONFOCUS`. ONFOCUS is available in bloc 5 only. [See idlefade here](#idlefade). |
| **Horizontal position (column)** | Set the element's start position on the grid (horizontal). You can choose between `A` `B` `C`. |
| **Vertical position (row)** | Set the element's start position on the grid (vertical). You can choose between `A` `B` `C`. |
| **Width** | Set the element's amount of columns on the grid. You can choose between `1COLUMN` `2COLUMN` `3COLUMN`. |
| **Hight** | Set the element's amount of rows on the grid. You can choose between `1ROW` `2ROW` `3ROW`. |
| **Background style** | You can choose between `FANART` `COLOR` `IMAGE` . `FANART` is selectable for [Wallpaper](#wallpaper) only. |
| **Background image** | You can browse for your own picture / pictures set. |

###### Sizing / positioning limitations

> It's usefull for you to know that you CAN'T set a bloc outside the Blocs Background or bigger than it.
Also, reducing / moving the blocs background will move or reduce the blocs inside it in order to fit the new configuration.

###### Idlefade

> The Idelfade feature makes the element to completely fade after a certain amount of seconds. The time fater idlefade starts can be set in. [View IDLEFADE in video](https://plus.google.com/102331461184341553815/posts/jVhn38FkcsN).

`SETTINGS > SKIN SETTINGS > GENERAL SETUP`

##### Wallpaper

Specifics :

| Name | Description |
| :-----------: | ----------- |
| **Video on top** | You can choose between `VISIBLE` `HIDDEN` . When `VISIBLE`, it always show the playing video over the Background setting. |

##### General setup

Specifics :

| Name | Description |
| :-----------: | ----------- |
| **Layout Orientation** | Set the whole layout orientation. You can choose between `HORIZONTAL` `VERTICAL`. Mostly used for sidebar position. |
| **Sidebar Position** | Set the sidebar position (sticks to borders). You can choose between `LEFT` `RIGHT` `TOP` `BOTTOM`. |
| **Sidebar Autohide** | Set the sidebar to autohide. You can choose between `DISABLED` `ENABLED` `IDLEFADE`. When blocs background is not 3X3, ENABLED is not available. [See idlefade here](#idlefade). |
| **Dialog panel Position** | Set the Dialog panel position. You can choose between `LEFT` `RIGHT` `TOP` `BOTTOM`. |
| **Dialog slide Type** | Set the way the dialog panel opens. You can choose between `PUSH` `OVER`. PUSH slides all blocs when the panel's edge reaches one of them. OVER just slide over everything. [View Dialog slide Type in video](https://plus.google.com/102331461184341553815/posts/AbV9pR8vYBN). |
| **Horizontal Separator** | Add a 12 pixels gap between blocs (vertically). You can choose between `AB` `BC` `NONE`. |
| **Vertical Separator** | Add a 12 pixels gap between blocs (horizontally). You can choose between `AB` `BC` `NONE`. |

> Also it's important to note a particularity for Home [section](#sections). Since setting different positions for the sidebar makes the navigation in the mainmenu impossible, only the first viewtype has the options `Layout Orientation` and `Sidebar Position`. Setting them here will apply to all other viewtypes in Home [section](#sections).

##### Blocs background

No specifics

##### Bloc1 : List

Specifics :

| Name | Description |
| :-----------: | ----------- |
| **List Type** | Set the look of the list. You can choose between `FIXEDLIST` `WIDELIST` `POSTER` `BANNER` `FANART` `TILES` `CARD` `CUSTOM1` `CUSTOM2` `CUSTOM3`. |
| **List Orientation** | Set the list's scrolling orientation. You can choose between `HORIZONTAL` `VERTICAL`. |
| **Go Submenu** | Set the position for submenu to open when you reach the end of the list. You can choose between `LEFT` `RIGHT` `UP` `DOWN`. |
| **Scroll Indicator** | Show scroll indicators over the list. You can choose between `VISIBLE` `HIDDEN`. Matches the List Orientation. |

##### Bloc2 : Infos

No specifics

##### Bloc3 : Art

Specifics :

| Name | Description |
| :-----------: | ----------- |
| **Art Type** | Set art to show in the bloc. You can choose between `FANART` `POSTER` `THUMB`. When ExtraFanart is enabled, you can also choose `CLEARART` `CLEARLOGO` `DISCART`. |
| **Scroll Indicator** | Show scroll indicators over the arts. You can choose between `VISIBLE` `HIDDEN`. Matches the Bloc1 : List Orientation. |

##### Bloc4 : Video / Home art

No specifics

##### Bloc5 : Submenu

Specifics :

| Name | Description |
| :-----------: | ----------- |
| **List Type** | Home [section](#sections) only !. Set the look of the list. You can choose between `FIXEDLIST` `WIDELIST` `POSTER` `BANNER` `FANART` `TILES` `CARD`. |
| **List Orientation** | Home [section](#sections) only !. Set the list's scrolling orientation. You can choose between `HORIZONTAL` `VERTICAL`. |
| **Bloc1 Visibility on Focus** | Set the [Bloc 1](#blocs) visibility if Bloc5 has focus. You can choose between `VISIBLE` `HIDDEN`. |
| **Bloc2 Visibility on Focus** | Set the [Bloc 2](#blocs) visibility if Bloc5 has focus. You can choose between `VISIBLE` `HIDDEN`. |
| **Bloc3 Visibility on Focus** | Set the [Bloc 3](#blocs) visibility if Bloc5 has focus. You can choose between `VISIBLE` `HIDDEN`. |
| **Bloc4 Visibility on Focus** | Set the [Bloc 4](#blocs) visibility if Bloc5 has focus. You can choose between `VISIBLE` `HIDDEN`. |
| **Go Back** | Set the position for submenu to close when you reach the end of the list. You can choose between `LEFT` `RIGHT` `UP` `DOWN`. |
| **Scroll Indicator** | Home [section](#sections) only !. Show scroll indicators over the list. You can choose between `VISIBLE` `HIDDEN`. Matches the List Orientation. |

#### Working with templates

When you have set a [viewtype](#viewtypes), you might want to copy it and only change a few settings like `List type` or `Visibility`. Templates are made for that.
3 templates slots are available for you to copy existing views into it. You can then recall them to apply on empty [viewtypes](#viewtypes) or override an existing one.

You can access the templates menu by clicking on the [viewtype](#viewtypes) name. The following options are available :

| Name | Description |
| :-----------: | ----------- |
| **Copy View to Template** | Copy all the settings of the current viewtype in the chosen template. |
| **Copy Template to View** | Copy all the settings from the chosen template to the viewtype. |
| **Export Template** | Export all the settings of the chosen template in a zip file. |
| **Delete Template** | Delete all the settings in the template. |

> Please note that copying in both ways will override all targets' settings. You won't be prompted for confirmation.

> Exporting a template keeps the template number. That means exporting template 1 will result in filling template 1 at zip import. Also importing a template will override the template's content.

> It's recommended for export to give a relevant name and the template number to ensure restoring the correct one.

### KOver Color tool

![Colortool screenshot](https://raw.githubusercontent.com/Jayz2K/skin.KOver/master/_screenshots/screenshot003.jpg "Colortool!")

Many elements of KOver can be colorized. Use the color picker in the Color tool or type directly your own AARRGGBB code. 
AARRGGBB codes can be obtained easily with an online color picker.

### Import / Export features

`SETTINGS > SKIN SETTINGS > IMPORT / EXPORT`

#### Import

You can use the import feature to apply any kind of cusom settings to KOver (as long as it has been made from KOver).
With this single function you can import :

* [Templates](#working-with-templates)
* [Viewtypes](#viewtypes)
* [Color schemes](#kover-color-tool)

> Please note that import will override all targets' settings. You won't be prompted for confirmation.

#### Export

You can use the export feature to make backups, build viewtypes sets or color schemes. You will then be able to share what you've done between devices or friends or over communities.
KOver backup is divided in 3 categories : 

* Backup : Mostly for saving your settings for reinstallation or apllying settings on another devices
* Export color scheme : For saving what you've done in the [Color tool](#kover-color-tool)
* Export viewtypes : For saving what you've done in the [Designer](#kover-designer)

> You will be prompted to give a name to the exported file. If you make many sets, give them a relevant name to retrieve them or share them. Ex. for color schemes : KOver.Colors.MyGreatSet.zip and for Home viewtypes : KOver.HomeViews.MyCoolViews.zip.

##### Backup

3 options are available :

| Name | Description |
| :-----------: | ----------- |
| **Backup all viewtypes** | This will generate a zip containing the current [viewtypes'](#viewtypes) settings from ALL [sections](#sections). It doesn't include the [Home](#customizing-home-menu-items) settings. |
| **Backup Home menu** | This will generate a zip containing the [Home](#customizing-home-menu-items) settings only. |
| **Full backup** | This will generate a zip containing [viewtypes'](#viewtypes) settings from ALL [sections](#sections), the [Home](#customizing-home-menu-items) settings and current [Color scheme](#kover-color-tool). |

##### Export color scheme

This will generate a zip containing the current [Color scheme](#kover-color-tool).

##### Export viewtypes

| Name | Description |
| :-----------: | ----------- |
| **Export all 'Home' viewtypes** | This will generate a zip containing [viewtypes'](#viewtypes) settings from Home [section](#sections) only. |
| **Export all 'Video' viewtypes** | This will generate a zip containing [viewtypes'](#viewtypes) settings from Video [section](#sections) only. |
| **Export all 'Music' viewtypes** | This will generate a zip containing [viewtypes'](#viewtypes) settings from Music [section](#sections) only. |
| **Export all 'Pictures' viewtypes** | This will generate a zip containing [viewtypes'](#viewtypes) settings from Pictures [section](#sections) only. |
| **Export all 'TV' viewtypes** | This will generate a zip containing [viewtypes'](#viewtypes) settings from TV [section](#sections) only. |
| **Export all 'Programs' viewtypes** | This will generate a zip containing [viewtypes'](#viewtypes) settings from Programs [section](#sections) only. |

## Expert feature : custom lists

**This feature is reserved for users with some coding skills**

Custom lists is a feature that allows you to code your own list types in [Bloc 1](#bloc1--list) with the benefits of the built-in layout management.
That means coding those lists following the explainations will make them to adapt themselves in size, position and colors to the [Kover Designer's](#kover-designer) settings.

In the [Designer](#kover-designer), under [Bloc 1](#bloc1--list) the List Type settings contains 3 values called `CUSTOM1` `CUSTOM2` `CUSTOM3`.
Those are linked as follow :

| List Type | File linked to |
| :-----------: | ----------- |
| **CUSTOM1** | [Designer_CustomList1.xml](./16x9/Designer_CustomList1.xml) |
| **CUSTOM2** | [Designer_CustomList2.xml](./16x9/Designer_CustomList2.xml) |
| **CUSTOM3** | [Designer_CustomList3.xml](./16x9/Designer_CustomList3.xml) |

> You can find those files in the skin's folder ./skin.KOver/16x9/

Explanations are included directly in the files :

### Example for Designer_CustomList1.xml

```xml
<?xml version="1.0" encoding="UTF-8"?>
<includes>
	<!-- BUILD YOUR OWN LIST TYPE INSIDE KOver 

		You will find below a quick guide to give you more details about variables and settings and help you build your own list.
		Before you start, and for you to get the best results, keep in mind that KOver's grid is made of 9 spaces with a 636 (width) x 356 (height) pixels size.
		If you want your list to fit prefectly when resizing, make your <itemlayout>, <focusedlayout> a multiple of this file :

		Ex : Fanart view is set with <itemlayout width="636" height="356">. Ratio 1:1
		Ex2 : Poster view is set with <itemlayout width="212" height="356">. Ratio 1:3 on width and 1:1 on height

		KOver also handles a dynamic sizing giving you the layout the whole size set in Designer (meaning if you set 1column x 1row, size will be automatically 636x356
		and if you set 3column x 3row will be 1908x1068 ratio 3:1). For this, you can use the following code :

		<itemlayout width="$PARAM[width]" height="$PARAM[height]">

		>> VARIABLES :
		______________

		The following variables are available inside the list and set to provide the best matching imformations :

		>>>Labels :

		$VAR[B1Title] : Usually the ListItem.Title ot ListItem.Label + fallbacks
		$VAR[B1SubTitle] : Additional informations of an item (ex : duration for movies, start time / end time for PVR, etc.)

		>>>Pictures :

		$VAR[ThumbPortrait] : Return a Portrait picture of an item. Usually Poster or thumb (if episodes) + fallback pictures
		$VAR[ThumbLandscape] : Return a Landscape picture of an item. Usually Fanart or thumb (if episodes) + fallback pictures

		>>>Colors (Colors set in the Color tool) :

		$INFO[Skin.String(Color.B1Bg)] : Bloc 1 background 
		$INFO[Skin.String(Color.B1ItemNF)] : Bloc 1 unselected item (itemlayout) background
		$INFO[Skin.String(Color.B1Txt1NF)] : Text 1 unselected item (itemlayout) usually used for titles and icons
		$INFO[Skin.String(Color.B1Txt2NF)] : Text 2 unselected item (itemlayout) usually used for subtitles
		$VAR[CategoryColor] : Bloc 1 selected item (focusedlayout) background. Changes with the category
		$INFO[Skin.String(Color.B1IconBg)] : Icon background overlay (focusedlayout). Shows over the Bloc 1 selected item
		$INFO[Skin.String(Color.B1Txt1F)] : Text 1 selected item (focusedlayout) usually used for titles and icons
		$INFO[Skin.String(Color.B1Txt2F)] : Text 2 selected item (focusedlayout) usually used for subtitles

		Of course, you can also use any of the KODI infolabels instead.

	-->

	<!-- Custom List 1 -->

	<!-- DO NOT MODIFY FROM HERE -->
	<include name="Custom1">
	<!-- TO HERE -->

		<itemlayout width="$PARAM[width]" height="71">
			<control type="image">
				<height>70</height>
				<aspectratio>stretch</aspectratio>
				<texture colordiffuse="$INFO[Skin.String(Color.B1ItemNF)]">common/white.png</texture>
			</control>
			<control type="label">
				<height>70</height>
				<left>24</left>
				<align>left</align>
				<aligny>center</aligny>
				<font>Font27</font>
				<textcolor>$INFO[Skin.String(Color.B1Txt1NF)]</textcolor>
				<label>$INFO[ListItem.Label]</label>
			</control>
		</itemlayout>

		<focusedlayout width="$PARAM[width]" height="71">
			<control type="image">
				<height>70</height>
				<aspectratio>stretch</aspectratio>
				<texture colordiffuse="$VAR[CategoryColor]">common/white.png</texture>
			</control>
			<control type="label">
				<height>70</height>
				<left>24</left>
				<align>left</align>
				<aligny>center</aligny>
				<font>Font27</font>
				<textcolor>$INFO[Skin.String(Color.B1Txt1F)]</textcolor>
				<label>$INFO[ListItem.Label]</label>
			</control>
		</focusedlayout>

	<!-- DO NOT MODIFY FROM HERE -->		
	</include>
</includes>
	<!-- TO HERE -->
```