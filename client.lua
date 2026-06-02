RegisterNetEvent("oak_console:giveMoneyNotif")
AddEventHandler("oak_console:giveMoneyNotif", function(amount)

    local title = "Supporter Benefits"
    local text = "You have received $" .. amount .. " for supporting the server!"
    local dict = "inventory_items"
    local icon = "provision_beaus_gift_1"
    local color = "COLOR_GREENLIGHT"
    local duration = 10000
    local soundset_ref = "SHOWS_sounds"
    local soundset_name = "CHEER_SMALL"

    jo.notif.left(title, text, dict, icon, color, duration, soundset_ref, soundset_name)
end)

RegisterNetEvent("oak_console:giveGoldNotif")
AddEventHandler("oak_console:giveGoldNotif", function(amount)

    local title = "Supporter Benefits"
    local text = "You have received " .. amount .. " gold for supporting the server!"
    local dict = "inventory_items"
    local icon = "provision_beaus_gift_1"
    local color = "COLOR_GREENLIGHT"
    local duration = 10000
    local soundset_ref = "SHOWS_sounds"
    local soundset_name = "CHEER_SMALL"

    jo.notif.left(title, text, dict, icon, color, duration, soundset_ref, soundset_name)
end)

RegisterNetEvent("oak_console:removeMoneyNotif")
AddEventHandler("oak_console:removeMoneyNotif", function(amount)

    local title = "Supporter Benefits"
    local text = "An admin has taken $" .. amount .. " from your total money."
    local color = "COLOR_RED"
    local duration = 10000

    jo.notif.left(title, text, color, duration)
end)
