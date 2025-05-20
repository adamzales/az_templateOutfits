lib.callback.register('az_outfits:createOutfit', function(source, name, props, components)
    local charId = Renewed.getCharId(source)
    local id = MySQL.insert.await('INSERT INTO `player_outfits` (citizenid, outfitname, model, props, components) VALUES (?, ?, ?, ?, ?)', {
    charId, name, getSex(),props, components})
    if id then
        TriggerClientEvent('ox_lib:notify', source, {title = "Outfit uložen", description = string.format("Outfit se jménem %s byl úspěšně uložen do tvého šatníku", name), type = "success"})
    end

end)

function getSex()
    local xPlayer = ESX.GetPlayerFromId(source)
 
    if xPlayer.sex == 0 then
        return "mp_m_freemode_01"
    elseif xPlayer.sex == 1 then
        return "mp_f_freemode_01"
    end
end