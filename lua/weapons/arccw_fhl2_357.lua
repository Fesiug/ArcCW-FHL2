SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - FHL2" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = ".357 Python"
SWEP.Trivia_Class = "Revolver"
SWEP.Trivia_Desc = "Classic revolver used by high-ranking officers. The low ammo count is made up for by the powerful caliber fired."
SWEP.Trivia_Manufacturer = nil
SWEP.Trivia_Calibre = ".357 Magnum"
SWEP.Trivia_Mechanism = nil
SWEP.Trivia_Country = nil
SWEP.Trivia_Year = nil

SWEP.Slot = 1
SWEP.SlotPos = 1

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/c_357.mdl"
SWEP.WorldModel = "models/weapons/arccw_go/v_smg_mp7.mdl"
SWEP.ViewModelFOV = 54

SWEP.DefaultBodygroups = "000000000000"

SWEP.Damage = 70
SWEP.DamageMin = 30 -- damage done at maximum range
SWEP.RangeMin = 75 -- in METRES
SWEP.Range = 125 -- in METRES
SWEP.Penetration = 9
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 1000 -- projectile or phys bullet muzzle velocity
-- IN M/S
SWEP.ChamberSize = 0 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 6 -- DefaultClip is automatically set.

SWEP.PhysBulletMuzzleVelocity = 740

SWEP.Recoil = 4
SWEP.RecoilSide = 1
SWEP.RecoilRise = 8

SWEP.Delay = 0.5 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 1,
        CustomBars = "-",
        PrintName = "DOUBLE-ACTION"
    },
    {
        Mode = 0,
        CustomBars = "_",
        PrintName = "SAFETY"
    }
}

SWEP.NPCWeaponType = "weapon_357"
SWEP.NPCWeight = 100

SWEP.AccuracyMOA = 7 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 400 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 75

SWEP.Primary.Ammo = "357" -- what ammo type the gun uses

SWEP.ShootVol = 140 -- volume of shoot sound
SWEP.ShootPitch = 90.5 -- pitch of shoot sound
SWEP.ShootPitchVariation = 0.025 

SWEP.ShootSound = ")weapons/arccw_fhl2/357/fire.wav"
SWEP.ShootSoundSilenced = nil
SWEP.DistantShootSound = nil

SWEP.MeleeSwingSound = "arccw_go/m249/m249_draw.wav"
SWEP.MeleeMissSound = "weapons/iceaxe/iceaxe_swing1.wav"
SWEP.MeleeHitSound = "arccw_go/knife/knife_hitwall1.wav"
SWEP.MeleeHitNPCSound = "physics/body/body_medium_break2.wav"

SWEP.MuzzleEffect = "muzzleflash_3"
SWEP.ShellModel = "models/shells/shell_57.mdl"
SWEP.ShellPitch = 100
SWEP.ShellScale = 1.25
SWEP.ShellRotateAngle = Angle(0, 0, 0)

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SpeedMult = 1
SWEP.SightedSpeedMult = 0.75
SWEP.SightTime = 0.25

SWEP.IronSightStruct = {
    Pos = Vector(-5.26, -7, 0.95),
    Ang = Angle(0, 0.15, 0),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
    CrosshairInSights = false
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "smg"
SWEP.HoldtypeSights = "smg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

local fcw = Vector(0, 0, 1)

SWEP.ActivePos = Vector(-0.5, 0, -0.5) + fcw
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintPos = Vector(-0.5, 0, -0.5) + fcw
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(0, 0, 0)
SWEP.CrouchAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(-0.5, 0, -0.5) + fcw
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

SWEP.Attachments = {}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle01"
    },
    ["enter_sprint"] = {
        Source = "idletolow",
        Time = 0.33
    },
    ["idle_sprint"] = {
        Source = "lowidle"
    },
    ["exit_sprint"] = {
        Source = "lowtoidle",
        Time = 0.33
    },
    ["draw"] = {
        Source = "draw"
    },
    ["holster"] = {
        Source = "holster"
    },
    ["fire"] = {
        Source = "fire"
    },
    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_REVOLVER
    },
}