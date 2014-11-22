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