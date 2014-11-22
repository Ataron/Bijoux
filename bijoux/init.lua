 -- Mod_Bijoux
-- -= Lua Minetest Steinheim =-
-- Mod créé par Ataron 
-- Licence : Libre de droits
 
 --===============--
--  REGISTER NODE  --
 --===============--

--- Blocs Bijoux ---
 
minetest.register_node("bijoux:emeraude_bloc", {
	description = "Bloc d'Emeraude",
	tiles = {"bijoux_emeraude_bloc.png"},
	is_ground_content = true,
	groups = {cracky=1},
	drop = 'bijoux:emeraude_bloc',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("bijoux:saphir_bloc", {
	description = "Bloc de Saphir",
	tiles = {"bijoux_saphir_bloc.png"},
	is_ground_content = true,
	groups = {cracky=1},
	drop = 'bijoux:saphir_bloc',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("bijoux:rubis_bloc", {
	description = "Bloc de Rubis",
	tiles = {"bijoux_rubis_bloc.png"},
	is_ground_content = true,
	groups = {cracky=1},
	drop = 'bijoux:rubis_bloc',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("bijoux:topaze_bloc", {
	description = "Bloc de Topaze",
	tiles = {"bijoux_topaze_bloc.png"},
	is_ground_content = true,
	groups = {cracky=1},
	drop = 'bijoux:saphir_bloc',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("bijoux:lapis_lazuli_bloc", {
	description = "Bloc de Lapis Lazuli",
	tiles = {"bijoux_lapis_lazuli_bloc.png"},
	is_ground_content = true,
	groups = {cracky=1},
	drop = 'bijoux:lapis_lazuli_bloc',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("bijoux:jade_bloc", {
	description = "Bloc de Jade",
	tiles = {"bijoux_jade_bloc.png"},
	is_ground_content = true,
	groups = {cracky=1},
	drop = 'bijoux:jade_bloc',
	sounds = default.node_sound_stone_defaults(),
}) 

--- Autres Décorations ---

minetest.register_node("bijoux:emeraude_lustre", {
	description = "Lustre en Emeraude",
	is_ground_content = true,
	groups = {cracky=1},
	drop = 'bijoux:emeraude_lustre',
	sounds = default.node_sound_stone_defaults(),
	tiles = {"bijoux_emeraude_lustre.png"},
  drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, -0.1875, -0.0625, 0.0625, 0.5, 0.0625}, -- Fil_teneur
			{-0.1875, -0.25, -0.0625, -0.0625, -0.0625, 0.0625}, -- T_G_1
			{-0.1875, -0.3125, -0.0625, -0.3125, -0.125, 0.0625}, -- T_G_2
			{0.0625, -0.25, -0.0625, 0.1875, -0.0625, 0.0625}, -- T_D_1
			{0.1875, -0.3125, -0.0625, 0.3125, -0.125, 0.0625}, -- T_D_2
			{-0.0625, -0.25, -0.1875, 0.0625, -0.0625, -0.0625}, -- T_B_1
			{-0.0625, -0.3125, -0.3125, 0.0625, -0.125, -0.1875}, -- T_B_2
			{-0.0625, -0.25, 0.0625, 0.0625, -0.0625, 0.1875}, -- T_H_1
			{-0.0625, -0.3125, 0.1875, 0.0625, -0.125, 0.3125}, -- T_H_2
			{-0.4375, -0.5, -0.125, -0.1875, -0.3125, 0.125}, -- B_G
			{-0.125, -0.5, -0.4375, 0.125, -0.3125, -0.1875}, -- B_B
			{-0.125, -0.5, 0.1875, 0.125, -0.3125, 0.4375}, -- B_H
			{0.1875, -0.5, -0.125, 0.4375, -0.3125, 0.125}, -- B_D
		}
	}
})

--- Blocs Minerais ---

minetest.register_node("bijoux:stone_with_emeraude", {
	description = "Emeraude Ore",
	tiles = {"default_stone.png^bijoux_emeraude_ore.png"},
	is_ground_content = true,
	groups = {cracky=1},
	drop = 'bijoux:emeraude_imparfaite',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("bijoux:stone_with_saphir", {
	description = "Saphir Ore",
	tiles = {"default_stone.png^bijoux_saphir_ore.png"},
	is_ground_content = true,
	groups = {cracky=1},
	drop = 'bijoux:saphir_imparfait',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("bijoux:desert_stone_with_rubis", {
	description = "Rubis Ore",
	tiles = {"default_desert_stone.png^bijoux_rubis_ore.png"},
	is_ground_content = true,
	groups = {cracky=1},
	drop = 'bijoux:rubis_imparfait',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("bijoux:desert_stone_with_topaze", {
	description = "Topaze Ore",
	tiles = {"default_desert_stone.png^bijoux_topaze_ore.png"},
	is_ground_content = true,
	groups = {cracky=1},
	drop = 'bijoux:topaze_imparfaite',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("bijoux:stone_with_lapis_lazuli", {
	description = "Lapis Lazuli Ore",
	tiles = {"default_stone.png^bijoux_lapis_lazuli_ore.png"},
	is_ground_content = true,
	groups = {cracky=1},
	drop = 'bijoux:lapis_lazuli_imparfait',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("bijoux:desert_stone_with_jade", {
	description = "Jade Ore",
	tiles = {"default_desert_stone.png^bijoux_jade_ore.png"},
	is_ground_content = true,
	groups = {cracky=1},
	drop = 'bijoux:jade_imparfait',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("bijoux:sand_with_perle", {
	description = "Perle Ore",
	tiles = {"default_sand.png^bijoux_perle_ore.png"},
	is_ground_content = true,
	groups = {cracky=1},
	drop = 'bijoux:perle_imparfaite',
	sounds = default.node_sound_stone_defaults(),
})

--- Coffret Bijoux ---
 
 default.coffret_formspec = 
	"size[8,9]"..
	default.gui_bg..
	default.gui_bg_img..
	default.gui_slots..
	"list[current_name;main;2,0.3;4,3;]"..
	"list[current_player;main;0,4.85;8,1;]"..
	"list[current_player;main;0,6.08;8,3;8]"..
	default.get_hotbar_bg(0,4.85)

function default.get_locked_coffret_formspec(pos)
	local spos = pos.x .. "," .. pos.y .. "," ..pos.z
	local formspec =
		"size[8,9]"..
		default.gui_bg..
		default.gui_bg_img..
		default.gui_slots..
		"list[nodemeta:".. spos .. ";main;2,0.3;4,3;]"..
		"list[current_player;main;0,4.85;8,1;]"..
		"list[current_player;main;0,6.08;8,3;8]"..
		default.get_hotbar_bg(0,4.85)
 return formspec
end


minetest.register_node("bijoux:coffret", {
	description = "Coffret à Bijoux",
	tiles = {"default_chest_top.png", "default_chest_top.png", "default_chest_side.png",
		"default_chest_side.png", "default_chest_side.png", "default_chest_front.png"},
	paramtype2 = "facedir",
	groups = {choppy=2,oddly_breakable_by_hand=2},
	legacy_facedir_simple = true,
	is_ground_content = false,
	sounds = default.node_sound_wood_defaults(),
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec",default.coffret_formspec)
		meta:set_string("infotext", "Coffret à Bijoux")
		local inv = meta:get_inventory()
		inv:set_size("main", 4*3)
	end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty("main")
	end,
	on_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff in chest at "..minetest.pos_to_string(pos))
	end,
    on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff to chest at "..minetest.pos_to_string(pos))
	end,
    on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" takes stuff from chest at "..minetest.pos_to_string(pos))
	end,
})

local function has_locked_chest_privilege(meta, player)
	if player:get_player_name() ~= meta:get_string("owner") then
		return false
	end
	return true
end

minetest.register_node("bijoux:coffret_locked", {
	description = "Coffret à Bijoux Fermé",
	tiles = {"default_chest_top.png", "default_chest_top.png", "default_chest_side.png",
		"default_chest_side.png", "default_chest_side.png", "default_chest_lock.png"},
	paramtype2 = "facedir",
	groups = {choppy=2,oddly_breakable_by_hand=2},
	legacy_facedir_simple = true,
	is_ground_content = false,
	sounds = default.node_sound_wood_defaults(),
	after_place_node = function(pos, placer)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec",default.coffret_formspec)  
		meta:set_string("owner", placer:get_player_name() or "")
		meta:set_string("infotext", "Coffret à Bijoux Fermé (owned by "..
				meta:get_string("owner")..")")
	end,
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Coffret à Bijoux Fermé")
		meta:set_string("owner", "")
		local inv = meta:get_inventory()
		inv:set_size("main", 4*3)
	end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty("main") and has_locked_chest_privilege(meta, player)
	end,
	allow_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		local meta = minetest.get_meta(pos)
		if not has_locked_chest_privilege(meta, player) then
			return 0
		end
		return count
	end,
    allow_metadata_inventory_put = function(pos, listname, index, stack, player)
		local meta = minetest.get_meta(pos)
		if not has_locked_chest_privilege(meta, player) then
			return 0
		end
		return stack:get_count()
	end,
    allow_metadata_inventory_take = function(pos, listname, index, stack, player)
		local meta = minetest.get_meta(pos)
		if not has_locked_chest_privilege(meta, player) then
			return 0
		end
		return stack:get_count()
	end,
    on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff to locked chest at "..minetest.pos_to_string(pos))
	end,
    on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" takes stuff from locked chest at "..minetest.pos_to_string(pos))
	end,
	on_rightclick = function(pos, node, clicker)
		local meta = minetest.get_meta(pos)
		if has_locked_chest_privilege(meta, clicker) then
			minetest.show_formspec(
				clicker:get_player_name(),
				"bijoux:coffret_locked",
				default.get_locked_chest_formspec(pos)
			)
		end
	end,
})

--- Coffre Emeraude ---

 default.emeraude_formspec = 
	"size[12,9]"..
	default.gui_bg..
	default.gui_bg_img..
	default.gui_slots..
	"list[current_name;main;0,0.3;12,4;]"..
	"list[current_player;main;2,4.85;8,1;]"..
	"list[current_player;main;2,6.08;8,3;8]"..
	default.get_hotbar_bg(0,4.85)

function default.get_locked_emeraude_formspec(pos)
	local spos = pos.x .. "," .. pos.y .. "," ..pos.z
	local formspec =
		"size[12,9]"..
		default.gui_bg..
		default.gui_bg_img..
		default.gui_slots..
		"list[nodemeta:".. spos .. ";main;0,0.3;12,4;]"..
		"list[current_player;main;2,4.85;8,1;]"..
		"list[current_player;main;2,6.08;8,3;8]"..
		default.get_hotbar_bg(0,4.85)
 return formspec
end


minetest.register_node("bijoux:emeraude_coffre", {
	description = "Coffre en Emeraude",
	tiles = {"bijoux_emeraude_bloc.png^bijoux_chest_top.png", "bijoux_emeraude_bloc.png^bijoux_chest_top.png", "bijoux_emeraude_bloc.png^bijoux_chest_side.png",
		"bijoux_emeraude_bloc.png^bijoux_chest_side.png", "bijoux_emeraude_bloc.png^bijoux_chest_side.png", "bijoux_emeraude_bloc.png^bijoux_chest_front.png"},
	paramtype2 = "facedir",
	groups = {choppy=2,oddly_breakable_by_hand=2},
	legacy_facedir_simple = true,
	is_ground_content = false,
	sounds = default.node_sound_wood_defaults(),
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec",default.emeraude_formspec)
		meta:set_string("infotext", "Coffre en Emeraude")
		local inv = meta:get_inventory()
		inv:set_size("main", 12*4)
	end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty("main")
	end,
	on_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff in chest at "..minetest.pos_to_string(pos))
	end,
    on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff to chest at "..minetest.pos_to_string(pos))
	end,
    on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" takes stuff from chest at "..minetest.pos_to_string(pos))
	end,
})

local function has_locked_chest_privilege(meta, player)
	if player:get_player_name() ~= meta:get_string("owner") then
		return false
	end
	return true
end

minetest.register_node("bijoux:emeraude_locked", {
	description = "Coffre en Emeraude Fermé",
	tiles = {"bijoux_emeraude_bloc.png^bijoux_chest_top.png", "bijoux_emeraude_bloc.png^bijoux_chest_top.png", "bijoux_emeraude_bloc.png^bijoux_chest_side.png",
		"bijoux_emeraude_bloc.png^bijoux_chest_side.png", "bijoux_emeraude_bloc.png^bijoux_chest_side.png", "bijoux_emeraude_bloc.png^bijoux_chest_lock.png"},
	paramtype2 = "facedir",
	groups = {choppy=2,oddly_breakable_by_hand=2},
	legacy_facedir_simple = true,
	is_ground_content = false,
	sounds = default.node_sound_wood_defaults(),
	after_place_node = function(pos, placer)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec",default.emeraude_formspec)  
		meta:set_string("owner", placer:get_player_name() or "")
		meta:set_string("infotext", "Coffre en Emeraude Fermé (owned by "..
				meta:get_string("owner")..")")
	end,
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Coffre en Emeraude Fermé")
		meta:set_string("owner", "")
		local inv = meta:get_inventory()
		inv:set_size("main", 12*4)
	end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty("main") and has_locked_chest_privilege(meta, player)
	end,
	allow_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		local meta = minetest.get_meta(pos)
		if not has_locked_chest_privilege(meta, player) then
			return 0
		end
		return count
	end,
    allow_metadata_inventory_put = function(pos, listname, index, stack, player)
		local meta = minetest.get_meta(pos)
		if not has_locked_chest_privilege(meta, player) then
			return 0
		end
		return stack:get_count()
	end,
    allow_metadata_inventory_take = function(pos, listname, index, stack, player)
		local meta = minetest.get_meta(pos)
		if not has_locked_chest_privilege(meta, player) then
			return 0
		end
		return stack:get_count()
	end,
    on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff to locked chest at "..minetest.pos_to_string(pos))
	end,
    on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" takes stuff from locked chest at "..minetest.pos_to_string(pos))
	end,
	on_rightclick = function(pos, node, clicker)
		local meta = minetest.get_meta(pos)
		if has_locked_chest_privilege(meta, clicker) then
			minetest.show_formspec(
				clicker:get_player_name(),
				"bijoux:coffret_locked",
				default.get_locked_chest_formspec(pos)
			)
		end
	end,
})

--- Atelier de bijoutier ---

atelier = {}
atelier.recipes = {}
function atelier.register_recipe(parameters)
	print("Atelier :")
	print(atelier)
	print("Atelier recipes :")
	print(atelier.recipes)
	print("Atelier register recipes :")
	print(atelier.register_recipes)
	print("Parameters :")
	print(parameters)
	print("Output :")
	print(parameters.output)
	print("Input :")
	print(parameters.input)
	print("Duration :")
	print(parameters.duration)
	if parameters.output == nil then
		return 
	end
	if parameters.intput ~= nil then
		atelier.recipes[parameters.output].input = parameters.input
	end
	if parameters.duration ~= nil then
		atelier.recipes[parameters.output].duration = parameters.duration
	end
	if parameters.tool ~= nil then
		atelier.recipes[parameters.output].tool = parameters.tool
	end
end

atelier_formspec = 
	"size[8,9]"..
	"image[2,2;1,1;bijoux_atelier_pioche_bg.png]"..
	"list[current_name;oat;2,3;1,1;]"..
	"list[current_name;outils;2,1;1,1;]"..
	"list[current_name;oti;5,1;2,2;]"..
	"list[current_player;main;0,5;8,4;]"
	
minetest.register_node("bijoux:atelier", {
  description = "Atelier",
  tiles = {"default_obsidian.png", "default_steel_block.png", "default_steel_block.png",
    "default_steel_block.png", "default_steel_block.png", "default_bookshelf.png"},
  paramtype2 = "facedir",
  groups = {crumbly=3},
  legacy_facedir_simple = true,
  is_ground_content = false,

  on_construct = function(pos)
    local meta = minetest.get_meta(pos)
    meta:set_string("formspec", atelier_formspec)
    meta:set_string("infotext", "Atelier")
    local inv = meta:get_inventory()
    inv:set_size("oat", 1)
    inv:set_size("outils", 1)
    inv:set_size("oti", 1)
  end,

  can_dig = function(pos,player)
    local meta = minetest.get_meta(pos);
    local inv = meta:get_inventory()
    if not inv:is_empty("oat") then
      return false
    elseif not inv:is_empty("oti") then
      return false
    elseif not inv:is_empty("outils") then
      return false
    end
    return true
  end,
	
  allow_metadata_inventory_put = function(pos, listname, index, stack, player)
    local meta = minetest.get_meta(pos)
    local inv = meta:get_inventory()
    print(listname)
    if listname == "outils" then
      if minetest.get_craft_result({method="fuel",width=1,items={stack}}).time ~= 0 then
        if inv:is_empty("outils") then
          meta:set_string("infotext","Aucun outil present!")
        end
        return stack:get_count()
      else
        return 0
      end
    elseif listname == "oat" then
      return stack:get_count()
    elseif listname == "oti" then
      return 0
    end
  end,
})
  --=====--
--  ITEMS  --
  --=====--
 
--- Taillés ---

 minetest.register_craftitem("bijoux:emeraude", {
	description = "Emeraude Taillée",
	inventory_image = "bijoux_emeraude.png",
})

 minetest.register_craftitem("bijoux:saphir", {
	description = "Saphir Taillé",
	inventory_image = "bijoux_saphir.png",
})

 minetest.register_craftitem("bijoux:topaze", {
	description = "Topaze Taillée",
	inventory_image = "bijoux_topaze.png",
})

 minetest.register_craftitem("bijoux:rubis", {
	description = "Rubis Taillé",
	inventory_image = "bijoux_rubis.png",
})

 minetest.register_craftitem("bijoux:lapis_lazuli", {
	description = "Lapis Lazuli Taillé",
	inventory_image = "bijoux_lapis_lazuli.png",
})

 minetest.register_craftitem("bijoux:perle", {
	description = "Perle Parfaite",
	inventory_image = "bijoux_perle.png",
})

 minetest.register_craftitem("bijoux:jade", {
	description = "Jade Taillé",
	inventory_image = "bijoux_jade.png",
})

--- Imparfaits ---

minetest.register_craftitem("bijoux:emeraude_imparfaite", {
	description = "Emeraude Imparfaite",
	groups={oat},
	inventory_image = "bijoux_emeraude_imparfaite.png",
})

minetest.register_craftitem("bijoux:saphir_imparfait", {
	description = "Saphir Imparfait",
	groups={oat},
	inventory_image = "bijoux_saphir_imparfait.png",
})

minetest.register_craftitem("bijoux:rubis_imparfait", {
	description = "Rubis Imparfait",
	groups={oat},
	inventory_image = "bijoux_rubis_imparfait.png",
})

minetest.register_craftitem("bijoux:topaze_imparfaite", {
	description = "Topaze Imparfaite",
	groups={oat},
	inventory_image = "bijoux_topaze_imparfaite.png",
})

minetest.register_craftitem("bijoux:jade_imparfait", {
	description = "Jade Imparfait",
	inventory_image = "bijoux_jade_imparfait.png",
	groups={oat},
	drop = 'bijoux:jade_imparfait',
})

minetest.register_craftitem("bijoux:lapis_lazuli_imparfait", {
	description = "Lapis Lazuli Imparfait",
	groups={oat},
	inventory_image = "bijoux_lapis_lazuli_imparfait.png",
})

minetest.register_craftitem("bijoux:perle_imparfaite", {
	description = "Perle Imparfaite",
	groups={oat},
	inventory_image = "bijoux_perle_imparfaite.png",
})

--- Outils ---

minetest.register_craftitem("bijoux:pioche", {
	description = "Pioche",
	inventory_image = "bijoux_pioche.png",
	groups={outils},
})

 --========--
--  CRAFTS  --
 --========--

--- Blocs ---

minetest.register_craft({
	output = 'bijoux:emeraude_bloc',
	recipe = {
		{'bijoux:emeraude', 'bijoux:emeraude', 'bijoux:emeraude'},
		{'bijoux:emeraude', 'bijoux:emeraude', 'bijoux:emeraude'},
		{'bijoux:emeraude', 'bijoux:emeraude', 'bijoux:emeraude'},
	}	
})

minetest.register_craft({
	output = 'bijoux:saphir_bloc',
	recipe = {
		{'bijoux:saphir', 'bijoux:saphir', 'bijoux:saphir'},
		{'bijoux:saphir', 'bijoux:saphir', 'bijoux:saphir'},
		{'bijoux:saphir', 'bijoux:saphir', 'bijoux:saphir'},
	}	
})

minetest.register_craft({
	output = 'bijoux:rubis_bloc',
	recipe = {
		{'bijoux:rubis', 'bijoux:rubis', 'bijoux:rubis'},
		{'bijoux:rubis', 'bijoux:rubis', 'bijoux:rubis'},
		{'bijoux:rubis', 'bijoux:rubis', 'bijoux:rubis'},
	}	
})

minetest.register_craft({
	output = 'bijoux:rubis_bloc',
	recipe = {
		{'bijoux:rubis', 'bijoux:rubis', 'bijoux:rubis'},
		{'bijoux:rubis', 'bijoux:rubis', 'bijoux:rubis'},
		{'bijoux:rubis', 'bijoux:rubis', 'bijoux:rubis'},
	}	
})

minetest.register_craft({
	output = 'bijoux:topaze_bloc',
	recipe = {
		{'bijoux:topaze', 'bijoux:topaze', 'bijoux:topaze'},
		{'bijoux:topaze', 'bijoux:topaze', 'bijoux:topaze'},
		{'bijoux:topaze', 'bijoux:topaze', 'bijoux:topaze'},
	}	
})

minetest.register_craft({
	output = 'bijoux:lapis_lazuli_bloc',
	recipe = {
		{'bijoux:lapis_lazuli', 'bijoux:lapis_lazuli', 'bijoux:lapis_lazuli'},
		{'bijoux:lapis_lazuli', 'bijoux:lapis_lazuli', 'bijoux:lapis_lazuli'},
		{'bijoux:lapis_lazuli', 'bijoux:lapis_lazuli', 'bijoux:lapis_lazuli'},
	}	
})

minetest.register_craft({
	output = 'bijoux:jade_bloc',
	recipe = {
		{'bijoux:jade', 'bijoux:jade', 'bijoux:jade'},
		{'bijoux:jade', 'bijoux:jade', 'bijoux:jade'},
		{'bijoux:jade', 'bijoux:jade', 'bijoux:jade'},
	}	
})

--- Outils et Oat groups ---

-- Outils

-- minetest.register_tool({
--	type = "fuel",
--	recipe = "bijoux:pioche",
--	burntime = 20,
--})

-- Oat

atelier.register_recipe({
  output = "bijoux:perle",
  input = "bijoux:perle_imparfaite",
  tool = "bijoux:pioche",
  duration = 10
})

atelier.register_recipe({
	output = "bijoux:saphir",
	input = "bijoux:saphir_imparfait",
	tool = "bijoux:pioche",
	duration = 10,
})

atelier.register_recipe({
	output = "bijoux:rubis",
	input = "bijoux:rubis_imparfait",
	tool = "bijoux:pioche",
	duration = 10,
})

atelier.register_recipe({
	output = "bijoux:topaze",
	input = "bijoux:topaze_imparfaite",
	tool = "bijoux:pioche",
	duration = 10,
})

atelier.register_recipe({
	output = "bijoux:lapis_lazuli",
	input = "bijoux:lapis_lazuli_imparfait",
	tool = "bijoux:pioche",
	duration = 10,
})

atelier.register_recipe({
	output = "bijoux:jade",
	input = "bijoux:jade_imparfait",
	tool = "bijoux:pioche",
	duration = 10,
})

atelier.register_recipe({
	output = "bijoux:perle",
	input = "bijoux:perle_imparfaite",
	tool = "bijoux:pioche",
	duration = 10,
})


  --===================--
--  GENERATION MINERAIS  --
  --===================--


minetest.register_ore({
	ore_type = "scatter",
	ore = "bijoux:stone_with_emeraude",
	wherein = "default:stone",
	clust_scarcity = 10*10*10,
	clust_num_ores = 2,
	clust_size = 2,
	height_min = -31000,
	height_max = -1000,
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "bijoux:stone_with_saphir",
	wherein = "default:stone",
	clust_scarcity = 10*9*8,
	clust_num_ores = 2,
	clust_size = 2,
	height_min = -31000,
	height_max = -750,
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "bijoux:stone_with_lapis_lazuli",
	wherein = "default:stone",
	clust_scarcity = 9*9*9,
	clust_num_ores = 3,
	clust_size = 3,
	height_min = -31000,
	height_max = -500,
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "bijoux:desert_stone_with_rubis",
	wherein = "default:desert_stone",
	clust_scarcity = 10*9*10,
	clust_num_ores = 2,
	clust_size = 2,
	height_min = -31000,
	height_max = 2.5,
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "bijoux:desert_stone_with_topaze",
	wherein = "default:desert_stone",
	clust_scarcity = 10*8*8,
	clust_num_ores = 3,
	clust_size = 2,
	height_min = -31000,
	height_max = 5,
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "bijoux:desert_stone_with_jade",
	wherein = "default:desert_stone",
	clust_scarcity = 8*8*8,
	clust_num_ores = 4,
	clust_size = 3,
	height_min = -31000,
	height_max = 10,
})

  --=================--
--  GENERATION PERLES  --
  --=================--

minetest.register_alias("mapgen_sand", "default:sand")
  
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "bijoux:sand_with_perle",
	wherein        = "default:sand",
	clust_scarcity = 15*15*15,
	clust_num_ores = 64,
	clust_size     = 5,
	height_max     = 0,
	height_min     = -10,
})

