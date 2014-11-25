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
	if parameters.intput ~= nil then
		atelier.recipes[parameters.intput].output = parameters.input
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
	"list[current_name;output;2,3;1,1;]"..
	"list[current_name;input;2,1;1,1;]"..
	"list[current_name;tool;5,1;2,2;]"..
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
      return stack:get_count()
    elseif listname == "tool" then
      return 0
    end
  end,
})