--/smartphone/init.lua
---------------------------------------------------
minetest.register_craftitem("smartphone:smartphone",{
  description = "smartphone, it helps to writes messages to other players",
  inventory_image = "smartphone_smartphone.png",
  on_use = function(itemstack, user, pointed_thing)
    minetest.show_formspec(user:get_player_name(), "smartphone:send_message",
                "size[4,5]" ..
                "field[0,1;3,1;name;Message to player;]" ..
                "field[0,3;3,1;message;Message;]" ..
                "button_exit[1,4;2,1;exit;Send]")
  end
})
minetest.register_on_player_receive_fields(function(player, formname, fields)
    if formname ~= "smartphone:send_message" then
        return false
    end
    minetest.chat_send_player(fields.name, player:get_player_name().. ": " .. fields.message)
    minetest.show_formspec(fields.name, "smartphone:get_message",
                  "size[4,2]" ..
                  "label[0,0;" .. player:get_player_name().. ": "..fields.message.."]" ..
                  "button_exit[0,1;2,1;exit;Ok]")


    return true
end)
----------------------------------------------------------------------------------------------------------------------

minetest.register_craft({
    output = "smartphone:smartphone",
    recipe = {
        {"dafault:glass", "dafault:glass", "dafault:glass"},
        {"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
    }
})
