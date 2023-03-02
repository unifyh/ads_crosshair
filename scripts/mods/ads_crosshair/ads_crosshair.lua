local mod = get_mod("ads_crosshair")

local VANILLA_CHARGE_UP_ADS_PATH = 'scripts/ui/hud/elements/crosshair/templates/crosshair_template_charge_up_ads'
local VANILLA_IRONSIGHT_ADS_PATH = 'scripts/ui/hud/elements/crosshair/templates/crosshair_template_ironsight'

local MOD_CHARGE_UP_ADS_PATH = 'ads_crosshair/scripts/mods/ads_crosshair/templates/crosshair_template_charge_up_ads'
local MOD_IRONSIGHT_ADS_PATH = 'ads_crosshair/scripts/mods/ads_crosshair/templates/crosshair_template_ironsight'

mod:hook(_G, 'require', function(func, path, ...)
    local result = func(path, ...)
    if path == VANILLA_CHARGE_UP_ADS_PATH then
        return Mods.file.dofile(MOD_CHARGE_UP_ADS_PATH)
    elseif path == VANILLA_IRONSIGHT_ADS_PATH then
        return Mods.file.dofile(MOD_IRONSIGHT_ADS_PATH)
    end
    return result
end)
