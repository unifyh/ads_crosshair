return {
	run = function()
		fassert(rawget(_G, "new_mod"), "`ads_crosshair` encountered an error loading the Darktide Mod Framework.")

		new_mod("ads_crosshair", {
			mod_script       = "ads_crosshair/scripts/mods/ads_crosshair/ads_crosshair",
			mod_data         = "ads_crosshair/scripts/mods/ads_crosshair/ads_crosshair_data",
			mod_localization = "ads_crosshair/scripts/mods/ads_crosshair/ads_crosshair_localization",
		})
	end,
	packages = {},
}
