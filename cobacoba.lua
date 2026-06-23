getgenv().Config = {
    Dashboard = {
        Enabled = true, -- Connect to the ZekeHub dashboard so you can see live stats and control this bot from the website
        SyncConfig = true, -- Let the dashboard change these settings live, without you re-running the script
        GroupName = "yosie", -- Folder name your bots show up under on the dashboard — bots sharing a name are grouped together (manage at https://zekehub.com/dashboard/gag2)
    },
    AutoHarvest = {
        Enabled = true, -- Harvest ready fruit and plants
        Mode = "All", -- All = harvest everything ready · Only Mutated = only fruit with a mutation (fast sheckles) · Skip Mutated = everything except mutated (save them to grow/sell)
        Mutations = {"Rainbow", "Gold"}, -- Whitelist for Only/Skip Mutated modes (empty = any mutation). e.g. Bloodlit, Electric, Rainbow, Frozen
        MinWeight = 0, -- Skip harvesting fruit under this weight (0 = no weight filter, applies in any mode)
    },
    AutoEquipPets = {
        Enabled = true, -- Auto equip pets
        FillRemaining = true, -- Fill leftover slots with any other benched pet
        EquipPets = {Deer = 0, Robin = 0, Bunny = 0}, -- Pet → amount to equip
    },
    AutoGarden = {
        Enabled = true, -- Master switch for the whole auto garden system
        PlotLimit = 100, -- Max total plants on your plot (lag cap). Over this = shovel the worst
        PlantMode = "All", -- "All" = plant/buy any seed, "Selected" = only seeds in the whitelist
        Whitelist = {}, -- Seeds allowed to plant/buy when mode is Selected
        NeverPlant = {
            "Dragon's Breath",
            "Ghost Pepper",
            "Poison Apple",
            "Rainbow",
            "Poison Ivy",
            "Venus Fly Trap",
            "Venom Spitter",
            "Romanesco",
            "Moon Bloom",
        }, -- Seeds to never plant or buy, any mode (overrides everything)
        Sprinklers = false, -- Auto-place sprinklers you own for the growth boost
        AutoWater = false, -- Auto water decaying plants to revive them (skips mutated if Keep Mutated is on)
        Upgrade = false, -- Only setting that digs grown plants: at the cap, swap the worst for a 1.5x-better in-stock seed (off = never touch your plants)
        KeepMutated = true, -- Never shovel mutated/variant plants
        Purge = {}, -- Always shovel these on sight (ignores Keep Mutated / Auto Upgrade)
        PlantLimits = {}, -- Max of each seed type to keep — over the cap, extras get shovelled (empty = no per-type cap)
    },
    AutoBuySeeds = {
        Enabled = true, -- Buy seeds from the seed shop
        Mode = "All", -- Buy any in-stock seed, or only the selected list
        Seeds = {}, -- Seed → max to own (counts seeds already held; 0 / empty = unlimited)
    },
    AutoBuyGears = {
        Enabled = true, -- Buy gears from the gear shop
        Mode = "All", -- Buy any in-stock gear, or only the selected list
        Gears = {}, -- Gear names to buy when mode is Selected
    },
    AutoBuySlot = {
        Enabled = true, -- Buy garden plot expansions when affordable
    },
    AutoBuyPets = {
        Enabled = true, -- Tame or buy wild pets that spawn
        Pets = {
            Unicorn = 0,
            Robin = 2,
            Raccoon = 0,
            Monkey = 0,
            ["Ice Serpent"] = 0,
            ["Golden Dragonfly"] = 0,
            ["Black Dragon"] = 0,
            Deer = 1,
            Bear = 0,
        }, -- Pet → max to own (counts pets already in your inventory; 0 / empty = unlimited)
    },
    AutoSell = {
        Enabled = true, -- Automatically sell fruit
        Mode = "Selected", -- Sell whole inventory (minus blacklist), or only the selected list
        Fruits = {
            "Acorn",
            "Apple",
            "Baby Cactus",
            "Banana",
            "Bamboo",
            "Blueberry",
            "Cactus",
            "Carrot",
            "Coconut",
            "Cherry",
            "Corn",
            "Dragon Fruit",
            "Glow Mushroom",
            "Grape",
            "Green Bean",
            "Horned Melon",
            "Hypnobloom",
            "Mango",
            "Mushroom",
            "Pineapple",
            "Poison Ivy",
            "Strawberry",
            "Sunflower",
            "Tomato",
            "Tulip",
        }, -- Fruit names to sell when mode is Selected
        BlacklistChecks = {}, -- Checks used to protect fruit from selling
        BlacklistMutations = {"Rainbow", "Gold"}, -- Mutations to protect from selling (empty = any mutation)
        BlacklistMinWeight = 100, -- Protect fruit at or above this weight
        BlacklistMinSellPrice = 1000, -- Protect fruit at or above this sell price
    },
    AutoEventSeeds = {
        Enabled = true, -- Collect event seed spawns
        Types = {
            "Venus Fly Trap",
            "Venom Spitter",
            "Romanesco",
            "Rainbow",
            "Pomegranate",
            "Poison Apple",
            "Moon Bloom",
            "Gold",
            "Ghost Pepper",
            "Dragon's Breath",
            "Bamboo",
        }, -- Event seed types to collect
    },
    AutoMail = {
        Enabled = true, -- Mail items to one or more usernames
        ClaimMail = true, -- Auto claim incoming mail rewards
        Recipients = {
            {
                Username = "kkndesapenari33",
                Items = {
                    "Seed: Ghost Pepper",
                    "Seed: Bamboo",
                    "Seed: Dragon's Breath",
                    "Pet: Golden Dragonfly",
                    "Seed: Gold",
                    "Pet: Ice Serpent",
                    "Seed: Poison Ivy",
                    "Pet: Raccoon",
                    "Pet: Unicorn",
                    "Seed: Venus Fly Trap",
                    "Gear: Super Watering Can",
                    "Gear: Super Sprinkler",
                    "Gear: Super Pet Teleporter",
                    "Seed: Rainbow",
                    "Seed: Moon Bloom",
                    "Gear: Legendary Sprinkler",
                },
                ItemCounts = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
            },
            {
                Username = "soooyoooo0",
                Items = {
                    "Seed: Ghost Pepper",
                    "Seed: Bamboo",
                    "Seed: Dragon's Breath",
                    "Pet: Golden Dragonfly",
                    "Seed: Gold",
                    "Pet: Ice Serpent",
                    "Seed: Poison Ivy",
                    "Pet: Raccoon",
                    "Pet: Unicorn",
                    "Seed: Venus Fly Trap",
                    "Gear: Super Watering Can",
                    "Gear: Super Sprinkler",
                    "Gear: Super Pet Teleporter",
                    "Seed: Rainbow",
                    "Seed: Moon Bloom",
                    "Gear: Legendary Sprinkler",
                },
                ItemCounts = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
            },
        }, -- Who to mail and the items + per-item caps to send each.
    },
    PetWebhook = {
        Enabled = true, -- Send a Discord webhook when a wild pet spawns in this alt's server
        URL = "https://discordapp.com/api/webhooks/1517315397672505366/sUGD0R8KPYXBmE59o_OyM4xbs5yfO6OfokZIvFHtlRdSXYK58XrqXHmsOtRE-_xkz4Im", -- Discord webhook URL to post pet spawn alerts to
        Pets = {
            "Raccoon",
            "Unicorn",
            "Ice Serpent",
            "Golden Dragonfly",
            "Robin",
            "Deer",
            "Monkey",
            "Black Dragon",
        }, -- Only alert for these pet names (empty = alert for every pet)
        PingEveryone = false, -- Add @everyone to the webhook for matching pets
    },
    Settings = {
        ShowOverlay = true, -- Render the stats overlay inside Roblox
        AutoCenter = true, -- Repeatedly recenter your character on the plot
        FPSCap = 10, -- Lock the Roblox client FPS
    },
};
getgenv().scriptkey="cosNmLXahBWtMvJCbLKmBUCpXkSEcLIz"
loadstring(game:HttpGet("https://zekehub.com/scripts/GAG2/Main.lua"))()