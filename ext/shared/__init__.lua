require "__shared/config"

-- mod to change specific vehicle properties

-- MI28 | defaultHealth: 500 | 
local m_MI28PGuid = Guid('89BE53B6-2FF4-11DE-8C23-DAB1D69416DE')
local m_MI28VehicleIGuid = Guid('89BEA1D7-2FF4-11DE-8C23-DAB1D69416DE')
-- Change Health
ResourceManager:RegisterInstanceLoadHandler(m_MI28PGuid, m_MI28VehicleIGuid, function(p_Instance)

    local s_VehicleEntityData = VehicleEntityData(p_Instance)
    s_VehicleEntityData:MakeWritable()

    -- default disabledDamageThreshold: 170
    s_VehicleEntityData.disabledDamageThreshold = s_VehicleEntityData.disabledDamageThreshold * g_Settings.disableThresholdMultiplier
    -- default preDestructionDamageThreshold: 300
    s_VehicleEntityData.preDestructionDamageThreshold = s_VehicleEntityData.preDestructionDamageThreshold * g_Settings.preDestructionThresholdMultiplier
    
    --print('Changed MI28 Health')

end)

local m_MI28ACam1IGuid = Guid('89BEA243-2FF4-11DE-8C23-DAB1D69416DE')
local m_MI28ACam2IGuid = Guid('89BEA250-2FF4-11DE-8C23-DAB1D69416DE')
-- Change FOV
-- A
ResourceManager:RegisterInstanceLoadHandler(m_MI28PGuid, m_MI28ACam1IGuid, function(p_Instance)

    local s_AlternateCamera = AlternateCameraViewData(p_Instance)
    s_AlternateCamera:MakeWritable()

    -- default FieldOfView: 55
    s_AlternateCamera.fieldOfView = s_AlternateCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson

    --print('Changed MI28 A Cam 1')

end)

ResourceManager:RegisterInstanceLoadHandler(m_MI28PGuid, m_MI28ACam2IGuid, function(p_Instance)

    local s_AlternateCamera = AlternateCameraViewData(p_Instance)
    s_AlternateCamera:MakeWritable()

    -- default FieldOfView: 55
    s_AlternateCamera.fieldOfView = s_AlternateCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson

    --print('Changed MI28 A Cam 2')

end)

local m_MI28Cam1IGuid = Guid('89BEA214-2FF4-11DE-8C23-DAB1D69416DE')
local m_MI28Cam2IGuid = Guid('89BEA216-2FF4-11DE-8C23-DAB1D69416DE')
local m_MI28Cam3IGuid = Guid('89BEA253-2FF4-11DE-8C23-DAB1D69416DE')
local m_MI28Cam4IGuid = Guid('89BEA24D-2FF4-11DE-8C23-DAB1D69416DE')
local m_MI28Cam5IGuid = Guid('49C7143C-110E-455F-B214-0BF6D03E154A')
local m_MI28Cam6IGuid = Guid('89BEA248-2FF4-11DE-8C23-DAB1D69416DE')
-- 
ResourceManager:RegisterInstanceLoadHandler(m_MI28PGuid, m_MI28Cam1IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed MI28  Cam 1')

end)

ResourceManager:RegisterInstanceLoadHandler(m_MI28PGuid, m_MI28Cam2IGuid, function(p_Instance)

    local s_MainCameraComponent = ComponentData(p_Instance)
    s_MainCameraComponent:MakeWritable()

    s_MainCameraComponent.transform = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(g_Settings.heliRUCameraOffsetX, g_Settings.heliRUCameraOffsetY, g_Settings.heliRUCameraOffsetZ)
    )

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed MI28  Cam 2')

end)

ResourceManager:RegisterInstanceLoadHandler(m_MI28PGuid, m_MI28Cam3IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()


    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed MI28  Cam 3')

end)

ResourceManager:RegisterInstanceLoadHandler(m_MI28PGuid, m_MI28Cam4IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed MI28  Cam 4')

end)

ResourceManager:RegisterInstanceLoadHandler(m_MI28PGuid, m_MI28Cam5IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed MI28  Cam 5')

end)

ResourceManager:RegisterInstanceLoadHandler(m_MI28PGuid, m_MI28Cam6IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed MI28  Cam 6')

end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- AH1Z | defaultHealth: 500 | 
local m_AH1ZPGuid = Guid('643135EA-6CA7-11DF-B6FA-F715AA601362')
local m_AH1ZVehicleIGuid = Guid('81D83886-888B-3962-61B1-4A1FC1AD49DB')
-- Change Health
ResourceManager:RegisterInstanceLoadHandler(m_AH1ZPGuid, m_AH1ZVehicleIGuid, function(p_Instance)

    local s_VehicleEntityData = VehicleEntityData(p_Instance)
    s_VehicleEntityData:MakeWritable()

    -- default disabledDamageThreshold: 170
    s_VehicleEntityData.disabledDamageThreshold = s_VehicleEntityData.disabledDamageThreshold * g_Settings.disableThresholdMultiplier
    -- default preDestructionDamageThreshold: 300
    s_VehicleEntityData.preDestructionDamageThreshold = s_VehicleEntityData.preDestructionDamageThreshold * g_Settings.preDestructionThresholdMultiplier
    
    --print('Changed AH1Z Health')

end)

local m_AH1ZACam1IGuid = Guid('0EA2D80E-9561-4F2C-8E66-D710C56DA24B')
local m_AH1ZACam2IGuid = Guid('CA0E146A-6866-46F7-B569-AC3821D3F468')
-- Change FOV
-- A
ResourceManager:RegisterInstanceLoadHandler(m_AH1ZPGuid, m_AH1ZACam1IGuid, function(p_Instance)

    local s_AlternateCamera = AlternateCameraViewData(p_Instance)
    s_AlternateCamera:MakeWritable()

    -- default FieldOfView: 55
    s_AlternateCamera.fieldOfView = s_AlternateCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson

    --print('Changed AH1Z A Cam 1')

end)

ResourceManager:RegisterInstanceLoadHandler(m_AH1ZPGuid, m_AH1ZACam2IGuid, function(p_Instance)

    local s_AlternateCamera = AlternateCameraViewData(p_Instance)
    s_AlternateCamera:MakeWritable()

    -- default FieldOfView: 55
    s_AlternateCamera.fieldOfView = s_AlternateCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson

    --print('Changed AH1Z A Cam 2')

end)

local m_AH1ZCam1IGuid = Guid('1E2267C5-2D64-4BCC-BC17-F72D645E73CF')
local m_AH1ZCam2IGuid = Guid('1CB888EE-F85D-42C8-B126-703EB7EAF2B9')
local m_AH1ZCam3IGuid = Guid('1AE17804-EC60-4772-AA74-5673652F5C72')
local m_AH1ZCam4IGuid = Guid('EB01400D-78B6-4952-A3E6-35E50072A6E1')
local m_AH1ZCam5IGuid = Guid('0196F1F0-1BD2-41AD-94A9-3294090400A5')
local m_AH1ZCam6IGuid = Guid('813BDC4F-758D-40A8-9647-9C5D4AB04FFF')
-- 
ResourceManager:RegisterInstanceLoadHandler(m_AH1ZPGuid, m_AH1ZCam1IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed AH1Z  Cam 1')

end)

ResourceManager:RegisterInstanceLoadHandler(m_AH1ZPGuid, m_AH1ZCam2IGuid, function(p_Instance)

    local s_MainCameraComponent = ComponentData(p_Instance)
    s_MainCameraComponent:MakeWritable()

    s_MainCameraComponent.transform = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(g_Settings.heliUSCameraOffsetX, g_Settings.heliUSCameraOffsetY, g_Settings.heliUSCameraOffsetZ)
    )

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed AH1Z  Cam 2')

end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



ResourceManager:RegisterInstanceLoadHandler(m_AH1ZPGuid, m_AH1ZCam3IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed AH1Z  Cam 3')

end)

ResourceManager:RegisterInstanceLoadHandler(m_AH1ZPGuid, m_AH1ZCam4IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed AH1Z  Cam 4')

end)

ResourceManager:RegisterInstanceLoadHandler(m_AH1ZPGuid, m_AH1ZCam5IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed AH1Z  Cam 5')

end)

ResourceManager:RegisterInstanceLoadHandler(m_AH1ZPGuid, m_AH1ZCam6IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed AH1Z  Cam 6')

end)


-- KA60Kasatka | defaultHealth: 750 | 
local m_KA60KasatkaPGuid = Guid('2C5892FC-37CB-4A4E-92E2-2DD7BAF08A5C')
local m_KA60KasatkaVehicleIGuid = Guid('36A9A772-7F17-4140-88C6-5876C92D106A')
-- Change Health
ResourceManager:RegisterInstanceLoadHandler(m_KA60KasatkaPGuid, m_KA60KasatkaVehicleIGuid, function(p_Instance)

    local s_VehicleEntityData = VehicleEntityData(p_Instance)
    s_VehicleEntityData:MakeWritable()

    -- default disabledDamageThreshold: 250
    s_VehicleEntityData.disabledDamageThreshold = s_VehicleEntityData.disabledDamageThreshold * g_Settings.disableThresholdMultiplier
    -- default preDestructionDamageThreshold: 300
    s_VehicleEntityData.preDestructionDamageThreshold = s_VehicleEntityData.preDestructionDamageThreshold * g_Settings.preDestructionThresholdMultiplier
    
    --print('Changed KA60Kasatka Health')

end)

local m_KA60KasatkaACam1IGuid = Guid('FCD3E941-BDA2-41C1-B6DF-29107AADC56D')
local m_KA60KasatkaACam2IGuid = Guid('60D9E011-1E15-4FCE-B861-CEEE8F68E37D')
-- Change FOV
-- A
ResourceManager:RegisterInstanceLoadHandler(m_KA60KasatkaPGuid, m_KA60KasatkaACam1IGuid, function(p_Instance)

    local s_AlternateCamera = AlternateCameraViewData(p_Instance)
    s_AlternateCamera:MakeWritable()

    -- default FieldOfView: 55
    s_AlternateCamera.fieldOfView = s_AlternateCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson

    --print('Changed KA60Kasatka A Cam 1')

end)

ResourceManager:RegisterInstanceLoadHandler(m_KA60KasatkaPGuid, m_KA60KasatkaACam2IGuid, function(p_Instance)

    local s_AlternateCamera = AlternateCameraViewData(p_Instance)
    s_AlternateCamera:MakeWritable()

    -- default FieldOfView: 55
    s_AlternateCamera.fieldOfView = s_AlternateCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson

    --print('Changed KA60Kasatka A Cam 2')

end)

local m_KA60KasatkaCam1IGuid = Guid('E3650855-AC3F-4815-820B-7FBEB0C52C64')
local m_KA60KasatkaCam2IGuid = Guid('D21CBB04-8F69-4DA4-8C78-96A34245807C')
local m_KA60KasatkaCam3IGuid = Guid('9F47FC18-40A6-4B3D-920D-79B1E0FD4670')
local m_KA60KasatkaCam4IGuid = Guid('6822F609-2DBC-4996-9C79-95D1AD2EB24E')
-- 
ResourceManager:RegisterInstanceLoadHandler(m_KA60KasatkaPGuid, m_KA60KasatkaCam1IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed KA60Kasatka  Cam 1')

end)

ResourceManager:RegisterInstanceLoadHandler(m_KA60KasatkaPGuid, m_KA60KasatkaCam2IGuid, function(p_Instance)

    local s_MainCameraComponent = ComponentData(p_Instance)
    s_MainCameraComponent:MakeWritable()

    s_MainCameraComponent.transform = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(g_Settings.heliUSCameraOffsetX, g_Settings.heliUSCameraOffsetY, g_Settings.heliUSCameraOffsetZ)
    )

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed KA60Kasatka  Cam 2')

end)

ResourceManager:RegisterInstanceLoadHandler(m_KA60KasatkaPGuid, m_KA60KasatkaCam3IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed KA60Kasatka  Cam 3')

end)

ResourceManager:RegisterInstanceLoadHandler(m_KA60KasatkaPGuid, m_KA60KasatkaCam4IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed KA60Kasatka  Cam 4')

end)


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Venom | defaultHealth: 750 | 
local m_VenomPGuid = Guid('97945D87-011D-11E0-B97C-FC495C335A52')
local m_VenomVehicleIGuid = Guid('88F274DD-7C84-1EE5-6EE7-DD1D980148B3')
-- Change Health
ResourceManager:RegisterInstanceLoadHandler(m_VenomPGuid, m_VenomVehicleIGuid, function(p_Instance)

    local s_VehicleEntityData = VehicleEntityData(p_Instance)
    s_VehicleEntityData:MakeWritable()

    -- default disabledDamageThreshold: 250
    s_VehicleEntityData.disabledDamageThreshold = s_VehicleEntityData.disabledDamageThreshold * g_Settings.disableThresholdMultiplier
    -- default preDestructionDamageThreshold: 300
    s_VehicleEntityData.preDestructionDamageThreshold = s_VehicleEntityData.preDestructionDamageThreshold * g_Settings.preDestructionThresholdMultiplier
    
    --print('Changed Venom Health')

end)

local m_VenomACam1IGuid = Guid('046345A0-42EF-40FC-9CCE-CE6E73748A90')
local m_VenomACam2IGuid = Guid('462246AA-B332-4194-AB44-0ABCA55E6619')
-- Change FOV
-- A
ResourceManager:RegisterInstanceLoadHandler(m_VenomPGuid, m_VenomACam1IGuid, function(p_Instance)

    local s_AlternateCamera = AlternateCameraViewData(p_Instance)
    s_AlternateCamera:MakeWritable()

    -- default FieldOfView: 55
    s_AlternateCamera.fieldOfView = s_AlternateCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson

    --print('Changed Venom A Cam 1')

end)

ResourceManager:RegisterInstanceLoadHandler(m_VenomPGuid, m_VenomACam2IGuid, function(p_Instance)

    local s_AlternateCamera = AlternateCameraViewData(p_Instance)
    s_AlternateCamera:MakeWritable()

    -- default FieldOfView: 55
    s_AlternateCamera.fieldOfView = s_AlternateCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson

    --print('Changed Venom A Cam 2')

end)

local m_VenomCam1IGuid = Guid('6DCD4D7B-34C9-4957-BB25-BCAFE8C49EF2')
local m_VenomCam2IGuid = Guid('724B3184-58EF-4C45-B949-5FC5DC7545FA')
local m_VenomCam3IGuid = Guid('8D841243-D94E-48B7-86AF-CD896A1C4399')
local m_VenomCam4IGuid = Guid('466CAA7A-152D-446A-9E95-484C8851F7AA')
-- 
ResourceManager:RegisterInstanceLoadHandler(m_VenomPGuid, m_VenomCam1IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed Venom  Cam 1')

end)

ResourceManager:RegisterInstanceLoadHandler(m_VenomPGuid, m_VenomCam2IGuid, function(p_Instance)

    local s_MainCameraComponent = ComponentData(p_Instance)
    s_MainCameraComponent:MakeWritable()

    s_MainCameraComponent.transform = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(g_Settings.heliUSCameraOffsetX, g_Settings.heliUSCameraOffsetY, g_Settings.heliUSCameraOffsetZ)
    )

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed Venom  Cam 2')

end)

ResourceManager:RegisterInstanceLoadHandler(m_VenomPGuid, m_VenomCam3IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed Venom  Cam 3')

end)

ResourceManager:RegisterInstanceLoadHandler(m_VenomPGuid, m_VenomCam4IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed Venom  Cam 4')

end)


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- AH6Bird | defaultHealth: 750 | 
local m_AH6BirdPGuid = Guid('FD8AB747-FF4D-11DD-A7B1-F7C6DEEC9D32')
local m_AH6BirdVehicleIGuid = Guid('FD8AB749-FF4D-11DD-A7B1-F7C6DEEC9D32')
-- Change Health
ResourceManager:RegisterInstanceLoadHandler(m_AH6BirdPGuid, m_AH6BirdVehicleIGuid, function(p_Instance)

    local s_VehicleEntityData = VehicleEntityData(p_Instance)
    s_VehicleEntityData:MakeWritable()

    -- default disabledDamageThreshold: 250
    s_VehicleEntityData.disabledDamageThreshold = s_VehicleEntityData.disabledDamageThreshold * g_Settings.disableThresholdMultiplier
    -- default preDestructionDamageThreshold: 300
    s_VehicleEntityData.preDestructionDamageThreshold = s_VehicleEntityData.preDestructionDamageThreshold * g_Settings.preDestructionThresholdMultiplier
    
    --print('Changed AH6Bird Health')

end)

local m_AH6BirdACam1IGuid = Guid('15AB2B3A-FF4E-11DD-A7B1-F7C6DEEC9D32')
local m_AH6BirdACam2IGuid = Guid('FE1125FE-2C37-44A8-BB2F-C6F52CE4497A')
-- Change FOV
-- A
ResourceManager:RegisterInstanceLoadHandler(m_AH6BirdPGuid, m_AH6BirdACam1IGuid, function(p_Instance)

    local s_AlternateCamera = AlternateCameraViewData(p_Instance)
    s_AlternateCamera:MakeWritable()

    -- default FieldOfView: 55
    s_AlternateCamera.fieldOfView = s_AlternateCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson

    --print('Changed AH6Bird A Cam 1')

end)

ResourceManager:RegisterInstanceLoadHandler(m_AH6BirdPGuid, m_AH6BirdACam2IGuid, function(p_Instance)

    local s_AlternateCamera = AlternateCameraViewData(p_Instance)
    s_AlternateCamera:MakeWritable()

    -- default FieldOfView: 55
    s_AlternateCamera.fieldOfView = s_AlternateCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson

    --print('Changed AH6Bird A Cam 2')

end)

local m_AH6BirdCam1IGuid = Guid('15AB2B38-FF4E-11DD-A7B1-F7C6DEEC9D32')
local m_AH6BirdCam2IGuid = Guid('15AB2B36-FF4E-11DD-A7B1-F7C6DEEC9D32')

-- 
ResourceManager:RegisterInstanceLoadHandler(m_AH6BirdPGuid, m_AH6BirdCam1IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed AH6Bird  Cam 1')

end)

ResourceManager:RegisterInstanceLoadHandler(m_AH6BirdPGuid, m_AH6BirdCam2IGuid, function(p_Instance)

    local s_MainCameraComponent = ComponentData(p_Instance)
    s_MainCameraComponent:MakeWritable()

    s_MainCameraComponent.transform = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(g_Settings.scoutheliUSCameraOffsetX, g_Settings.scoutheliUSCameraOffsetY, g_Settings.scoutheliUSCameraOffsetZ)
    )

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed AH6Bird  Cam 2')

end)


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Z11W | defaultHealth: 750 | 
local m_Z11WPGuid = Guid('D78088E5-38B7-11DE-BF1C-984D9AEE762C')
local m_Z11WVehicleIGuid = Guid('D780AFF7-38B7-11DE-BF1C-984D9AEE762C')
-- Change Health
ResourceManager:RegisterInstanceLoadHandler(m_Z11WPGuid, m_Z11WVehicleIGuid, function(p_Instance)

    local s_VehicleEntityData = VehicleEntityData(p_Instance)
    s_VehicleEntityData:MakeWritable()

    -- default disabledDamageThreshold: 250
    s_VehicleEntityData.disabledDamageThreshold = s_VehicleEntityData.disabledDamageThreshold * g_Settings.disableThresholdMultiplier
    -- default preDestructionDamageThreshold: 300
    s_VehicleEntityData.preDestructionDamageThreshold = s_VehicleEntityData.preDestructionDamageThreshold * g_Settings.preDestructionThresholdMultiplier
    
    --print('Changed Z11W Health')

end)

local m_Z11WACam1IGuid = Guid('D780B027-38B7-11DE-BF1C-984D9AEE762C')
local m_Z11WACam2IGuid = Guid('02D7E034-AF9F-4F2B-8DE6-C657E1A9BF84')
-- Change FOV
-- A
ResourceManager:RegisterInstanceLoadHandler(m_Z11WPGuid, m_Z11WACam1IGuid, function(p_Instance)

    local s_AlternateCamera = AlternateCameraViewData(p_Instance)
    s_AlternateCamera:MakeWritable()

    -- default FieldOfView: 55
    s_AlternateCamera.fieldOfView = s_AlternateCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson

    --print('Changed Z11W A Cam 1')

end)

ResourceManager:RegisterInstanceLoadHandler(m_Z11WPGuid, m_Z11WACam2IGuid, function(p_Instance)

    local s_AlternateCamera = AlternateCameraViewData(p_Instance)
    s_AlternateCamera:MakeWritable()

    -- default FieldOfView: 55
    s_AlternateCamera.fieldOfView = s_AlternateCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson

    --print('Changed Z11W A Cam 2')

end)

local m_Z11WCam1IGuid = Guid('D780B025-38B7-11DE-BF1C-984D9AEE762C')
local m_Z11WCam2IGuid = Guid('D780B023-38B7-11DE-BF1C-984D9AEE762C')
local m_Z11WCam3IGuid = Guid('9F4A8357-1A1E-4727-B352-14F97E95BA70')
local m_Z11WCam4IGuid = Guid('5F5404F3-16C9-4E91-BE61-FF02410B35F9') 
local m_Z11WCam5IGuid = Guid('21BB953F-43D5-4CB3-A918-C349BD9D0CA0') 

-- 
ResourceManager:RegisterInstanceLoadHandler(m_Z11WPGuid, m_Z11WCam1IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed Z11W  Cam 1')

end)

ResourceManager:RegisterInstanceLoadHandler(m_Z11WPGuid, m_Z11WCam2IGuid, function(p_Instance)

    local s_MainCameraComponent = ComponentData(p_Instance)
    s_MainCameraComponent:MakeWritable()

    s_MainCameraComponent.transform = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(g_Settings.scoutheliRUCameraOffsetX, g_Settings.scoutheliRUCameraOffsetY, g_Settings.scoutheliRUCameraOffsetZ)
    )

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end


    --print('Changed Z11W  Cam 2')

end)

ResourceManager:RegisterInstanceLoadHandler(m_Z11WPGuid, m_Z11WCam3IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed Z11W  Cam 3')

end)

ResourceManager:RegisterInstanceLoadHandler(m_Z11WPGuid, m_Z11WCam4IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed Z11W  Cam 4')

end)

ResourceManager:RegisterInstanceLoadHandler(m_Z11WPGuid, m_Z11WCam5IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed Z11W  Cam 5')

end)


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- T90 | defaultHealth: 1000 | 
local m_T90PGuid = Guid('60106974-DD7D-11DD-A030-B04E425BA11E')
local m_T90VehicleIGuid = Guid('60106976-DD7D-11DD-A030-B04E425BA11E')
-- Change Health
ResourceManager:RegisterInstanceLoadHandler(m_T90PGuid, m_T90VehicleIGuid, function(p_Instance)

    local s_VehicleEntityData = VehicleEntityData(p_Instance)
    s_VehicleEntityData:MakeWritable()

    -- default disabledDamageThreshold: 500
    s_VehicleEntityData.disabledDamageThreshold = s_VehicleEntityData.disabledDamageThreshold * g_Settings.disableThresholdMultiplier

    --print('Changed T90 Health')

end)

local m_T90ACam1IGuid = Guid('6BA00DB1-C4E1-4598-AD56-84CFBDC55FE6')
local m_T90ACam2IGuid = Guid('C32EAF82-B036-44D0-B814-6AFE2003B5DE')
local m_T90ACam3IGuid = Guid('C2D985B6-B3F4-49C0-AB9D-C7F1B48F573E')
local m_T90ACam4IGuid = Guid('977B24B4-DCE1-4163-8BD9-3A8C7C7E6431')
-- Change FOV
-- Alternate Cam
ResourceManager:RegisterInstanceLoadHandler(m_T90PGuid, m_T90ACam1IGuid, function(p_Instance)

    local s_AlternateCamera = AlternateCameraViewData(p_Instance)
    s_AlternateCamera:MakeWritable()

    -- default FieldOfView: 55
    s_AlternateCamera.fieldOfView = s_AlternateCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson

    --print('Changed T90 A Cam 1')

end)

ResourceManager:RegisterInstanceLoadHandler(m_T90PGuid, m_T90ACam2IGuid, function(p_Instance)

    local s_AlternateCamera = AlternateCameraViewData(p_Instance)
    s_AlternateCamera:MakeWritable()

    -- default FieldOfView: 55
    s_AlternateCamera.fieldOfView = s_AlternateCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson

    --print('Changed T90 A Cam 2')

end)

ResourceManager:RegisterInstanceLoadHandler(m_T90PGuid, m_T90ACam3IGuid, function(p_Instance)

    local s_AlternateCamera = AlternateCameraViewData(p_Instance)
    s_AlternateCamera:MakeWritable()

    -- default FieldOfView: 55
    s_AlternateCamera.fieldOfView = s_AlternateCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson

    --print('Changed T90 A Cam 3')

end)

ResourceManager:RegisterInstanceLoadHandler(m_T90PGuid, m_T90ACam4IGuid, function(p_Instance)

    local s_AlternateCamera = AlternateCameraViewData(p_Instance)
    s_AlternateCamera:MakeWritable()

    -- default FieldOfView: 55
    s_AlternateCamera.fieldOfView = s_AlternateCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson

    --print('Changed T90 A Cam 4')

end)

local m_T90Cam1IGuid = Guid('6FA702EA-F934-4161-B499-5D43A4E965E4')
local m_T90Cam2IGuid = Guid('7A94817E-DD7D-11DD-A030-B04E425BA11E')
local m_T90Cam3IGuid = Guid('2D1145A5-1899-4271-86E7-7ADCB3E91F64')
local m_T90Cam4IGuid = Guid('7A948179-DD7D-11DD-A030-B04E425BA11E')
local m_T90Cam5IGuid = Guid('385933AF-90C4-4C7A-95AB-A62B4F43C57C')
local m_T90Cam6IGuid = Guid('4F498B24-766F-4FE8-859D-DC8361412A22')
local m_T90Cam7IGuid = Guid('00B15BB7-A95C-4BA5-8D56-07B3B2E9A8BA')
local m_T90Cam8IGuid = Guid('06AC4B6C-CD91-425E-BDCC-71F9C730756E')
-- Cam
ResourceManager:RegisterInstanceLoadHandler(m_T90PGuid, m_T90Cam1IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed T90 Cam 1')

end)

ResourceManager:RegisterInstanceLoadHandler(m_T90PGuid, m_T90Cam2IGuid, function(p_Instance)


    local s_MainCameraComponent = ComponentData(p_Instance)
    s_MainCameraComponent:MakeWritable()

  --  s_MainCameraComponent.transform = LinearTransform(
   --     Vec3(1,0,0),
   --     Vec3(0,1,0),
   --     Vec3(0,0,1),
   --     Vec3(g_Settings.tanksCameraOffsetX, g_Settings.tanksCameraOffsetY, g_Settings.tanksCameraOffsetZ)
    --)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed T90 Cam 2')

end)





ResourceManager:RegisterInstanceLoadHandler(m_T90PGuid, m_T90Cam3IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed T90 Cam 3')

end)

ResourceManager:RegisterInstanceLoadHandler(m_T90PGuid, m_T90Cam4IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed T90 Cam 4')

end)

ResourceManager:RegisterInstanceLoadHandler(m_T90PGuid, m_T90Cam5IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed T90 Cam 5')

end)

ResourceManager:RegisterInstanceLoadHandler(m_T90PGuid, m_T90Cam6IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed T90 Cam 6')

end)

ResourceManager:RegisterInstanceLoadHandler(m_T90PGuid, m_T90Cam7IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed T90 Cam 7')

end)

ResourceManager:RegisterInstanceLoadHandler(m_T90PGuid, m_T90Cam8IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed T90 Cam 7')

end)


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- M1 | defaultHealth: 1000 | 
local m_M1PGuid = Guid('B069BA89-EECF-11DD-8117-9421284A74E5')
local m_M1VehicleIGuid = Guid('B06A08AC-EECF-11DD-8117-9421284A74E5')
-- Change Health
ResourceManager:RegisterInstanceLoadHandler(m_M1PGuid, m_M1VehicleIGuid, function(p_Instance)

    local s_VehicleEntityData = VehicleEntityData(p_Instance)
    s_VehicleEntityData:MakeWritable()

    -- default disabledDamageThreshold: 500
    s_VehicleEntityData.disabledDamageThreshold = s_VehicleEntityData.disabledDamageThreshold * g_Settings.disableThresholdMultiplier

    --print('Changed M1 Health')

end)

local m_M1ACam1IGuid = Guid('B06A0967-EECF-11DD-8117-9421284A74E5')
local m_M1ACam2IGuid = Guid('B06A096D-EECF-11DD-8117-9421284A74E5')
local m_M1ACam3IGuid = Guid('778D6A5D-3D24-4776-9848-9E3D3FCAE703')
local m_M1ACam4IGuid = Guid('CECE195B-952F-4B4B-B182-63147FEB9961')
-- Change FOV
-- Alternate Cam
ResourceManager:RegisterInstanceLoadHandler(m_M1PGuid, m_M1ACam1IGuid, function(p_Instance)

    local s_AlternateCamera = AlternateCameraViewData(p_Instance)
    s_AlternateCamera:MakeWritable()

    -- default FieldOfView: 55
    s_AlternateCamera.fieldOfView = s_AlternateCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson

    --print('Changed M1 A Cam 1')

end)

ResourceManager:RegisterInstanceLoadHandler(m_M1PGuid, m_M1ACam2IGuid, function(p_Instance)

    local s_AlternateCamera = AlternateCameraViewData(p_Instance)
    s_AlternateCamera:MakeWritable()

    -- default FieldOfView: 55
    s_AlternateCamera.fieldOfView = s_AlternateCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson

    --print('Changed M1 A Cam 2')

end)

ResourceManager:RegisterInstanceLoadHandler(m_M1PGuid, m_M1ACam3IGuid, function(p_Instance)

    local s_AlternateCamera = AlternateCameraViewData(p_Instance)
    s_AlternateCamera:MakeWritable()

    -- default FieldOfView: 55
    s_AlternateCamera.fieldOfView = s_AlternateCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson

    --print('Changed M1 A Cam 3')

end)

ResourceManager:RegisterInstanceLoadHandler(m_M1PGuid, m_M1ACam4IGuid, function(p_Instance)

    local s_AlternateCamera = AlternateCameraViewData(p_Instance)
    s_AlternateCamera:MakeWritable()

    -- default FieldOfView: 55
    s_AlternateCamera.fieldOfView = s_AlternateCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson

    --print('Changed M1 A Cam 4')

end)

local m_M1Cam1IGuid = Guid('6F7A1AD2-DAE6-4270-A023-608A075FB17A')
local m_M1Cam2IGuid = Guid('B06A0927-EECF-11DD-8117-9421284A74E5')
local m_M1Cam3IGuid = Guid('0748D26B-DCAF-4A01-AF79-495C99C06A54')
local m_M1Cam4IGuid = Guid('B06A08E2-EECF-11DD-8117-9421284A74E5') 
local m_M1Cam5IGuid = Guid('B06A08AE-EECF-11DD-8117-9421284A74E5')
local m_M1Cam6IGuid = Guid('2F7F396B-E32B-4F85-9AA1-C608E4F7D358')
local m_M1Cam7IGuid = Guid('B06A096F-EECF-11DD-8117-9421284A74E5')
-- Cam
ResourceManager:RegisterInstanceLoadHandler(m_M1PGuid, m_M1Cam1IGuid, function(p_Instance)

    local s_MainCameraComponent = ComponentData(p_Instance)
    s_MainCameraComponent:MakeWritable()

    s_MainCameraComponent.transform = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(g_Settings.tanksUSCameraOffsetX, g_Settings.tanksUSCameraOffsetY, g_Settings.tanksUSCameraOffsetZ)
    )

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed T90 Cam 2')

end)

ResourceManager:RegisterInstanceLoadHandler(m_M1PGuid, m_M1Cam2IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed M1 Cam 2')

end)

ResourceManager:RegisterInstanceLoadHandler(m_M1PGuid, m_M1Cam3IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed M1 Cam 3')

end)

ResourceManager:RegisterInstanceLoadHandler(m_M1PGuid, m_M1Cam4IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed M1 Cam 4')

end)

ResourceManager:RegisterInstanceLoadHandler(m_M1PGuid, m_M1Cam5IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed M1 Cam 5')

end)

ResourceManager:RegisterInstanceLoadHandler(m_M1PGuid, m_M1Cam6IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed M1 Cam 6')

end)

ResourceManager:RegisterInstanceLoadHandler(m_M1PGuid, m_M1Cam7IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed M1 Cam 7')

end)


-- LAV25 | defaultHealth: 1000 | 
local m_LAV25PGuid = Guid('D124CDD4-FE2A-11DF-BB74-FD1A26B74EE5')
local m_LAV25VehicleIGuid = Guid('0AA2C0B7-6B2C-76F5-B7CE-50276A615E3A')
-- Change Health
ResourceManager:RegisterInstanceLoadHandler(m_LAV25PGuid, m_LAV25VehicleIGuid, function(p_Instance)

    local s_VehicleEntityData = VehicleEntityData(p_Instance)
    s_VehicleEntityData:MakeWritable()

    -- default disabledDamageThreshold: 500
    s_VehicleEntityData.disabledDamageThreshold = s_VehicleEntityData.disabledDamageThreshold * g_Settings.disableThresholdMultiplier

    --print('Changed LAV25 Health')

end)

local m_LAV25ACam1IGuid = Guid('1DBA97CA-120D-44BE-ACEE-47E1D3C4EA77')
local m_LAV25ACam2IGuid = Guid('A99CF3B4-F605-421C-9371-E9DD925BD862')
local m_LAV25ACam3IGuid = Guid('BB9FC4F8-865F-4592-B55A-8BD7D94764F0')
local m_LAV25ACam4IGuid = Guid('977B24B4-DCE1-4163-8BD9-3A8C7C7E6431')
-- Change FOV
-- Alternate Cam
ResourceManager:RegisterInstanceLoadHandler(m_LAV25PGuid, m_LAV25ACam1IGuid, function(p_Instance)

    local s_AlternateCamera = AlternateCameraViewData(p_Instance)
    s_AlternateCamera:MakeWritable()

    -- default FieldOfView: 55
    s_AlternateCamera.fieldOfView = s_AlternateCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson

    --print('Changed LAV25 A Cam 1')

end)

ResourceManager:RegisterInstanceLoadHandler(m_LAV25PGuid, m_LAV25ACam2IGuid, function(p_Instance)

    local s_AlternateCamera = AlternateCameraViewData(p_Instance)
    s_AlternateCamera:MakeWritable()

    -- default FieldOfView: 55
    s_AlternateCamera.fieldOfView = s_AlternateCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson

    --print('Changed LAV25 A Cam 2')

end)

ResourceManager:RegisterInstanceLoadHandler(m_LAV25PGuid, m_LAV25ACam3IGuid, function(p_Instance)

    local s_AlternateCamera = AlternateCameraViewData(p_Instance)
    s_AlternateCamera:MakeWritable()

    -- default FieldOfView: 55
    s_AlternateCamera.fieldOfView = s_AlternateCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson

    --print('Changed LAV25 A Cam 3')

end)

ResourceManager:RegisterInstanceLoadHandler(m_LAV25PGuid, m_LAV25ACam4IGuid, function(p_Instance)

    local s_AlternateCamera = AlternateCameraViewData(p_Instance)
    s_AlternateCamera:MakeWritable()

    -- default FieldOfView: 55
    s_AlternateCamera.fieldOfView = s_AlternateCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson

    --print('Changed LAV25 A Cam 4')

end)

local m_LAV25Cam1IGuid = Guid('81D732C1-248B-4DB9-ACAE-33C18D05A776')
local m_LAV25Cam2IGuid = Guid('B89FC6AF-9613-466F-954B-CCDBEBF119FA')
local m_LAV25Cam3IGuid = Guid('DC19A628-223C-4909-BB1D-BD84EBB73D84')
local m_LAV25Cam4IGuid = Guid('93F2E362-F9BD-4273-9416-3B94854B9C82')
local m_LAV25Cam5IGuid = Guid('1749F020-114E-440F-8D7C-D9C4C8D94BBC')
local m_LAV25Cam6IGuid = Guid('2AC6AAB2-0CF8-4559-AE6A-BE1B92C29216')
local m_LAV25Cam7IGuid = Guid('CDEE01E8-9413-41F5-9EC8-8E760BD1E9E7')
local m_LAV25Cam8IGuid = Guid('AFF3133D-EA3E-4DEC-9523-5EBBBCDF0DDE')
-- Cam
ResourceManager:RegisterInstanceLoadHandler(m_LAV25PGuid, m_LAV25Cam1IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed LAV25 Cam 1')

end)

ResourceManager:RegisterInstanceLoadHandler(m_LAV25PGuid, m_LAV25Cam2IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed LAV25 Cam 2')

end)

ResourceManager:RegisterInstanceLoadHandler(m_LAV25PGuid, m_LAV25Cam3IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed LAV25 Cam 3')

end)

ResourceManager:RegisterInstanceLoadHandler(m_LAV25PGuid, m_LAV25Cam4IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed LAV25 Cam 4')

end)

ResourceManager:RegisterInstanceLoadHandler(m_LAV25PGuid, m_LAV25Cam5IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed LAV25 Cam 5')

end)

ResourceManager:RegisterInstanceLoadHandler(m_LAV25PGuid, m_LAV25Cam6IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed LAV25 Cam 6')

end)

ResourceManager:RegisterInstanceLoadHandler(m_LAV25PGuid, m_LAV25Cam7IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed LAV25 Cam 7')

end)

ResourceManager:RegisterInstanceLoadHandler(m_LAV25PGuid, m_LAV25Cam8IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed LAV25 Cam 7')

end)


-- BMP2 | defaultHealth: 1000 | 
local m_BMP2PGuid = Guid('AAE95906-AFD4-11DD-84FB-9FA71F68ED5E')
local m_BMP2VehicleIGuid = Guid('AAE95908-AFD4-11DD-84FB-9FA71F68ED5E')
-- Change Health
ResourceManager:RegisterInstanceLoadHandler(m_BMP2PGuid, m_BMP2VehicleIGuid, function(p_Instance)

    local s_VehicleEntityData = VehicleEntityData(p_Instance)
    s_VehicleEntityData:MakeWritable()

    -- default disabledDamageThreshold: 500
    s_VehicleEntityData.disabledDamageThreshold = s_VehicleEntityData.disabledDamageThreshold * g_Settings.disableThresholdMultiplier

    --print('Changed BMP2 Health')

end)

local m_BMP2ACam1IGuid = Guid('2DA998FF-4736-41CC-98AB-DCA0500A6B1F')
local m_BMP2ACam2IGuid = Guid('9FD97CF8-B530-4DA5-944D-845ECA37F41F')
local m_BMP2ACam3IGuid = Guid('5D09F5C8-F5EC-47DD-AAF1-E7F416A7C2CE')
local m_BMP2ACam4IGuid = Guid('42A07684-EA97-4B74-B45E-579346B1C404')
-- Change FOV
-- Alternate Cam
ResourceManager:RegisterInstanceLoadHandler(m_BMP2PGuid, m_BMP2ACam1IGuid, function(p_Instance)

    local s_AlternateCamera = AlternateCameraViewData(p_Instance)
    s_AlternateCamera:MakeWritable()

    -- default FieldOfView: 55
    s_AlternateCamera.fieldOfView = s_AlternateCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson

    --print('Changed BMP2 A Cam 1')

end)

ResourceManager:RegisterInstanceLoadHandler(m_BMP2PGuid, m_BMP2ACam2IGuid, function(p_Instance)

    local s_AlternateCamera = AlternateCameraViewData(p_Instance)
    s_AlternateCamera:MakeWritable()

    -- default FieldOfView: 55
    s_AlternateCamera.fieldOfView = s_AlternateCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson

    --print('Changed BMP2 A Cam 2')

end)

ResourceManager:RegisterInstanceLoadHandler(m_BMP2PGuid, m_BMP2ACam3IGuid, function(p_Instance)

    local s_AlternateCamera = AlternateCameraViewData(p_Instance)
    s_AlternateCamera:MakeWritable()

    -- default FieldOfView: 55
    s_AlternateCamera.fieldOfView = s_AlternateCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson

    --print('Changed BMP2 A Cam 3')

end)

ResourceManager:RegisterInstanceLoadHandler(m_BMP2PGuid, m_BMP2ACam4IGuid, function(p_Instance)

    local s_AlternateCamera = AlternateCameraViewData(p_Instance)
    s_AlternateCamera:MakeWritable()

    -- default FieldOfView: 55
    s_AlternateCamera.fieldOfView = s_AlternateCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson

    --print('Changed BMP2 A Cam 4')

end)

local m_BMP2Cam1IGuid = Guid('AB4AD033-28D4-4A06-9267-C57E7FA6886F')
local m_BMP2Cam2IGuid = Guid('A259B406-5B63-4F4D-A857-D578CED2147E')
local m_BMP2Cam3IGuid = Guid('F9F06FBC-2445-4571-8F8F-41444FD0F7F6')
local m_BMP2Cam4IGuid = Guid('7735F6CF-DB3D-4257-B52F-569E902DE761')
local m_BMP2Cam5IGuid = Guid('77C6975A-043E-46C4-BD59-F0E8E75559A0')
local m_BMP2Cam6IGuid = Guid('82519964-FA33-4A43-812E-A34471A41F87')
local m_BMP2Cam7IGuid = Guid('67090832-25D4-407F-96E0-D08F34157F38')
local m_BMP2Cam8IGuid = Guid('70A65DFF-AD95-4849-9720-EB31BE5B63F7')
-- Cam
ResourceManager:RegisterInstanceLoadHandler(m_BMP2PGuid, m_BMP2Cam1IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed BMP2 Cam 1')

end)

ResourceManager:RegisterInstanceLoadHandler(m_BMP2PGuid, m_BMP2Cam2IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed BMP2 Cam 3')

end)

ResourceManager:RegisterInstanceLoadHandler(m_BMP2PGuid, m_BMP2Cam3IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed BMP2 Cam 3')

end)

ResourceManager:RegisterInstanceLoadHandler(m_BMP2PGuid, m_BMP2Cam4IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed BMP2 Cam 4')

end)

ResourceManager:RegisterInstanceLoadHandler(m_BMP2PGuid, m_BMP2Cam5IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed BMP2 Cam 5')

end)

ResourceManager:RegisterInstanceLoadHandler(m_BMP2PGuid, m_BMP2Cam6IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed BMP2 Cam 6')

end)

ResourceManager:RegisterInstanceLoadHandler(m_BMP2PGuid, m_BMP2Cam7IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed BMP2 Cam 7')

end)

ResourceManager:RegisterInstanceLoadHandler(m_BMP2PGuid, m_BMP2Cam8IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed BMP2 Cam 7')

end)



-- TUNGUSKA_M | defaultHealth: 1000 | 
local m_TUNGUSKA_MPGuid = Guid('3DB73059-32BD-11E0-931D-8D7AAE81C8B7')
local m_TUNGUSKA_MVehicleIGuid = Guid('AA668FE2-903B-62A9-13DB-6CA72BF63729')
-- Change Health
ResourceManager:RegisterInstanceLoadHandler(m_TUNGUSKA_MPGuid, m_TUNGUSKA_MVehicleIGuid, function(p_Instance)

    local s_VehicleEntityData = VehicleEntityData(p_Instance)
    s_VehicleEntityData:MakeWritable()

    -- default disabledDamageThreshold: 500
    s_VehicleEntityData.disabledDamageThreshold = s_VehicleEntityData.disabledDamageThreshold * g_Settings.disableThresholdMultiplier

    --print('Changed TUNGUSKA_M Health')

end)

local m_TUNGUSKA_MACam1IGuid = Guid('F42BC0D5-BC94-4641-A857-94CC1FA829CB')
local m_TUNGUSKA_MACam2IGuid = Guid('AF151443-70E2-4C83-B591-83488D251413')


-- Change FOV
-- Alternate Cam
ResourceManager:RegisterInstanceLoadHandler(m_TUNGUSKA_MPGuid, m_TUNGUSKA_MACam1IGuid, function(p_Instance)

    local s_AlternateCamera = AlternateCameraViewData(p_Instance)
    s_AlternateCamera:MakeWritable()

    -- default FieldOfView: 55
    s_AlternateCamera.fieldOfView = s_AlternateCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson

    --print('Changed TUNGUSKA_M A Cam 1')

end)

ResourceManager:RegisterInstanceLoadHandler(m_TUNGUSKA_MPGuid, m_TUNGUSKA_MACam2IGuid, function(p_Instance)

    local s_AlternateCamera = AlternateCameraViewData(p_Instance)
    s_AlternateCamera:MakeWritable()

    -- default FieldOfView: 55
    s_AlternateCamera.fieldOfView = s_AlternateCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson

    --print('Changed TUNGUSKA_M A Cam 2')

end)


local m_TUNGUSKA_MCam1IGuid = Guid('10A555CF-7251-40D8-8034-DA9DA5551549')
local m_TUNGUSKA_MCam2IGuid = Guid('7BF62A99-92E0-40B1-895C-7B885F1100E6')
local m_TUNGUSKA_MCam3IGuid = Guid('7A5A8913-56DA-4BF3-92E6-F4654BC113A1')
local m_TUNGUSKA_MCam4IGuid = Guid('BAAD7BA6-2ADD-49E4-9634-956F8DB95933')

-- Cam
ResourceManager:RegisterInstanceLoadHandler(m_TUNGUSKA_MPGuid, m_TUNGUSKA_MCam1IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed TUNGUSKA_M Cam 1')

end)

ResourceManager:RegisterInstanceLoadHandler(m_TUNGUSKA_MPGuid, m_TUNGUSKA_MCam2IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed TUNGUSKA_M Cam 2')

end)


ResourceManager:RegisterInstanceLoadHandler(m_TUNGUSKA_MPGuid, m_TUNGUSKA_MCam3IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed TUNGUSKA_M Cam 3')

end)

ResourceManager:RegisterInstanceLoadHandler(m_TUNGUSKA_MPGuid, m_TUNGUSKA_MCam4IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed TUNGUSKA_M Cam 4')

end)

-- LAVAD | defaultHealth: 1000 | 
local m_LAVADPGuid = Guid('0E23F40F-CDB3-4B9E-A36B-BD338CFA35BC')
local m_LAVADVehicleIGuid = Guid('86A71B49-87A7-4A4D-B7E2-7C835B2F27C9')
-- Change Health
ResourceManager:RegisterInstanceLoadHandler(m_LAVADPGuid, m_LAVADVehicleIGuid, function(p_Instance)

    local s_VehicleEntityData = VehicleEntityData(p_Instance)
    s_VehicleEntityData:MakeWritable()

    -- default disabledDamageThreshold: 500
    s_VehicleEntityData.disabledDamageThreshold = s_VehicleEntityData.disabledDamageThreshold * g_Settings.disableThresholdMultiplier

    --print('Changed LAVAD Health')

end)

local m_LAVADACam1IGuid = Guid('7EBEBEE4-C909-43DE-ACAA-700EABADA1AA')
local m_LAVADACam2IGuid = Guid('0DE9C0E9-ACDF-4EEA-BEF7-2638CE80A323')


-- Change FOV
-- Alternate Cam
ResourceManager:RegisterInstanceLoadHandler(m_LAVADPGuid, m_LAVADACam1IGuid, function(p_Instance)

    local s_AlternateCamera = AlternateCameraViewData(p_Instance)
    s_AlternateCamera:MakeWritable()

    -- default FieldOfView: 55
    s_AlternateCamera.fieldOfView = s_AlternateCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson

    --print('Changed LAVAD A Cam 1')

end)

ResourceManager:RegisterInstanceLoadHandler(m_LAVADPGuid, m_LAVADACam2IGuid, function(p_Instance)

    local s_AlternateCamera = AlternateCameraViewData(p_Instance)
    s_AlternateCamera:MakeWritable()

    -- default FieldOfView: 55
    s_AlternateCamera.fieldOfView = s_AlternateCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson

    --print('Changed LAVAD A Cam 2')

end)


local m_LAVADCam1IGuid = Guid('AEF8ABFF-6510-441D-92D8-39B2F1138A82')
local m_LAVADCam2IGuid = Guid('6F6D98BB-2943-4883-9438-230272AF1CA6')
local m_LAVADCam3IGuid = Guid('2C21518F-5740-47FB-B755-BFE37A588C47')
local m_LAVADCam4IGuid = Guid('5049CC3B-7005-4002-B880-F95ABCCF8106')

-- Cam
ResourceManager:RegisterInstanceLoadHandler(m_LAVADPGuid, m_LAVADCam1IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed LAVAD Cam 1')

end)

ResourceManager:RegisterInstanceLoadHandler(m_LAVADPGuid, m_LAVADCam2IGuid, function(p_Instance)

    local s_MainCameraComponent = ComponentData(p_Instance)
    s_MainCameraComponent:MakeWritable()

    s_MainCameraComponent.transform = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(g_Settings.tanksCameraOffsetX, g_Settings.tanksCameraOffsetY, g_Settings.tanksCameraOffsetZ)
    )

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed LAVAD Cam 2')

end)

ResourceManager:RegisterInstanceLoadHandler(m_LAVADPGuid, m_LAVADCam3IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed LAVAD Cam 3')

end)

ResourceManager:RegisterInstanceLoadHandler(m_LAVADPGuid, m_LAVADCam4IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed LAVAD Cam 4')

end)

--
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--JET


-- F18F | defaultHealth: 500 | 
local m_F18FPGuid = Guid('3EABB4EF-4003-11E0-8ACA-C41D37DB421C')
local m_F18FVehicleIGuid = Guid('2B2DBFF0-8C2E-4931-C61C-11FA5803CCB2')
-- Change Health
ResourceManager:RegisterInstanceLoadHandler(m_F18FPGuid, m_F18FVehicleIGuid, function(p_Instance)

    local s_VehicleEntityData = VehicleEntityData(p_Instance)
    s_VehicleEntityData:MakeWritable()

    -- default disabledDamageThreshold: 185
    s_VehicleEntityData.disabledDamageThreshold = s_VehicleEntityData.disabledDamageThreshold * g_Settings.disableThresholdMultiplier

    --print('Changed F18F Health')

end)

local m_F18FACam1IGuid = Guid('86D8EACB-8637-4BFB-AD0D-9A905DDF812A')


-- Change FOV
-- Alternate Cam
ResourceManager:RegisterInstanceLoadHandler(m_F18FPGuid, m_F18FACam1IGuid, function(p_Instance)

    local s_AlternateCamera = AlternateCameraViewData(p_Instance)
    s_AlternateCamera:MakeWritable()

    -- default FieldOfView: 55
    s_AlternateCamera.fieldOfView = s_AlternateCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson

    --print('Changed F18F A Cam 1')

end)


local m_F18FCam1IGuid = Guid('D7A2D4BF-994B-43E7-AC1B-BBAD5F0C619F')
local m_F18FCam2IGuid = Guid('18C8BE39-0026-4FDC-AA74-2D96767E312C')
local m_F18FCam3IGuid = Guid('704D8081-69FE-4E32-AD8D-EEAA7D66A405')
local m_F18FCam4IGuid = Guid('3B457C39-7BCF-4258-A347-618F338A6D20')

-- Cam
ResourceManager:RegisterInstanceLoadHandler(m_F18FPGuid, m_F18FCam1IGuid, function(p_Instance)


    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed F18F Cam 1')

end)

ResourceManager:RegisterInstanceLoadHandler(m_F18FPGuid, m_F18FCam2IGuid, function(p_Instance)

    local s_MainCameraComponent = ComponentData(p_Instance)
    s_MainCameraComponent:MakeWritable()


    s_MainCameraComponent.transform = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(g_Settings.jetCameraOffsetX, g_Settings.jetUSCameraOffsetY, g_Settings.jetCameraOffsetZ)
    )

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPersonJet
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPersonJet
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPersonJet
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPersonJet
    end

    --print('Changed F18F Cam 2')

end)

ResourceManager:RegisterInstanceLoadHandler(m_F18FPGuid, m_F18FCam3IGuid, function(p_Instance)


    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed F18F Cam 3')

end)

ResourceManager:RegisterInstanceLoadHandler(m_F18FPGuid, m_F18FCam4IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed F18F Cam 4')

end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- SU35BM | defaultHealth: 500 | 
local m_SU35PGuid = Guid('76806015-4BE2-11E0-B502-9B84AFF94A89')
local m_SU35VehicleIGuid = Guid('F2CD2BE1-4B72-59F0-A715-AA8E73F71751')
-- Change Health
ResourceManager:RegisterInstanceLoadHandler(m_SU35PGuid, m_SU35VehicleIGuid, function(p_Instance)

    local s_VehicleEntityData = VehicleEntityData(p_Instance)
    s_VehicleEntityData:MakeWritable()

    -- default disabledDamageThreshold: 185
    s_VehicleEntityData.disabledDamageThreshold = s_VehicleEntityData.disabledDamageThreshold * g_Settings.disableThresholdMultiplier

    --print('Changed SU35 Health')

end)


local m_SU35ACam1IGuid = Guid('1B7C8CCB-1536-42ED-A469-47239C04CA6E')


-- Change FOV
-- Alternate Cam
ResourceManager:RegisterInstanceLoadHandler(m_SU35PGuid, m_SU35ACam1IGuid, function(p_Instance)

    local s_AlternateCamera = AlternateCameraViewData(p_Instance)
    s_AlternateCamera:MakeWritable()

    -- default FieldOfView: 55
    s_AlternateCamera.fieldOfView = s_AlternateCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson

    --print('Changed SU35 A Cam 1')

end)


local m_SU35Cam1IGuid = Guid('1EAF89C5-744B-4D41-ACB6-691F493DCD2F')
local m_SU35Cam2IGuid = Guid('42ECE6D2-B656-4A8B-805E-FE54B5D8639D')
local m_SU35Cam3IGuid = Guid('74F2DCD8-AA04-4E02-BFE1-B4BB9BBE417E')
local m_SU35Cam4IGuid = Guid('83E8D662-FD7A-4FF5-852E-ECB0CBD87073')

-- Cam
ResourceManager:RegisterInstanceLoadHandler(m_SU35PGuid, m_SU35Cam1IGuid, function(p_Instance)


    --local s_MainCamera = CameraComponentData(p_Instance)
    --s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    --if s_MainCamera.isFirstPerson == true then 
        --s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        --s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    --else 
        --s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        --s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    --end

    --print('Changed SU35 Cam 1')

end)

ResourceManager:RegisterInstanceLoadHandler(m_SU35PGuid, m_SU35Cam2IGuid, function(p_Instance)

    local s_MainCameraComponent = ComponentData(p_Instance)
    s_MainCameraComponent:MakeWritable()


    --local s_MainCamera = CameraComponentData(p_Instance)
    --s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    --if s_MainCamera.isFirstPerson == true then 
        --s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPersonJet
        --s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPersonJet
    --else 
        --s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPersonJet
        --s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPersonJet
    --end

    --print('Changed SU35 Cam 2')

end)

ResourceManager:RegisterInstanceLoadHandler(m_SU35PGuid, m_SU35Cam3IGuid, function(p_Instance)

    local s_MainCameraComponent = ComponentData(p_Instance)
    s_MainCameraComponent:MakeWritable()


    s_MainCameraComponent.transform = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(g_Settings.jetCameraOffsetX, g_Settings.jetUSCameraOffsetY, g_Settings.jetCameraOffsetZ)
    )

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPersonJet
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPersonJet
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPersonJet
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPersonJet
    end

    --print('Changed SU35 Cam 3')

end)

ResourceManager:RegisterInstanceLoadHandler(m_SU35PGuid, m_SU35Cam4IGuid, function(p_Instance)


    --local s_MainCamera = CameraComponentData(p_Instance)
    --s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    --if s_MainCamera.isFirstPerson == true then 
        --s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPersonJet
        --s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPersonJet
    --else 
        --s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPersonJet
        --s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPersonJet
    --end

    --print('Changed SU35 Cam 4')

end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



-- A10BM | defaultHealth: 500 | 
local m_A10PGuid = Guid('D07E3830-85FD-4C0E-819E-23640D2B2ECB')
local m_A10VehicleIGuid = Guid('46B31051-405C-40E0-A7F0-62283823CC7C')
-- Change Health
ResourceManager:RegisterInstanceLoadHandler(m_A10PGuid, m_A10VehicleIGuid, function(p_Instance)

    local s_VehicleEntityData = VehicleEntityData(p_Instance)
    s_VehicleEntityData:MakeWritable()

    -- default disabledDamageThreshold: 185
    s_VehicleEntityData.disabledDamageThreshold = s_VehicleEntityData.disabledDamageThreshold * g_Settings.disableThresholdMultiplier

    --print('Changed A10 Health')

end)


local m_A10ACam1IGuid = Guid('012E8729-5030-4AA7-8ACA-B694D8438E18')


-- Change FOV
-- Alternate Cam
ResourceManager:RegisterInstanceLoadHandler(m_A10PGuid, m_A10ACam1IGuid, function(p_Instance)

    local s_AlternateCamera = AlternateCameraViewData(p_Instance)
    s_AlternateCamera:MakeWritable()

    -- default FieldOfView: 55
    s_AlternateCamera.fieldOfView = s_AlternateCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson

    --print('Changed A10 A Cam 1')

end)


local m_A10Cam1IGuid = Guid('FF2FD7A9-7981-463A-B0F9-EE368853AA4D')
local m_A10Cam2IGuid = Guid('D035CB54-9C4D-4371-AF6A-327731076041')
local m_A10Cam3IGuid = Guid('3B6F8A5A-13FA-484B-BBE7-ACF2D3082590')
local m_A10Cam4IGuid = Guid('D3C752DD-A64B-435A-B62D-F21E56D60419')

-- Cam
ResourceManager:RegisterInstanceLoadHandler(m_A10PGuid, m_A10Cam1IGuid, function(p_Instance)


    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed A10 Cam 1')

end)

ResourceManager:RegisterInstanceLoadHandler(m_A10PGuid, m_A10Cam2IGuid, function(p_Instance)

    local s_MainCameraComponent = ComponentData(p_Instance)
    s_MainCameraComponent:MakeWritable()


    s_MainCameraComponent.transform = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(g_Settings.jetCameraOffsetX, g_Settings.jetUSCameraOffsetY, g_Settings.jetCameraOffsetZ)
    )

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPersonJet
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPersonJet
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPersonJet
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPersonJet
    end

    --print('Changed A10 Cam 2')

end)

ResourceManager:RegisterInstanceLoadHandler(m_A10PGuid, m_A10Cam3IGuid, function(p_Instance)


    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed A10 Cam 3')

end)

ResourceManager:RegisterInstanceLoadHandler(m_A10PGuid, m_A10Cam4IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed A10 Cam 4')

end)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- SU25TM | defaultHealth: 500 | 
local m_SU25TMPGuid = Guid('08D7A80F-BCB4-44FA-8DDF-AE65F096046D')
local m_SU25TMVehicleIGuid = Guid('36EA7DA0-40C0-438F-98BB-31CBEA1E605F')
-- Change Health
ResourceManager:RegisterInstanceLoadHandler(m_SU25TMPGuid, m_SU25TMVehicleIGuid, function(p_Instance)

    local s_VehicleEntityData = VehicleEntityData(p_Instance)
    s_VehicleEntityData:MakeWritable()

    -- default disabledDamageThreshold: 185
    s_VehicleEntityData.disabledDamageThreshold = s_VehicleEntityData.disabledDamageThreshold * g_Settings.disableThresholdMultiplier

    --print('Changed SU25TM Health')

end)

local m_SU25TMACam1IGuid = Guid('29CDFDAA-14E0-40A5-B247-036BF7E6D170')


-- Change FOV
-- Alternate Cam
ResourceManager:RegisterInstanceLoadHandler(m_SU25TMPGuid, m_SU25TMACam1IGuid, function(p_Instance)

    local s_AlternateCamera = AlternateCameraViewData(p_Instance)
    s_AlternateCamera:MakeWritable()

    -- default FieldOfView: 55
    s_AlternateCamera.fieldOfView = s_AlternateCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson

    --print('Changed SU25TM A Cam 1')

end)


local m_SU25TMCam1IGuid = Guid('F06A05AC-3D4B-4A26-8581-60E065CBEE70')
local m_SU25TMCam2IGuid = Guid('EE56D773-BD30-472F-99E5-AD8733747777')
local m_SU25TMCam3IGuid = Guid('0F7018A9-C517-4D32-9D19-328731AE0D25')
local m_SU25TMCam4IGuid = Guid('5FE90393-066E-4A6E-8CA6-644F7088B227')

-- Cam
ResourceManager:RegisterInstanceLoadHandler(m_SU25TMPGuid, m_SU25TMCam1IGuid, function(p_Instance)


    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed SU25TM Cam 1')

end)

ResourceManager:RegisterInstanceLoadHandler(m_SU25TMPGuid, m_SU25TMCam2IGuid, function(p_Instance)

    local s_MainCameraComponent = ComponentData(p_Instance)
    s_MainCameraComponent:MakeWritable()


    s_MainCameraComponent.transform = LinearTransform(
        Vec3(1,0,0),
        Vec3(0,1,0),
        Vec3(0,0,1),
        Vec3(g_Settings.jetCameraOffsetX, g_Settings.jetUSCameraOffsetY, g_Settings.jetCameraOffsetZ)
    )

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPersonJet
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPersonJet
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPersonJet
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPersonJet
    end

    --print('Changed SU25TM Cam 2')

end)

ResourceManager:RegisterInstanceLoadHandler(m_SU25TMPGuid, m_SU25TMCam3IGuid, function(p_Instance)


    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed SU25TM Cam 3')

end)

ResourceManager:RegisterInstanceLoadHandler(m_SU25TMPGuid, m_SU25TMCam4IGuid, function(p_Instance)

    local s_MainCamera = CameraComponentData(p_Instance)
    s_MainCamera:MakeWritable()

    -- default FieldOfView: 55
    if s_MainCamera.isFirstPerson == true then 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierFirstPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierFirstPerson
    else 
        s_MainCamera.fieldOfView = s_MainCamera.fieldOfView * g_Settings.fovMultiplierThirdPerson
        s_MainCamera.regularView.fieldOfView = s_MainCamera.regularView.fieldOfView * g_Settings.fovMultiplierThirdPerson
    end

    --print('Changed SU25TM Cam 4')

end)


