local function AddIcons(self, event, message, ...)
	local function Icon(link)
		local texture = GetItemIcon(link)
		return "\124T" .. texture .. ":" .. 12 .. "\124t" .. link
	end
	message = message:gsub("(\124c%x+\124Hitem:.-\124h\124r)", Icon)
	return false, message, ...
end

ChatFrame_AddMessageEventFilter("CHAT_MSG_LOOT", AddIcons)
ChatFrame_AddMessageEventFilter("CHAT_MSG_BATTLEGROUND_LEADER", AddIcons)
ChatFrame_AddMessageEventFilter("CHAT_MSG_BN_WHISPER", AddIcons)
ChatFrame_AddMessageEventFilter("CHAT_MSG_BN_WHISPER_INFORM", AddIcons)
ChatFrame_AddMessageEventFilter("CHAT_MSG_CHANNEL", AddIcons)
ChatFrame_AddMessageEventFilter("CHAT_MSG_GUILD", AddIcons)
ChatFrame_AddMessageEventFilter("CHAT_MSG_INSTANCE_CHAT", AddIcons)
ChatFrame_AddMessageEventFilter("CHAT_MSG_OFFICER", AddIcons)
ChatFrame_AddMessageEventFilter("CHAT_MSG_PARTY", AddIcons)
ChatFrame_AddMessageEventFilter("CHAT_MSG_PARTY_LEADER", AddIcons)
ChatFrame_AddMessageEventFilter("CHAT_MSG_RAID", AddIcons)
ChatFrame_AddMessageEventFilter("CHAT_MSG_RAID_LEADER", AddIcons)
ChatFrame_AddMessageEventFilter("CHAT_MSG_RAID_WARNING", AddIcons)
ChatFrame_AddMessageEventFilter("CHAT_MSG_SAY", AddIcons)
ChatFrame_AddMessageEventFilter("CHAT_MSG_TRADESKILLS", AddIcons)
ChatFrame_AddMessageEventFilter("CHAT_MSG_WHISPER", AddIcons)
ChatFrame_AddMessageEventFilter("CHAT_MSG_WHISPER_INFORM", AddIcons)
ChatFrame_AddMessageEventFilter("CHAT_MSG_YELL", AddIcons)