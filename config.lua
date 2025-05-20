config = {}

local policejob = "police"
local sheriffjob = "sheriff"
local ambjob = "ambulance"
local firejob = "fire"

config.coords = {
    {coords = vec4(467.2547, -1011.5063, 30.7073, 94.4044), ped = 'a_f_y_business_01', jobs = {policejob, sheriffjob}}
}

config.outfits = {
    {name = "test", icon = "fa-solid fa-circle", type = policejob, model = "male", props = '[{"prop_id":0,"texture":-1,"drawable":-1},{"prop_id":1,"texture":-1,"drawable":-1},{"prop_id":2,"texture":-1,"drawable":-1},{"prop_id":6,"texture":-1,"drawable":-1},{"prop_id":7,"texture":-1,"drawable":-1}]', components = '[{"texture":0,"drawable":0,"component_id":0},{"texture":0,"drawable":0,"component_id":1},{"texture":0,"drawable":48,"component_id":2},{"texture":0,"drawable":15,"component_id":3},{"texture":0,"drawable":20,"component_id":4},{"texture":0,"drawable":0,"component_id":5},{"texture":0,"drawable":146,"component_id":6},{"texture":0,"drawable":0,"component_id":7},{"texture":0,"drawable":15,"component_id":8},{"texture":0,"drawable":0,"component_id":9},{"texture":0,"drawable":0,"component_id":10},{"texture":0,"drawable":527,"component_id":11}]'},
}