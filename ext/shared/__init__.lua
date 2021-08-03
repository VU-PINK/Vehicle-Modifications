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

    local s_MainCameraComponent = ComponentData(p_Instance)
    s_MainCameraComponent:MakeWritable()

    s_MainCameraComponent.transform = LinearTransform(
        Vec3(0,0,0),
        Vec3(0,0,0),
        Vec3(0,0,0),
        Vec3(0,g_Settings.heliCameraOffsetHeight,g_Settings.heliCameraOffsetSideways)
    )

end)

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
local m_T90ACam4IGuid = Guid('40614727-FEC7-49CE-B7F4-BE37307E08D7')
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

    --print('Changed M1 Cam 1')

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

