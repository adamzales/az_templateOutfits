fx_version 'cerulean'
game 'gta5'
lua54 'yes'
author 'adamzales'

client_script 'client/*.lua'

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/*.lua'}

shared_scripts {
    '@es_extended/imports.lua',
    '@ox_lib/init.lua',
    '@Renewed-Lib/init.lua',
    'config.lua'
}
dependencies {'ox_lib', 'illenium-appearance', 'es_extended', 'Renewed-Lib'}
