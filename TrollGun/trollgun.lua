AddCSLuaFile()

SWEP.Base = "weapon_base"
SWEP.PrintName = "Troll Gun"
SWEP.Author = "Kyle.smithy2"
SWEP.Spawnable = true
SWEP.AdminSpawnable = true
SWEP.ViewModelFlip = false
SWEP.Category = "Kyle's Weps"
SWEP.Instructions = "Left click to shoot like a machine gun, Right Click to shoot like a shotgun"

SWEP.HoldType = "gravgun"
SWEP.ViewModel = "models/weapons/v_superphyscannon.mdl"
SWEP.WorldModel = "models/weapons/w_superphyscannon.mdl"

SWEP.Primary.Recoil = 0
SWEP.Primary.Damage = 20
SWEP.Primary.NumShots = 1
SWEP.Primary.Cone = 0
SWEP.Primary.Spread = 0
SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = 30
SWEP.Primary.Ammo = "pistol"
SWEP.Primary.Automatic = true
SWEP.Primary.Delay = 0

SWEP.Secondary.Recoil = 0
SWEP.Secondary.Damage = 20
SWEP.Secondary.NumShots = 5
SWEP.Secondary.Cone = 0
SWEP.Secondary.Spread = 0
SWEP.Secondary.ClipSize = 30
SWEP.Secondary.DefaultClip = 30
SWEP.Secondary.Ammo = "pistol"
SWEP.Secondary.Automatic = false
SWEP.Secondary.Delay = 0.3

function SWEP:Initialize()
	util.PrecacheSound( "" )
	self:SetWeaponHoldType( self.HoldType )
end

function SWEP:PrimaryAttack()
	if( not self:CanPrimaryAttack() ) then
		return
	end

	local Bullet = {}
		Bullet.Num = SWEP.Primary.NumShots
		Bullet.Src = self.Owner:GetShootPos()
		Bullet.Dir = self.Owner:GetAimVector()
		Bullet.Spread = Vector( self.Primary.Spread, self.Primary.Spread, 0 )
		Bullet.Tracer = 0
		Bullet.Damage = self.Primary.Damage 
		Bullet.AmmoType = self.Primary.Ammo
		
	self:ShootEffects()
	self:FireBullets( Bullet )
	self:EmitSound( "" )
	self:TakePrimaryAmmo( 1 )
	self:GetNextPrimaryFire( CurTime() + self.Primary.Delay )
end

function SWEP:SecondaryAttack()
	if( not self:CanSecondaryAttack() ) then
		return
	end

	local SecondaryBullet = {}
		SecondaryBullet.Num = SWEP.Secondary.NumShots
		SecondaryBullet.Src = self.Owner:GetShootPos()
		SecondaryBullet.Dir = self.Owner:GetAimVector()
		SecondaryBullet.Spread = Vector( self.Secondary.Spread, self.Secondary.Spread, 0 )
		SecondaryBullet.Tracer = 0
		SecondaryBullet.Damage = self.Secondary.Damage 
		SecondaryBullet.AmmoType = self.Secondary.Ammo
		
	self:ShootEffects()
	self:FireBullets( SecondaryBullet )
	self:EmitSound( "" )
	self:TakeSecondaryAmmo( 1 )
	self:GetNextSecondaryFire( CurTime() + self.Secondary.Delay )
end