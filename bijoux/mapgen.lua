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