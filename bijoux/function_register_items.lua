bijoux = {}

------------------------------------------------------------------------
------------------- FUNCTION to register item --------------------------
function bijoux.register_item(subname, description, duration)
	if not (subname and description and duration) then
		-- Security, in case of we've not used all the needed parameters
		return
	end
	
	minetest.register_craftitem("bijoux:" .. subname, {
		inventory_image = "bijoux_" .. subname .. ".png",
		description = description,
		groups = {},
	})
	
	minetest.register_craftitem("bijoux:" .. subname .. "_imparfait", {
		inventory_image = "bijoux_" .. subname .. "_imparfait.png",
		description = description .. " imparfait(e)",
		groups = {},
	})
	
	atelier.register_recipe({
		output = "bijoux:" .. subname,
		input = "bijoux:".. subname .. "_imparfait", -- toujours masc.
		--tool = "bijoux:pioche",
		duration = duration
	})
end

----------------------------- ITEMS ------------------------------------
bijoux.register_item("perle", "Perle", 1)
bijoux.register_item("emeraude", "Emeraude", 3)
bijoux.register_item("jade", "Jade", 3)
bijoux.register_item("saphir", "Saphir", 5)
bijoux.register_item("lapis_lazuli", "Lapis lazuli", 5)
bijoux.register_item("rubis", "Rubis", 5)
bijoux.register_item("saphir", "Saphir", 6)
bijoux.register_item("topaze", "Topaze", 7)


-- Outils

minetest.register_craftitem("bijoux:pioche", {
	description = "Pioche",
	inventory_image = "bijoux_pioche.png",
	groups={},
})

minetest.register_craftitem("bijoux:odr", {
	description = "Outil de raffinage",
	inventory_image = "bijoux_odr.png",
	groups={},
})

minetest.register_craftitem("bijoux:odra", {
	description = "Outil de raffinage avance",
	inventory_image = "bijoux_odra.png",
	groups={},
})
