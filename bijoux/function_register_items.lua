bijoux = {}

function bijoux.register_item_parfait(subname, images, description, groups, inputname, toolname, duration)
	 minetest.register_craftitem("bijoux:" .. subname, {
		tiles = images,
		description = description,
		groups = groups,
	})
	
--	atelier.register_recipe({
--		output = "bijoux:" .. subname,
--		input = "bijoux:".. inputname,
--		tool = "bijoux:" .. toolname,
--		duration = duration
end
-- })

bijoux.register_item_parfait("emeraude",
	{"bijoux_emeraude.png"},
	"Emeraude",
	{})
--	"emeraude_imparfait",
--	"pioche",
--	"5")

bijoux.register_item_parfait("saphir",
	{"bijoux_saphir.png"},
	"Saphir",
	{})
	
bijoux.register_item_parfait("rubis",
	{"bijoux_rubis.png"},
	"Rubis",
	{})
	
bijoux.register_item_parfait("topaze",
	{"bijoux_topaze.png"},
	"Topaze",
	{})
	
bijoux.register_item_parfait("lapis_lazuli",
	{"bijoux_lapis_lazuli.png"},
	"Lapis Lazuli",
	{})
	
bijoux.register_item_parfait("jade",
	{"bijoux_jade.png"},
	"Jade",
	{})
	
bijoux.register_item_parfait("perle",
	{"bijoux_perle.png"},
	"Perle",
	{})
	
	
	
function bijoux.register_item_parfait(subname, images, description, groups)
	 minetest.register_craftitem("bijoux:" .. subname .. "_imparfait", {
		tiles = images,
		description = description,
		groups = groups,
	})
end
	
bijoux.register_item_parfait("emeraude",
	{"bijoux_emeraude_imparfaite.png"},
	"Emeraude Imparfaite",
	{input})
	
bijoux.register_item_parfait("saphir",
	{"bijoux_saphir_imparfait.png"},
	"Saphir Imparfait",
	{input})
	
bijoux.register_item_parfait("rubis",
	{"bijoux_rubis_imparfait.png"},
	"Rubis Imparfait",
	{input})
	
bijoux.register_item_parfait("topaze",
	{"bijoux_topaze_imparfaite.png"},
	"Topaze Imparfaite",
	{input})
	
bijoux.register_item_parfait("lapis_lazuli",
	{"bijoux_lapis_lazuli_imparfait.png"},
	"Lapis Lazuli Imparfait",
	{input})
	
bijoux.register_item_parfait("jade",
	{"bijoux_jade_imparfait.png"},
	"Jade Imparfait",
	{input})
	
bijoux.register_item_parfait("perle",
	{"bijoux_perle_imparfaite.png"},
	"Perle Imparfaite",
	{input})
	
-- Outils

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