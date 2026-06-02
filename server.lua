local Core = exports.vorp_core:GetCore()

RegisterCommand("givemoney", function(source, args)
    local charId = tonumber(args[1])
    local amount = tonumber(args[2])

    if not charId or not amount then
        print("Failed Usage: givemoney <playerId> <amount>")
        return
    end

    -- Get the user ID
    local user = Core.getUser(charId)
    if not user then
        print("Player not found (or not in session)")
        return
    end

    -- Get the loaded character ONLINE
    local character = user.getUsedCharacter
    if not character then
        print("Character not loaded for that user")
        return
    end

    -- Add currency: 0 = money, 1 = gold
    character.addCurrency(0, amount)

    print("Gave $" .. amount .. " to player " .. charId)

    TriggerClientEvent("oak_console:giveMoneyNotif", charId, amount)
end, true)

RegisterCommand("givegold", function(source, args)
    local charId = tonumber(args[1])
    local amount = tonumber(args[2])

    if not charId or not amount then
        print("Failed Usage: givegold <playerId> <amount>")
        return
    end

    -- Get the user ID
    local user = Core.getUser(charId)
    if not user then
        print("Player not found (or not in session)")
        return
    end

    -- Get the loaded character ONLINE
    local character = user.getUsedCharacter
    if not character then
        print("Character not loaded for that user")
        return
    end

    -- Add currency: 0 = money, 1 = gold
    character.addCurrency(1, amount)

    print("Gave " .. amount .. " gold to player " .. charId)

    TriggerClientEvent("oak_console:giveGoldNotif", charId, amount)
end, true)

RegisterCommand("removemoney", function(source, args)
    local charId = tonumber(args[1])
    local amount = tonumber(args[2])

    if not charId or not amount then
        print("Failed Usage: givegold <playerId> <amount>")
        return
    end

    -- Get the user ID
    local user = Core.getUser(charId)
    if not user then
        print("Player not found (or not in session)")
        return
    end

    -- Get the loaded character ONLINE
    local character = user.getUsedCharacter
    if not character then
        print("Character not loaded for that user")
        return
    end

    -- Add currency: 0 = money, 1 = gold
    character.removeCurrency(0, amount)

    print("Removed " .. amount .. " money from player " .. charId)

    TriggerClientEvent("oak_console:removeMoneyNotif", charId, amount)
end, true)
