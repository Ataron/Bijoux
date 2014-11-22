--- Atelier de bijoutier ---

atelier = {}
atelier.recipes = {}
function atelier.register_recipe(parameters)
	print("Atelier :")
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
	print(parameters.duration)
	if parameters.output == nil then
		return 
	end
	if parameters.intput ~= nil then
		atelier.recipes[parameters.output].input = parameters.input
	end
	if parameters.duration ~= nil then
		atelier.recipes[parameters.output].duration = parameters.duration
	end
	if parameters.tool ~= nil then
		atelier.recipes[parameters.output].tool = parameters.tool
	end
end

atelier_formspec = 
	"size[8,9]"..
	"image[2,2;1,1;bijoux_atelier_pioche_bg.png]"..
	"list[current_name;oat;2,3;1,1;]"..
	"list[current_name;outils;2,1;1,1;]"..
	"list[current_name;oti;5,1;2,2;]"..
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
    inv:set_size("oat", 1)
    inv:set_size("outils", 1)
    inv:set_size("oti", 1)
  end,

  can_dig = function(pos,player)
    local meta = minetest.get_meta(pos);
    local inv = meta:get_inventory()
    if not inv:is_empty("oat") then
      return false
    elseif not inv:is_empty("oti") then
      return false
    elseif not inv:is_empty("outils") then
      return false
    end
    return true
  end,
	
  allow_metadata_inventory_put = function(pos, listname, index, stack, player)
    local meta = minetest.get_meta(pos)
    local inv = meta:get_inventory()
    print(listname)
    if listname == "outils" then
      if minetest.get_craft_result({method="fuel",width=1,items={stack}}).time ~= 0 then
        if inv:is_empty("outils") then
          meta:set_string("infotext","Aucun outil present!")
        end
        return stack:get_count()
      else
        return 0
      end
    elseif listname == "oat" then
      return stack:get_count()
    elseif listname == "oti" then
      return 0
    end
  end,
})