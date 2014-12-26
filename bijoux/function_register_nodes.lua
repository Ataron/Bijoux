bijoux = {}

function bijoux.register_bloc(subname, recipeitem, groups, images, description, sounds)
	minetest.register_node(":bijoux:bloc_" .. subname, {
		description = description,
		tiles = images,
		paramtype = "light",
		is_ground_content = true,
		groups = groups,
		sounds = sounds,
	})


	minetest.register_craft({
		output = 'bijoux:jade_bloc',
		recipe = {
			{'recipeitem', 'recipeitem', 'recipeitem'},
			{'recipeitem', 'recipeitem', 'recipeitem'},
			{'recipeitem', 'recipeitem', 'recipeitem'},
		}	
	})
end

bijoux.register_bloc("emeraude",
	"bijoux:emeraude",
	{cracky=3},
	{"bijoux_emeraude_bloc.png"},
	"Bloc d'Emeraude",
	default.node_sound_stone_defaults())
	
bijoux.register_bloc("saphir",
	"bijoux:saphir",
	{cracky=3},
	{"bijoux_saphir_bloc.png"},
	"Bloc de Saphir",
	default.node_sound_stone_defaults())
	
bijoux.register_bloc("rubis",
	"bijoux:rubis",
	{cracky=3},
	{"bijoux_rubis_bloc.png"},
	"Bloc de Rubis",
	default.node_sound_stone_defaults())
	
bijoux.register_bloc("topaze",
	"bijoux:topaze",
	{cracky=3},
	{"bijoux_topaze_bloc.png"},
	"Bloc de Topaze",
	default.node_sound_stone_defaults())
	
bijoux.register_bloc("lapis_lazuli",
	"bijoux:lapis_lazuli",
	{cracky=3},
	{"bijoux_lapis_lazuli_bloc.png"},
	"Bloc de Lapis Lazuli",
	default.node_sound_stone_defaults())
	
bijoux.register_bloc("jade",
	"bijoux:jade",
	{cracky=3},
	{"bijoux_jade_bloc.png"},
	"Bloc de Jade",
	default.node_sound_stone_defaults())
	
function bijoux.register_ore(subname, groups, images, description, sounds)
	minetest.register_node(":bijoux:stone_with_" .. subname, {
		description = description,
		tiles = images,
		paramtype = "light",
		is_ground_content = true,
		groups = groups,
		sounds = sounds,
		drop = "bijoux:".. subname .."_imparfait",
	})
end

bijoux.register_ore("emeraude",
	{cracky=3},
	{"default_stone.png^bijoux_emeraude_ore.png"},
	"Emeraude Ore",
	default.node_sound_stone_defaults())
	
bijoux.register_ore("saphir",
	{cracky=3},
	{"default_stone.png^bijoux_saphir_ore.png"},
	"Saphir Ore",
	default.node_sound_stone_defaults())
	
bijoux.register_ore("lapis_lazuli",
	{cracky=3},
	{"default_stone.png^bijoux_lapis_lazuli_ore.png"},
	"Lapis Lazuli Ore",
	default.node_sound_stone_defaults())
	
function bijoux.register_desert_ore(subname, groups, images, description, sounds, drop)
	minetest.register_node(":bijoux:desert_stone_with_" .. subname, {
		subname = subname,
		description = description,
		legacy_mineral = true,
		tiles = images,
		paramtype = "light",
		is_ground_content = true,
		groups = groups,
		sounds = sounds,
		drop = "bijoux:".. subname .."_imparfait",
	})
end

bijoux.register_desert_ore("rubis",
	{cracky=3},
	{"default_stone.png^bijoux_rubis_ore.png"},
	"Rubis Ore",
	default.node_sound_stone_defaults())

bijoux.register_desert_ore("topaze",
	{cracky=3},
	{"default_stone.png^bijoux_topaze_ore.png"},
	"Topaze Ore",
	default.node_sound_stone_defaults())

bijoux.register_desert_ore("jade",
	{cracky=3},
	{"default_stone.png^bijoux_jade_ore.png"},
	"Jade Ore",
	default.node_sound_stone_defaults())
	
-- Autre --

-- Perle

minetest.register_node("bijoux:sand_with_perle", {
	description = "Perle Ore",
	tiles = {"default_sand.png^bijoux_perle_ore.png"},
	is_ground_content = true,
	groups = {cracky=1},
	drop = 'bijoux:perle_imparfait',
	sounds = default.node_sound_stone_defaults(),
})

-- Decoration

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