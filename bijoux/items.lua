  --=====--
--  ITEMS  --
  --=====--
 
--- Taillés ---

-- minetest.register_craftitem("bijoux:emeraude", {
--	description = "Emeraude Taillée",
--	inventory_image = "bijoux_emeraude.png",
-- })

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

minetest.register_craftitem("bijoux:emeraude_imparfait", {
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

minetest.register_craftitem("bijoux:topaze_imparfait", {
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

minetest.register_craftitem("bijoux:perle_imparfait", {
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

minetest.register_craftitem("bijoux:odr", {
	description = "Outil de raffinage",
	inventory_image = "bijoux_odr.png",
	groups={outils},
})

minetest.register_craftitem("bijoux:odra", {
	description = "Outil de raffinage avance",
	inventory_image = "bijoux_odra.png",
	groups={outils},
})