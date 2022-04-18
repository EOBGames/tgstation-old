/datum/archeology_loot
	var/piece_width = 2
	var/piece_height = 2
	/// 1 - part of loot, 0 - just padding, leave empty if whole rectangle is filled to autogenerate it
	var/pattern
	/// Actual icons in dmi need to follow prefix_x_y where 0,0 is top left, y positive axis down
	var/icon_state_prefix
	// Should this loot direction be randomize, set to false on symmetrical ones
	var/randomize_direction = FALSE
	// What do you actually get out of this
	var/result_path
	/// If true, only one of this kind will spawn
	var/unique_per_grid = FALSE

	// Values below are generated

	var/x
	var/y
	// How much was the initial pattern randomized, passed to ui to rotate the icons appriopriately
	var/rotation = 0
	// Map of dx,dy from top left, modified with rotation
	var/icon_map


/datum/archeology_loot/New()
	. = ..()
	if(!pattern) //If we have no preset pattern assume we fill all the tiles
		pattern = new/list(piece_width,piece_height)
		for(var/x in 1 to piece_width)
			for(var/y in 1 to piece_height)
				pattern[x][y] = 1
	icon_map = new/list(piece_width,piece_height)
	for(var/dx in 1 to piece_width)
		for(var/dy in 1 to piece_height)
			icon_map[dx][dy] = "[icon_state_prefix]_[dx-1]_[dy-1]" //switch to 1-index in dmi for consistency
	if(randomize_direction)
		var/rot_count = rand(1,3)
		for(var/i in 1 to rot_count)
			pattern = rotate_pattern(pattern)
			icon_map = rotate_pattern(icon_map)
			rotation += 90
		piece_width = length(pattern)
		piece_height = length(pattern[1])

/datum/archeology_loot/proc/rotate_pattern(list/grid)
	var/original_width = length(grid)
	var/original_height = length(grid[1])

	var/output = new/list(original_height,original_width)

	for(var/x in 1 to original_width)
		for(var/y in 1 to original_height)
			output[y][x] = grid[x][original_height - y +1]

	return output

/datum/archeology_loot/proc/on_hit()
	return

/datum/archeology_loot/proc/on_uncover()
	return

/datum/archeology_loot/proc/is_uncovered(list/depth_grid)
	for(var/dx in 0 to piece_width-1)
		for(var/dy in 0 to piece_height-1)
			if(!pattern[dx+1][dy+1])
				continue
			if(depth_grid[x+dx][y+dy] != 0)
				return FALSE
	return TRUE

/datum/archeology_loot/proc/icon_at(grid_x,grid_y)
	var/dx = grid_x - x
	var/dy = grid_y - y
	if(!pattern[dx+1][dy+1])
		stack_trace("loot icon requested off pattern")
		return
	return icon_map[dx+1][dy+1]

/datum/archeology_loot/red_square
	icon_state_prefix = "redsquare"
	result_path = /obj/item/toy/balloon/syndicate

/datum/archeology_loot/asymmetric_long_thing
	piece_height = 1
	piece_width = 3
	icon_state_prefix = "thingie"
	randomize_direction = TRUE
	result_path = /obj/item/toy/plush/moth

/*
/datum/archeology_loot/weirdo_pattern_thing
	icon_state_prefix = "lthing"
	piece_height = 3
	piece_width = 3
*/

/datum/archeology_minigame
	var/grid_width = 12
	var/grid_height = 12


	var/integrity = 100
	var/game_finished = FALSE

	var/loot_amount_min = 2
	var/loot_amount_max = 4

	var/dud_amount = 5

	/// Piece and weight
	var/list/possible_pieces = list(
		/datum/archeology_loot/red_square = 1,
		/datum/archeology_loot/asymmetric_long_thing = 3
	)

	var/list/loot_pieces = list()

	/// 2d array where the value is loot piece instance at that coord or null
	var/item_grid
	/// 2d array where the value is depth value at that coord
	var/depth_grid

	var/rock_prefix = "rock_"
	var/background_icon = "background"

/datum/archeology_minigame/proc/generate_grid()
	depth_grid = new/list(grid_width,grid_height)
	item_grid = new/list(grid_width,grid_height)
	for(var/x in 1 to grid_width)
		for(var/y in 1 to grid_height)
			item_grid[x][y] = null
			depth_grid[x][y] =  rand(0,5) //TODO, use something better so it's more uniform surfaces

	var/items_to_place = rand(loot_amount_min,loot_amount_max)
	var/placement_retries = 5
	var/pieces_table = possible_pieces.Copy()
	for(var/i in 1 to items_to_place)
		var/loot_type = pick_weight(pieces_table)
		var/datum/archeology_loot/new_loot = new loot_type
		for(var/try_count in 1 to placement_retries)
			if(try_to_place_loot(new_loot))
				if(new_loot.unique_per_grid)
					pieces_table -= new_loot.type
				loot_pieces += new_loot
				break
	/// TODO: Place n mines that will damage integrity when completely uncovered
	for(var/i in 1 to dud_amount)
		continue

/datum/archeology_minigame/proc/try_to_place_loot(datum/archeology_loot/new_loot)
	var/target_x = rand(1,grid_width - new_loot.piece_width)
	var/target_y = rand(1,grid_height - new_loot.piece_height)
	for(var/dx in 0 to new_loot.piece_width-1)
		for(var/dy in 0 to new_loot.piece_height-1)
			if(!new_loot.pattern[dx+1][dy+1])
				continue
			if(item_grid[target_x+dx][target_y+dy]) //Something already there, abort
				return FALSE
	/// Alright actually place it now
	new_loot.x = target_x
	new_loot.y = target_y
	for(var/dx in 0 to new_loot.piece_width-1)
		for(var/dy in 0 to new_loot.piece_height-1)
			if(!new_loot.pattern[dx+1][dy+1])
				continue
			item_grid[target_x+dx][target_y+dy] = new_loot
	return TRUE

/datum/archeology_minigame/ui_assets(mob/user)
	return list(
		get_asset_datum(/datum/asset/spritesheet/simple/archeology),
		get_asset_datum(/datum/asset/simple/archeology_static)
	)

/datum/archeology_minigame/ui_interact(mob/user, datum/tgui/ui)
	ui = SStgui.try_update_ui(user, src, ui)
	if(!ui)
		ui = new(user, src, "ArcheologyMinigame")
		ui.set_autoupdate(FALSE)
		ui.open()

/datum/archeology_minigame/ui_state(mob/user)
	return GLOB.always_state

/datum/archeology_minigame/ui_static_data(mob/user)
	. = ..()
	var/datum/asset/spritesheet/simple/assets = get_asset_datum(/datum/asset/spritesheet/simple/archeology)
	.["background_icon_class"] = assets.icon_class_name("background")

/datum/archeology_minigame/ui_data(mob/user)
	. = ..()
	.["integrity"] = integrity
	.["grid"] = build_ui_grid()

/datum/archeology_minigame/proc/build_ui_grid()
	var/grid = new/list(grid_width,grid_height)
	var/datum/asset/spritesheet/simple/assets = get_asset_datum(/datum/asset/spritesheet/simple/archeology)
	for(var/x in 1 to grid_width)
		for(var/y in 1 to grid_height)
			var/list/tile_info = list()
			tile_info["rotation"] = 0
			if(depth_grid[x][y] > 0)
				tile_info["icon"] = assets.icon_class_name("[rock_prefix][depth_grid[x][y]]")
			else if(item_grid[x][y])
				var/datum/archeology_loot/loot = item_grid[x][y]
				tile_info["icon"] = assets.icon_class_name(loot.icon_at(x,y))
				if(loot.rotation)
					tile_info["rotation"] = loot.rotation
			else
				tile_info["icon"] = assets.icon_class_name("background")
			grid[x][y] = tile_info
	return grid

/datum/archeology_minigame/proc/excavate(pick_type,x,y)
	var/integrity_cost = 0
	/// list of x_offset,y_offset,rock amount removed
	var/dig_pattern
	switch(pick_type)
		if("pickaxe")
			integrity_cost = 1
			dig_pattern = list(list(0,0,1))
		if("hammer")
			integrity_cost = 6
			dig_pattern = list(
				list(0,0,1),
				list(0,1,1),
				list(0,-1,1),
				list(1,0,1),
				list(1,1,1),
				list(1,-1,1),
				list(-1,0,1),
				list(-1,1,1),
				list(-1,-1,1)
			)
		else
			CRASH("invalid pick type")
	for(var/list/dig_spot_parameters in dig_pattern)
		var/target_x = x+dig_spot_parameters[1]
		var/target_y = y+dig_spot_parameters[2]
		var/rock_removed = dig_spot_parameters[3]
		if(target_x < 1 || target_x > grid_width || target_y < 1 || target_y > grid_height)
			continue
		var/old_depth = depth_grid[target_x][target_y]
		depth_grid[target_x][target_y] = max(0,old_depth - rock_removed)
		if(item_grid[target_x][target_y] && old_depth > 0 && depth_grid[target_x][target_y] == 0)
			var/datum/archeology_loot/loot = item_grid[target_x][target_y]
			loot.on_hit()
			if(loot.is_uncovered(depth_grid))
				loot.on_uncover()
	adjust_integrity(-integrity_cost)

/datum/archeology_minigame/proc/adjust_integrity(value)
	integrity += value
	if(integrity < 0)
		finish_game()

/datum/archeology_minigame/proc/finish_game()
	if(game_finished)
		return
	game_finished = TRUE
	// spawn the loot here and other stuff

/datum/archeology_minigame/ui_act(action, list/params, datum/tgui/ui, datum/ui_state/state)
	. = ..()
	if(.)
		return
	if(game_finished)
		return TRUE
	switch(action)
		if("excavate")
			//validate here
			var/pick_type = params["pickType"]
			var/target_x = params["x"]
			var/target_y = params["y"]
			excavate(pick_type,target_x,target_y)
			return TRUE

/// DEBUG STUFF

/mob
	var/datum/archeology_minigame/minigame

/mob/verb/test_archeology()
	if(!minigame)
		minigame = new
		minigame.generate_grid()
	minigame.ui_interact(usr)
