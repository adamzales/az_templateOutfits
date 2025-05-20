function registerButtons()
    buttons = {}
    for k,v in pairs(config.outfits) do
        if getJob() == v.type and getGender() == v.model then
            button = {
                title = v.name,
                onSelect = function()
                    local input = lib.inputDialog('Pojmenuj si outfit', {'Jméno outfitu ve tvém šatníku'})
                    if input then
                        lib.callback.await('az_outfits:createOutfit', false, input[1], v.props, v.components)
                    else return end
                    
                end
            }
            table.insert(buttons, button)
        end
    end
end

function getGender()
    if ESX.PlayerData.sex == "m" then
        return "male"
    elseif ESX.PlayerData.sex == "f" then
        return "female"
    end
end

function getJob()
    getGroup = Renewed.getPlayerGroup()
    for k,v in pairs(getGroup) do
        return k
    end
end

for k,v in pairs(config.coords) do
    Renewed.addPed({ 
    model = v.ped,
    dist = 300,
    coords = vec3(v.coords.x, v.coords.y, v.coords.z),
    heading = v.coords.w,
    freeze = true,
    invincible = true,
    tempevents = true,
    animDict = 'anim@mp_player_intcelebrationfemale@the_woogie',
    animName = 'the_woogie',
    scenario = false,
    
    target = {
        {
            icon = 'fa-solid fa-user"',
            label = 'Přednastavené outfity',
            groups = v.jobs,
            onSelect = function()
                registerContext()
                lib.showContext('az_outfitsMenu')
            end
        }
    }

})

end

function registerContext()
    registerButtons()
    Wait(10)
    lib.registerContext({
    id = 'az_outfitsMenu',
    title = 'Vyber si přednastavený outfit',
    menu = 'az_outfitsMenu',
    options = buttons
    })
end