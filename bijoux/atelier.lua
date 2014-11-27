--- Atelier de bijoutier ---

atelier = {}
atelier.recipes = {}
function atelier.register_recipe(parameters)
	if parameters.output == nil then
		minetest.log("error", "Failed to register atelier's craft recipe : No output itemstring given.")
		return
	elseif parameters.input == nil
		or parameters.tool == nil
		or parameters.duration == nil then
		
		minetest.log("error", "Failed to register atelier's craft recipe for "..parameters.output..".")
		return
	end
	atelier.recipes[parameters.input] = {}
	atelier.recipes[parameters.input].output = parameters.output
	atelier.recipes[parameters.input].duration = parameters.duration
	atelier.recipes[parameters.input].tool = parameters.tool
end

atelier_formspec = 
	"size[8,9]"..
	"image[2,2;1,1;bijoux_atelier_pioche_bg.png]"..
	"list[current_name;tool;2,3;1,1;]"..
	"list[current_name;input;2,1;1,1;]"..
	"list[current_name;output;5,1;2,2;]"..
	"list[current_player;main;0,5;8,4;]"
	
minetest.register_node("bijoux:atelier", {
  description = "Atelier",
  tiles = {"default_obsidian.png", "default_steel_block.png", "default_steel_block.png",
    "default_steel_block.png", "default_steel_block.png", "bijoux_atelier_front.png"},
  paramtype2 = "facedir",
  groups = {crumbly=3},
  legacy_facedir_simple = true,
  is_ground_content = false,

  on_construct = function(pos)
    local meta = minetest.get_meta(pos)
    meta:set_string("formspec", atelier_formspec)
    meta:set_string("infotext", "Atelier")
	meta:set_int("tick",0)
	
	local inv = meta:get_inventory()
    inv:set_size("output", 1)
    inv:set_size("input", 1)
    inv:set_size("tool", 1)
  end,

  can_dig = function(pos,player)
    local meta = minetest.get_meta(pos);
    local inv = meta:get_inventory()
    if not inv:is_empty("output") then
      return false
    elseif not inv:is_empty("tool") then
      return false
    elseif not inv:is_empty("input") then
      return false
    end
    return true
  end,
	
  allow_metadata_inventory_put = function(pos, listname, index, stack, player)
    local meta = minetest.get_meta(pos)
    local inv = meta:get_inventory()
    if listname == "input" then
      if atelier.recipes[stack:get_name()] then
        if inv:is_empty("tool") then
          meta:set_string("infotext","Aucun outil present!")
        else
		  meta:set_string("infotext","Taille en cours...")
		end
        return stack:get_count()
      else
        return 0
      end
    elseif listname == "output" then
		return 0
    elseif listname == "tool" then
		if inv:is_empty("input") then
			meta:set_string("infotext","Aucun item à tailler!")
        else
			meta:set_string("infotext","Taille en cours...")
		end
		return 1
    end
  end,
})

minetest.register_abm({
	nodenames = {"bijoux:atelier"},
	interval = 1.0,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		meta = minetest.get_meta(pos)
		inv = meta:get_inventory()
		
		inputstack = inv:get_list("input")[1]
		outputstack = inv:get_list("output")[1]
		toolstack = inv:get_list("tool")[1]
		
		if inv:get_list("input")[1]:get_name() ~= ""
			and inv:get_list("tool")[1]:get_name() == atelier.recipes[inputstack:get_name()].tool
			and atelier.recipes[inv:get_list("input")[1]:get_name()].output ~= nil
			and (inv:get_list("output")[1]:get_name() == "" 
				or inv:get_list("output")[1]:get_name() == atelier.recipes[inputstack:get_name()].output) then
			
			inv:set_list("output", {[1] = atelier.recipes[inputstack:get_name()].output.." "..outputstack:get_count()+1})
			
			inputstack:set_count(inputstack:get_count()-1)
			inv:set_list("input",{[1] = inputstack})

			if toolstack:get_wear()+10000 > 65534 then
				inv:set_list("tool",{[1] = ""})
			else
				toolstack:set_wear(toolstack:get_wear()+10000)
				inv:set_list("tool",{[1] = toolstack})
			end
			
			toolstack = inv:get_list("tool")[1]
			
			if inputstack:is_empty() and toolstack:is_empty() then
				meta:set_string("infotext","Atelier")
			elseif toolstack:is_empty() then
				meta:set_string("infotext","Aucun outil present!")
			elseif inputstack:is_empty() then
				meta:set_string("infotext","Aucun item à tailler!")
			end
		end
	end,
})



-- Registering

atelier.register_recipe({
	output = "bijoux:perle",
	input = "bijoux:perle_imparfaite",
	tool = "bijoux:pioche",
	duration = 5
})


atelier.register_recipe({
	output = "bijoux:emeraude",
	input = "bijoux:emeraude_imparfaite",
	tool = "bijoux:pioche",
	duration = 5
})


atelier.register_recipe({
	output = "bijoux:jade",
	input = "bijoux:jade_imparfait",
	tool = "bijoux:pioche",
	duration = 5
})


atelier.register_recipe({
	output = "bijoux:lapis_lazuli",
	input = "bijoux:lapis_lazuli_imparfait",
	tool = "bijoux:pioche",
	duration = 5
})


atelier.register_recipe({
	output = "bijoux:rubis",
	input = "bijoux:rubis_imparfait",
	tool = "bijoux:pioche",
	duration = 5
})


atelier.register_recipe({
	output = "bijoux:saphir",
	input = "bijoux:saphir_imparfait",
	tool = "bijoux:pioche",
	duration = 5
})

atelier.register_recipe({
	output = "bijoux:topaze",
	input = "bijoux:topaze_imparfait",
	tool = "bijoux:pioche",
	duration = 5
})
