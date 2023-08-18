minetest.register_on_player_hpchange(function(player, hp_change, reason)
	if minetest.check_player_privs(player, { creative = true }) then
		-- Heal player if damage dealt
		--minetest.chat_send_player(player:get_player_name(), reason.type)
		--minetest.chat_send_player(player:get_player_name(), hp_change)
		if reason.type == "fall" or reason.type == "punch" or reason.type == "node_damage" or reason.type == "drown" then
			local hp = player:get_hp()
			player:set_hp(hp + (hp_change * -1))
		end
	end

end)
