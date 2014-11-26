--- Atelier de bijoutier ---

atelier = {}
atelier.recipes = {}
function atelier.register_recipe(parameters)
	--[[print("Atelier :")
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
	print(parameters.duration)]]--
	atelier.recipes[parameters.input] = {}
	if parameters.output == nil then
		return 
	end
	if parameters.input ~= nil then
		atelier.recipes[parameters.input].output = parameters.output
	end
	if parameters.duration ~= nil then
		atelier.recipes[parameters.input].duration = parameters.duration
	end
	if parameters.tool ~= nil then
		atelier.recipes[parameters.input].tool = parameters.tool
	end
end

atelier.register_recipe({
	output = "default:mese",
	input = "bijoux:perle_imparfaite",
	tool = "default:pick_wood",
	duration = 5
})
	

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
    --print(listname)
    if listname == "input" then
      if atelier.recipes[stack:get_name()] then
        if inv:is_empty("tool") then
          meta:set_string("infotext","Aucun outil present!")
        end
        return stack:get_count()
      else
        return 0
      end
    elseif listname == "output" then
      return 0
    elseif listname == "tool" then
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
		print("?")
		inputstack = inv:get_list("input")[1]
		outputstack = inv:get_list("output")[1]
		toolstack = inv:get_list("tool")[1]
		
		print("input "..inputstack:get_name())
		print("output "..outputstack:get_name())
		print("tool "..toolstack:get_name())
		
		if inv:get_list("input")[1]:get_name() ~= "" 
			and inv:get_list("output")[1]:get_name() == "" 
			and inv:get_list("tool")[1]:get_name() ~= "" 
			and atelier.recipes[inv:get_list("input")[1]:get_name()] ~= nil 
			and atelier.recipes[inv:get_list("input")[1]:get_name()].output ~= nil then
			print("!")

			--inputstack:set_count(inputstack:get_count()-1)
			inv:set_list("input",{[1] = inputstack:get_name().." "..inputstack:get_count()-1})
			inv:set_list("output", {[1] = atelier.recipes[inputstack:get_name()].output})
			toolstack:set_wear(toolstack:get_wear()-10)
		end
	end,
})