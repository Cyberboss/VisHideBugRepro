/*
	These are simple defaults for your project.
 */

world
	fps = 25		// 25 frames per second
	icon_size = 32	// 32x32 icon size by default

	view = 6		// show up to 6 tiles outward from center (13x13 view)


// Make objects move 8 pixels per tick when walking

mob
	step_size = 8

obj
	step_size = 8


/obj/test
	icon = 'test.dmi'
	icon_state = "base"

/obj/test/New()
	var/mutable_appearance/ma = new
	ma.icon = icon
	ma.icon_state = "under"
	ma.vis_flags = VIS_HIDE

	overlays += ma
	loc = locate(3, 5, 1)
	new /obj/projection(locate(7, 5, 1), src)

/obj/projection
	appearance_flags = KEEP_TOGETHER

/obj/projection/New(loc, obj/test/projected)
	vis_contents = list(projected)