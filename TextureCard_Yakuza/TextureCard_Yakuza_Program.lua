--- STEAMODDED HEADER
--- MOD_NAME: TextureCard_Yakuza
--- MOD_ID: Yakuza_Mod
--- MOD_AUTHOR: [Stangza560 & BSAN]
--- MOD_DESCRIPTION: A mod that change Texture Card to Yakuza           KIRYU-CHAAAAAAN!!
--- VERSION: 1.0.1

----------------------------------------------
------------MOD CODE -------------------------

function debugMessage(message)
	sendDebugMessage('[TextureCard_Yakuza] ' .. message)
end

debugMessage("Launching")

G.F_NO_ACHIEVEMENTS = false
local TextureCard_Yakuza = SMODS.current_mod

-- Yakuza Icon
SMODS.Atlas({
    key = "modicon",
    path = "icon.png",
    px = 32,
    py = 32
})

-- Hearts Yakuza
SMODS.Atlas{
    key = "Hearts_Yakuza",
    path = "Hearts_Yakuza.png",
    px = 71,
    py = 95,
    atlas_table = 'ASSET_ATLAS',
	prefix_config = { key = false }
}

SMODS.DeckSkin{
    key = "Yakuza_Hearts",
    suit = 'Hearts',
    palettes = {
        {
            key = 'Default',
            ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace'},
            display_ranks = {"Ace", 'King', 'Queen', 'Jack'},
            atlas = 'Hearts_Yakuza',
            posStyle = 'suit',
            colour = HEX('f0678a')
        },
    },
    loc_txt = {
        ['en-us'] = 'Hearts_Yakuza'
    }
}

-- Clubs Yakuza
SMODS.Atlas{
    key = "Clubs_Yakuza",
    path = "Clubs_Yakuza.png",
    px = 71,
    py = 95,
    atlas_table = 'ASSET_ATLAS',
	prefix_config = { key = false }
}

SMODS.DeckSkin{
    key = "Yakuza_Clubs",
    suit = 'Clubs',
    palettes = {
        {
            key = 'Default',
            ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace'},
            display_ranks = {"Ace", 'King', 'Queen', 'Jack'},
            atlas = 'Clubs_Yakuza',
            posStyle = 'suit',
            colour = HEX('798745')
        },
    },
    loc_txt = {
        ['en-us'] = 'Clubs_Yakuza'
    }
}

-- Diamonds Yakuza
SMODS.Atlas{
    key = "Diamonds_Yakuza",
    path = "Diamonds_Yakuza.png",
    px = 71,
    py = 95,
    atlas_table = 'ASSET_ATLAS',
	prefix_config = { key = false }
}

SMODS.DeckSkin{
    key = "Yakuza_Diamonds",
    suit = 'Diamonds',
    palettes = {
        {
            key = 'Default',
            ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace'},
            display_ranks = {"Ace", 'King', 'Queen', 'Jack'},
            atlas = 'Diamonds_Yakuza',
            posStyle = 'suit',
            colour = HEX('ba4531')
        },
    },
    loc_txt = {
        ['en-us'] = 'Diamonds_Yakuza'
    }
}

-- Spades Yakuza
SMODS.Atlas{
    key = "Spades_Yakuza",
    path = "Spades_Yakuza.png",
    px = 71,
    py = 95,
    atlas_table = 'ASSET_ATLAS',
	prefix_config = { key = false }
}

SMODS.DeckSkin{
    key = "Yakuza_Spades",
    suit = 'Spades',
    palettes = {
        {
            key = 'Default',
            ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace'},
            display_ranks = {"Ace", 'King', 'Queen', 'Jack'},
            atlas = 'Spades_Yakuza',
            posStyle = 'suit',
            colour = HEX('7f80bf')
        },
    },
    loc_txt = {
        ['en-us'] = 'Spades_Yakuza'
    }
}

-------------------
--- Credits Tab ---
-------------------
TextureCard_Yakuza.credits_tab = function()

	local title_scale = 0.9 * 0.6
	local text_scale = 0.9 * 0.5
	local notice_scale = 0.9 * 0.3

	return {
		n = G.UIT.ROOT,
		config = { align = "cm", padding = 0.2, colour = G.C.BLACK, r = 0.1, emboss = 0.05, minh = 6, minw = 10 },
		nodes = {
			{
				n = G.UIT.R,
				config = { align = "cm", padding = 0.1, outline_colour = G.C.JOKER_GREY, r = 0.1, outline = 1 },
				nodes = {
					{
						n = G.UIT.R,
						config = { align = "cm", padding = 0 },
						nodes = {
							{ n = G.UIT.T, config = { text = 'Programming/Modder', scale = title_scale, colour = G.C.GOLD, shadow = true } },
						}
					},
					{
						n = G.UIT.R,
						config = { align = "cm", padding = 0 },
						nodes = {
							{ n = G.UIT.T, config = { text = 'Stangza560', scale = text_scale, colour = G.C.UI.TEXT_LIGHT, shadow = true } },
						}
					}
				}
			},
			{
				n = G.UIT.R,
				config = { align = "cm", padding = 0.1, outline_colour = G.C.JOKER_GREY, r = 0.1, outline = 1 },
				nodes = {
					{
						n = G.UIT.R,
						config = { align = "cm", padding = 0 },
						nodes = {
							{ n = G.UIT.T, config = { text = 'Artist', scale = title_scale, colour = G.C.RED, shadow = true } },
						}
					},
					{
						n = G.UIT.R,
						config = { align = "cm", padding = 0 },
						nodes = {
							{ n = G.UIT.T, config = { text = 'BSAN', scale = text_scale, colour = G.C.UI.TEXT_LIGHT, shadow = true } },
						}
					}
				}
			}
		}
	}
end
----------------------------------------------
------------MOD CODE END----------------------