SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - FHL2" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "CMB SPAS-12"
SWEP.Trivia_Class = "PDW"
SWEP.Trivia_Desc = "Special purpose shotgun issued to high-ranking Overwatch shotgun soldiers. Extremely deadly."
SWEP.Trivia_Manufacturer = nil
SWEP.Trivia_Calibre = nil
SWEP.Trivia_Mechanism = nil
SWEP.Trivia_Country = nil
SWEP.Trivia_Year = nil

SWEP.Slot = 3
SWEP.SlotPos = 0

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/c_shotgun.mdl"
SWEP.WorldModel = "models/weapons/arccw_go/v_smg_mp7.mdl"
SWEP.ViewModelFOV = 54

SWEP.DefaultBodygroups = "000000000000"

SWEP.Damage = 20
SWEP.DamageMin = 10 -- damage done at maximum range
SWEP.RangeMin = 38 -- in METRES
SWEP.Range = 60 -- in METRES
SWEP.Penetration = 9
SWEP.DamageType = DMG_BULLET + DMG_BUCKSHOT
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 1000 -- projectile or phys bullet muzzle velocity
-- IN M/S
SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 6 -- DefaultClip is automatically set.

SWEP.PhysBulletMuzzleVelocity = 740

SWEP.Recoil = 2
SWEP.RecoilSide = 1
SWEP.RecoilRise = 2

SWEP.Delay = 0.3 -- 60 / RPM.
SWEP.Num = 7 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 1,
        CustomBars = "-",
        PrintName = "PUMP-ACTION"
    },
    {
        Mode = 0,
        CustomBars = "_",
        PrintName = "SAFETY"
    }
}

SWEP.NPCWeaponType = "weapon_shotgun"
SWEP.NPCWeight = 100

SWEP.AccuracyMOA = 50 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 400 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 75

SWEP.Primary.Ammo = "buckshot" -- what ammo type the gun uses

SWEP.ShootVol = 140 -- volume of shoot sound
SWEP.ShootPitch = 90 -- pitch of shoot sound
SWEP.ShootPitchVariation = 0.05

SWEP.ShootSound = ")weapons/arccw_fhl2/shotgun/fire3.wav"
SWEP.ShootSoundSilenced = nil
SWEP.DistantShootSound = ")weapons/arccw_fhl2/ar2/fire_dist.wav"

SWEP.Hook_AddShootSound = function(wep, data)
    local wc2 = wep:Clip1()

    local snd_nearempty = ")weapons/arccw_fhl2/shotgun/over_nearempty.wav"

    wep:EmitSound(snd_nearempty, 140, 90 - wc2*2, 1, CHAN_AUTO )
end

SWEP.MeleeSwingSound = "arccw_go/m249/m249_draw.wav"
SWEP.MeleeMissSound = "weapons/iceaxe/iceaxe_swing1.wav"
SWEP.MeleeHitSound = "arccw_go/knife/knife_hitwall1.wav"
SWEP.MeleeHitNPCSound = "physics/body/body_medium_break2.wav"

SWEP.MuzzleEffect = "muzzleflash_shotgun"
SWEP.ShellModel = "models/shells/shell_12gauge.mdl"
SWEP.ShellPitch = 100
SWEP.ShellScale = 2
SWEP.ShellRotateAngle = Angle(0, 0, 0)

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SpeedMult = 1
SWEP.SightedSpeedMult = 0.75
SWEP.SightTime = 0.25

SWEP.IronSightStruct = {
    Pos = Vector(-3, -5, 1),
    Ang = Angle(0, 0.15, 0),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
    CrosshairInSights = true
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "smg"
SWEP.HoldtypeSights = "smg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

local fcw = Vector(0, 0, 1)

SWEP.ActivePos = Vector(-0.5, 0, 0) + fcw
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintPos = Vector(-0.5, 0, 0) + fcw
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(0, 0, 0)
SWEP.CrouchAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(0, 0, 0) + fcw
SWEP.HolsterAng = Angle(-7, 7, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.CustomizePos = Vector(3, 0, 0)
SWEP.CustomizeAng = Angle(5, 20, 10)

SWEP.BarrelLength = 24

SWEP.AttachmentElements = {}

SWEP.ExtraSightDist = 10
SWEP.GuaranteeLaser = true

SWEP.WorldModelOffset = {
    pos = Vector(-15, 6, -3.5),
    ang = Angle(-10, 0, 180)
}

SWEP.MirrorVMWM = true
SWEP.ManualAction = true
SWEP.ShotgunReload = true

SWEP.Attachments = {}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle01"
    },
    ["enter_sprint"] = {
        Source = "idle_to_lowered",
        Time = 0.33
    },
    ["idle_sprint"] = {
        Source = "lowered"
    },
    ["exit_sprint"] = {
        Source = "lowered_to_idle",
        Time = 0.33
    },
    ["draw"] = {
        Source = "draw",
    },
    ["holster"] = {
        Source = "holster",
    },
    ["fire"] = {
        Source = "fire01",
        Time = 0.333,
        MinProgress = 0.333,
    },
    ["cycle"] = {
        Source = "pump",
        ShellEjectAt = 0,
        SoundTable = {
                {s = "weapons/arccw_fhl2/shotgun/pump_back.wav", 		t = 0},
                {s = "weapons/arccw_fhl2/shotgun/pump_forward.wav", 		t = 0.2},
        },
    },
    ["sgreload_start"] = {
        Source = "reload1",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        Time = 0.3,
    },
    ["sgreload_insert"] = {
        Source = "reload2",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        SoundTable = {{s = "weapons/arccw_fhl2/shotgun/reload.wav", 		t = 0.2}},
        Time = 0.5,
    },
    ["sgreload_finish"] = {
        Source = "reload3",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        Time = 0.3,
    },
}