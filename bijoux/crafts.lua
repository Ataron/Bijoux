 --========--
--  CRAFTS  --
 --========--

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