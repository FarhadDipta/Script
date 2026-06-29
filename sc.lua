getgenv().Settings = {
    LoopDelay = 0.15,                       -- seconds between main farm cycles (lower = faster/heavier)
    MoveSpeed = 25,                         -- studs/sec for all teleport-glides; keep <= ~30 or the anti-cheat rubber-bands you

    AutoHarvest = true,
    HarvestSeedFilter = {
        "Dragon's Breath",
        "Moon Bloom",
    },                 -- {} = all; else names e.g. {"Carrot","Strawberry"}
    HarvestMutationFilter = {},             -- {} = all; "None"=unmutated; e.g. {"Gold","Rainbow"}
    HarvestHighestValueFirst = false,
    MinFruitValue = 0,                      -- only harvest fruit worth >= this ($)
    StayInGarden = true,
    HarvestWeightComparison = "Below",        -- "Any" | "Above" | "Below"
    HarvestWeightThreshold = 50,             -- kg; paired with HarvestWeightComparison
    HarvestCollectDelay = 0,

    SellWhenBagFull = true,
    SellEverySeconds = 300,                   -- 0 = off, else sell on this interval
    ProtectFavorited = true,                -- true = keep favorited; false = unfavorite all then sell everything
    SellProtect = false,                    -- temp-favorite matching fruit so it isn't sold (empty filters = protect EVERYTHING)
    SellProtectSeedFilter = {},             -- {} = all; else names e.g. {"Carrot"}
    SellProtectMutationFilter = {},         -- {} = all; "None"=unmutated; e.g. {"Gold","Rainbow"}
    SellAtHighPriceMult = 0,                -- 0 = off; else only sell a species when its price mult >= this
    AutoDoubleOrNothing = false,            -- only works while standing AT Steven (no auto-nav)
    DoNCashOutWins = 1,                     -- cash out after this many wins

    AutoBuySeeds = {
        "Briar Rose",
        "Ghost Pepper",
        "Mega",
        "Poison Apple",
        "Pomegranate",
        "Rainbow",
        "Romanesco",
        "Venom Spitter",
        "Venus Fly Trap",
        "Dragon's Breath",
        "Hypno Bloom",
        "Moon Bloom",
    },                      -- {} = none; else names e.g. {"Carrot","Strawberry"}
    AutoBuyAllSeeds = false,
    AutoBuyGear = {
        "Legendary Sprinkler",
        "Super Sprinkler",
        "Super Watering Can",
    },                       -- {} = none; else names e.g. {"Sprinkler","Watering Can"}
    AutoBuyAllGear = false,
    AutoBuyCrates = {},                     -- {} = none; else crate names
    AutoBuyAllCrates = false,

    AutoFavorite = false,
    FavoriteMutationFilter = {},            -- {} = all; "None"=unmutated; e.g. {"Gold","Rainbow"}

    AutoFarmFavorite = false,
    FarmFavoriteSeedFilter = {},            -- {} = all; else names e.g. {"Carrot"}
    FarmFavoriteMutationFilter = {},        -- {} = all; "None"=unmutated; e.g. {"Gold","Rainbow"}
    FarmFavoriteMode = "Favorite",          -- "Favorite" | "Unfavorite"
    FarmFavoriteWeightThreshold = 0,        -- kg; 0 = ignore weight
    FarmFavoriteWeightAbove = true,         -- true = ABOVE threshold; false = BELOW
    FarmFavoriteDelay = 0.1,

    AutoOpenSeedPack = false,
    AutoEquipSeedPack = false,
    AutoSkipSeedPack = false,
    SeedPackName = "",                      -- "" = any pack; else exact pack name e.g. "Common Seed Pack"

    AutoWater = false,
    WaterSeedFilter = {},                   -- {} = all; else names e.g. {"Carrot"}
    WaterPlantsPerCycle = 8,
    WaterLoopDelay = 1,                     -- seconds between water cycles

    AutoPlant = false,                      -- must be OFF for Reroll to run
    PlantSeeds = {},                        -- {} = none; else names e.g. {"Carrot","Strawberry"}
    PlantSpot = "Plot",                     -- "Plot" | "Saved"
    PlantSavedCFrame = "",                  -- CFrame string used when PlantSpot="Saved"

    Reroll = false,                         -- needs BOTH RerollSeed and RerollWant non-empty AND AutoPlant=false
    RerollSeed = {},                        -- seed(s) to plant+shovel until match e.g. {"Carrot"}
    RerollWant = {},                        -- desired resulting species e.g. {"Carrot"}

    AutoShovel = false,
    ShovelTree = false,                     -- also shovel trees/large plants
    ShovelSeedFilter = {},                  -- {} = all; else names e.g. {"Carrot"}
    ShovelMutationFilter = {},              -- {} = all; "None"=unmutated; e.g. {"Gold","Rainbow"}
    ShovelWeightComparison = "Above",       -- "Above" | "Below"
    ShovelWeightThreshold = 0,
    ShovelIgnoreFavorited = true,
    ShovelDelay = 0.1,

    AutoSprinkler = false,
    SprinklerTypes = {},                    -- {} = none; else names e.g. {"Basic Sprinkler"}
    SprinklerTargetPlant = {},              -- {} = anywhere; else plant names e.g. {"Carrot"}

    AutoTrowel = false,
    TrowelSeedFilter = {},                  -- {} = all; else names e.g. {"Carrot"}
    TrowelMaxPerCycle = 5,
    TrowelSpot = "Current",                 -- "Current" | "Saved"
    TrowelSavedCFrame = "",                 -- CFrame string used when TrowelSpot="Saved"

    AutoCollectDroppedSeeds = true,
    AutoCollectDropItems = false,
    AutoCollectDropFruits = false,
    CollectDropFruitsOnlyMine = false,
    CollectDropPerCycle = 3,

    AutoCollectEventSeeds = true,          -- Gold/Rainbow event seed-pack markers
    EventSeedMaxPerCycle = 200,

    AutoDropFruits = false,
    DropFruitSeedFilter = {},               -- {} = all; else names e.g. {"Carrot"}
    DropFruitMutationFilter = {},           -- {} = all; "None"=unmutated; e.g. {"Gold","Rainbow"}
    DropFruitMinValue = 0,                  -- only drop fruit worth >= this ($)
    DropFruitPerCycle = 3,
    DropFruitDelay = 0.15,

    AutoEquipPets = false,
    EquipMode = "Name",                     -- "Name" | "Rarity"
    EquipTypes = {},                        -- EquipMode="Name"; {} = all; else names e.g. {"Cat","Dog"}
    EquipRarity = {},                       -- EquipMode="Rarity"; {} = all; else e.g. {"Legendary","Mythical"}

    AutoBuyPet = true,
    PetBuyMode = "Name",                    -- "Name" | "Rarity"
    PetBuyTypes = {
        "Bear",
        "BlackDragon",
        "GoldenDragonfly",
        "IceSerpent",
        "Raccoon",
        "Unicorn",
    },                       -- PetBuyMode="Name"; {} = all; else names e.g. {"Cat"}
    PetBuyRarity = {},                      -- PetBuyMode="Rarity"; {} = all; else e.g. {"Legendary"}

    DefendPet = false,
    DefendTime = 12,                        -- seconds to defend
    MaxSpendPerPet = 0,                     -- 0 = no cap; number, or "25k" / "1m"

    AutoServerHopForPet = false,
    HopDelay = 5,                           -- seconds between server hops

    AutoSteal = false,
    StealMinValue = 0,                      -- only steal fruit worth >= this ($)
    StealHighestFirst = true,
    StealMutations = {},                    -- {} = all; "None"=unmutated; e.g. {"Gold","Rainbow"}
    StealTime = 0,                          -- steal-hold time, lower = faster
    StealLoopDelay = 0.5,
    StealCarryCap = 15,                     -- max carried before depositing
    StealAntiHit = false,
    StealCenterGarden = false,
    SniperSilentAim = false,

    AutoMail = true,
    MailRecipient = "Mabarwluwlu",                     -- "" = none; username or UserId
    MailPetFilter = {
        "Bear",
        "BlackDragon",
        "GoldenDragonfly",
        "IceSerpent",
        "Raccoon",
        "Unicorn",
    },                     -- {} = NONE (sends nothing); else pet names e.g. {"Cat"}
    MailSeedFilter = {
        "Briar Rose",
        "Ghost Pepper",
        "Mega",
        "Poison Apple",
        "Pomegranate",
        "Rainbow",
        "Romanesco",
        "Venom Spitter",
        "Venus Fly Trap",
        "Dragon's Breath",
        "Hypno Bloom",
        "Moon Bloom",
    },                    -- {} = NONE; else seed names e.g. {"Carrot"}
    MailGearFilter = {
        "Legendary Sprinkler",
        "Super Sprinkler",
        "Super Watering Can",
    },                    -- {} = NONE; else gear names e.g. {"Sprinkler"}
    MailMaxItems = 20,                      -- 1..200

    AutoClaimMail = true,

    AutoGift = false,
    GiftRecipient = "",                     -- "" = none; username or UserId
    GiftPetFilter = {},                     -- {} = NONE (sends nothing); else pet names e.g. {"Cat"}
    GiftSeedFilter = {},                    -- {} = NONE; else seed names e.g. {"Carrot"}
    GiftGearFilter = {},                    -- {} = NONE; else gear names e.g. {"Sprinkler"}
    GiftMaxItems = 20,

    AutoAcceptGift = true,

    AntiAFK = true,
    AutoReconnect = false,
    RejoinIfPingFrozen = false,             -- rejoin if ping freezes for ~20 min

    Webhook = false,                        -- needs WebhookUrl; posts seed/gear/weather predictions + sheckles
    WebhookUrl = "",                        -- "" = off; your Discord webhook URL
    WebhookEverySeconds = 300,              -- interval between prediction posts (min 30)
    WebhookOnPetBuy = false,
    WebhookMention = "",                    -- "" = none; "<@userid>" or "<@&roleid>"
    RestockAlert = false,
    RestockWatch = {},                      -- {} = none; item names e.g. {"Carrot","Sprinkler"}

    AutoTutorial = true,
}