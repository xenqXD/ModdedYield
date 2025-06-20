local Global = (getgenv and getgenv()) or shared
Global.GelatekReanimateConfig = {
    -- [[ Rig Settings ]] --
    ["AnimationsDisabled"] = false,
    ["R15ToR6"] = false,
    ["DontBreakHairWelds"] = false,
    ["PermanentDeath"] = false,
    ["Headless"] = false,
    ["TeleportBackWhenVoided"] = false,

    -- [[ Reanimation Settings ]] --
    ["AlignReanimate"] = false,
    ["FullForceAlign"] = false,
    ["FasterHeartbeat"] = false,
    ["DynamicalVelocity"] = false,
    ["DisableTweaks"] = false,

    -- [[ Optimization ]] --
    ["OptimizeGame"] = false,

    -- [[ Miscellacious ]] --
    ["LoadLibrary"] = false,
    ["DetailedCredits"] = false,

    -- [[ Flinging Methods ]] --
    ["TorsoFling"] = false,
    ["BulletEnabled"] = false,
    ["BulletConfig"] = {
        ["RunAfterReanimate"] = false,
        ["LockBulletOnTorso"] = false
    }
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatekussy/GelatekReanimate/main/Main.lua"))()
