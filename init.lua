--/smartphone/init.lua
---------------------------------------------------
minetest.register_craftitem("smartphone:whitesmartphone",{
  description = "a white smartphone, it helps to writes messages to other players",
  inventory_image = "smartphone_whitesmartphone.png",
  on_use = function(itemstack, user, pointed_thing)
  minetest.show_formspec(user:get_player_name(), "smartphone:send_message",
              "size[4,5]" ..
              "field[0,1;3,1;name;Message to player;]" ..
              "field[0,3;3,1;message;Message;]" ..
              "button_exit[1,4;2,1;exit;Send]")
  minetest.register_on_player_receive_fields(function(player, formname, fields)
      if formname ~= "smartphone:send_message" then
      return false
      end
      if fields.message ~= nil then
      minetest.sound_play("smartphone_defaultringtone", {
        to_player = fields.name,
        gain = 10.0,
      })
        minetest.chat_send_player(fields.name, player:get_player_name().. ": " .. fields.message)
        minetest.show_formspec(fields.name, "smartphone:get_message",
             "size[4,2]" ..
             "label[0,0;" .. player:get_player_name().. ": "..fields.message.."]" ..
             "button_exit[0,1;2,1;exit;Ok]")
             return true
      end
  end)

  end
})
minetest.register_craft({
    output = "smartphone:whitesmartphone",
    recipe = {
        {"dafault:glass", "dafault:glass", "dafault:glass"},
        {"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
        {"dye:white","dye:white","dye:white"}
    }
})

--------------------------------------------------------------------------------------------------------------------
minetest.register_craftitem("smartphone:blacksmartphone",{
  description = "a black smartphone, it helps to writes messages to other players",
  inventory_image = "smartphone_blacksmartphone.png",
  on_use = function(itemstack, user, pointed_thing)
  minetest.show_formspec(user:get_player_name(), "smartphone:send_message",
              "size[4,5]" ..
              "field[0,1;3,1;name;Message to player;]" ..
              "field[0,3;3,1;message;Message;]" ..
              "button_exit[1,4;2,1;exit;Send]")
  minetest.register_on_player_receive_fields(function(player, formname, fields)
      if formname ~= "smartphone:send_message" then
      return false
      end
      if fields.message ~= nil then
        minetest.chat_send_player(fields.name, player:get_player_name().. ": " .. fields.message)
        minetest.sound_play("smartphone_defaultringtone", {
          to_player = fields.name,
          gain = 10.0,
        })
        minetest.show_formspec(fields.name, "smartphone:get_message",
             "size[4,2]" ..
             "label[0,0;" .. player:get_player_name().. ": "..fields.message.."]" ..
             "button_exit[0,1;2,1;exit;Ok]")
             return true
      end
  end)
  end
})
minetest.register_craft({
    output = "smartphone:blacksmartphone",
    recipe = {
        {"dafault:glass", "dafault:glass", "dafault:glass"},
        {"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
        {"dye:black","dye:black","dye:black"}
    }
})

-----------------------------------------------------------------------------------------------------------------------
minetest.register_craftitem("smartphone:redsmartphone",{
  description = "a red smartphone, it helps to writes messages to other players",
  inventory_image = "smartphone_redsmartphone.png",
  on_use = function(itemstack, user, pointed_thing)
  minetest.show_formspec(user:get_player_name(), "smartphone:send_message",
              "size[4,5]" ..
              "field[0,1;3,1;name;Message to player;]" ..
              "field[0,3;3,1;message;Message;]" ..
              "button_exit[1,4;2,1;exit;Send]")
  minetest.register_on_player_receive_fields(function(player, formname, fields)
      if formname ~= "smartphone:send_message" then
      return false
      end
      if fields.message ~= nil then
        minetest.chat_send_player(fields.name, player:get_player_name().. ": " .. fields.message)
        minetest.sound_play("smartphone_defaultringtone", {
          to_player = fields.name,
          gain = 10.0,
        })
        minetest.show_formspec(fields.name, "smartphone:get_message",
             "size[4,2]" ..
             "label[0,0;" .. player:get_player_name().. ": "..fields.message.."]" ..
             "button_exit[0,1;2,1;exit;Ok]")
             return true
      end
  end)

  end
})
minetest.register_craft({
    output = "smartphone:redsmartphone",
    recipe = {
        {"dafault:glass", "dafault:glass", "dafault:glass"},
        {"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
        {"dye:red","dye:red","dye:red"}
    }
})

-----------------------------------------------------------------------------------------------------------------------

minetest.register_craftitem("smartphone:bluesmartphone",{
  description = "a blue smartphone, it helps to writes messages to other players",
  inventory_image = "smartphone_bluesmartphone.png",
  on_use = function(itemstack, user, pointed_thing)
  minetest.show_formspec(user:get_player_name(), "smartphone:send_message",
              "size[4,6]" ..
              "field[0,1;3,1;name;Message to player;]" ..
              "field[0,3;3,1;message;Message;]" ..
              "button_exit[1,4;2,1;exit;Send]")
  minetest.register_on_player_receive_fields(function(player, formname, fields)
      if formname ~= "smartphone:send_message" then
      return false
      end
      if fields.message ~= nil then
        minetest.chat_send_player(fields.name, player:get_player_name().. ": " .. fields.message)
        minetest.sound_play("smartphone_defaultringtone", {
          to_player = fields.name,
          gain = 10.0,
        })
        minetest.show_formspec(fields.name, "smartphone:get_message",
             "size[4,2]" ..
             "label[0,0;" .. player:get_player_name().. ": "..fields.message.."]" ..
             "button_exit[0,1;2,1;exit;Ok]")
             return true
      end
  end)

  end
})
minetest.register_craft({
    output = "smartphone:bluesmartphone",
    recipe = {
        {"dafault:glass", "dafault:glass", "dafault:glass"},
        {"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
        {"dye:blue","dye:blue","dye:blue"}
    }
})

------------------------------------------------------------------------------------------------------------------------

minetest.register_craftitem("smartphone:greensmartphone",{
  description = "a green smartphone, it helps to writes messages to other players",
  inventory_image = "smartphone_greensmartphone.png",
  on_use = function(itemstack, user, pointed_thing)
  minetest.show_formspec(user:get_player_name(), "smartphone:send_message",
              "size[4,5]" ..
              "field[0,1;3,1;name;Message to player;]" ..
              "field[0,3;3,1;message;Message;]" ..
              "button_exit[1,4;2,1;exit;Send]")
  minetest.register_on_player_receive_fields(function(player, formname, fields)
      if formname ~= "smartphone:send_message" then
      return false
      end
      if fields.message ~= nil then
        minetest.chat_send_player(fields.name, player:get_player_name().. ": " .. fields.message)
        minetest.sound_play("smartphone_defaultringtone", {
          to_player = fields.name,
          gain = 10.0,
        })
        minetest.show_formspec(fields.name, "smartphone:get_message",
             "size[4,2]" ..
             "label[0,0;" .. player:get_player_name().. ": "..fields.message.."]" ..
             "button_exit[0,1;2,1;exit;Ok]")
             return true
      end
  end)

  end
})
minetest.register_craft({
    output = "smartphone:greensmartphone",
    recipe = {
        {"dafault:glass", "dafault:glass", "dafault:glass"},
        {"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
        {"dye:green","dye:green","dye:green"}
    }
})

---------------------------------------------------------------------------------------------------------------------

minetest.register_craftitem("smartphone:yellowsmartphone",{
  description = "a yellow smartphone, it helps to writes messages to other players",
  inventory_image = "smartphone_yellowsmartphone.png",
  on_use = function(itemstack, user, pointed_thing)
  minetest.show_formspec(user:get_player_name(), "smartphone:send_message",
              "size[4,5]" ..
              "field[0,1;3,1;name;Message to player;]" ..
              "field[0,3;3,1;message;Message;]" ..
              "button_exit[1,4;2,1;exit;Send]")
  minetest.register_on_player_receive_fields(function(player, formname, fields)
      if formname ~= "smartphone:send_message" then
      return false
      end
      if fields.message ~= nil then
        minetest.chat_send_player(fields.name, player:get_player_name().. ": " .. fields.message)
        minetest.sound_play("smartphone_defaultringtone", {
          to_player = fields.name,
          gain = 10.0,
        })
        minetest.show_formspec(fields.name, "smartphone:get_message",
             "size[4,2]" ..
             "label[0,0;" .. player:get_player_name().. ": "..fields.message.."]" ..
             "button_exit[0,1;2,1;exit;Ok]")
             return true
      end
  end)

  end
})
minetest.register_craft({
    output = "smartphone:yellowsmartphone",
    recipe = {
        {"dafault:glass", "dafault:glass", "dafault:glass"},
        {"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
        {"dye:yellow","dye:yellow","dye:yellow"}
    }
})
