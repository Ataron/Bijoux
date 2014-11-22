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
