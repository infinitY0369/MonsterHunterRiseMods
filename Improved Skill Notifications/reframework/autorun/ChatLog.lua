local Pl
local Sd
local St
local reset

local function getPlayerManager()
    return sdk.get_managed_singleton("snow.player.PlayerManager")
end
local function getMasterPlayerID(PlayerManager)
    return PlayerManager:call("getMasterPlayerID()")
end
local function getPlayerListPrivate(PlayerManager, MasterPlayerID)
    return PlayerManager:get_field("PlayerListPrivate")[MasterPlayerID]
end
local function getPlayerData(PlayerManager, MasterPlayerID)
    return PlayerManager:get_field("<PlayerData>k__BackingField")[MasterPlayerID]
end
local function getPlayerSkill(PlayerManager, MasterPlayerID)
    return PlayerManager:get_field("<PlayerSkill>k__BackingField")[MasterPlayerID]
end
local function getPlayerQuestDefine()
    return sdk.find_type_definition("snow.player.PlayerQuestDefine")
end
local function get_MessageLanguage()
    return sdk.find_type_definition("via.gui.GUISystem"):get_method("get_MessageLanguage()"):call(nil)
end

local langIndex = get_MessageLanguage()
local function ChangedLanguage()
    if langIndex ~= get_MessageLanguage() then
        langIndex = get_MessageLanguage()
        return true
    end
end

local PlEquipSkillId = sdk.find_type_definition("snow.data.DataDef.PlEquipSkillId")

local function getPlEquipSkillId(Enum)
    return PlEquipSkillId:get_field(Enum):get_data()
end

local PlKitchenSkillId = sdk.find_type_definition("snow.data.DataDef.PlKitchenSkillId")

local function getPlKitchenSkillId(Enum)
    return PlKitchenSkillId:get_field(Enum):get_data()
end

local function getSkillData(PlayerManager)
    local playerQuestDefine     = getPlayerQuestDefine()
    local _EquipSkillParameter  = PlayerManager:get_field("_PlayerUserDataSkillParameter"):get_field("_EquipSkillParameter")
    local _OdangoSkillParameter = PlayerManager:get_field("_PlayerUserDataSkillParameter"):get_field("_OdangoSkillParameter")
    return {
        EquipSkill = {
            _001 = {
                Enum      = "Pl_EquipSkill_001",
                Id        = getPlEquipSkillId("Pl_EquipSkill_001"),
                Notice    = { true, true },
                Condition = { false },
                Param     = { playerQuestDefine:get_field("SkillChallengeTime"):get_data() }
            },
            _002 = {
                Enum      = "Pl_EquipSkill_002",
                Id        = getPlEquipSkillId("Pl_EquipSkill_002"),
                Notice    = { true, true },
                Condition = { false },
                Param     = {}
            },
            _003 = {
                Enum      = "Pl_EquipSkill_003",
                Id        = getPlEquipSkillId("Pl_EquipSkill_003"),
                Notice    = { true, true },
                Condition = { false },
                Param     = {}
            },
            _004 = {
                Enum      = "Pl_EquipSkill_004",
                Id        = getPlEquipSkillId("Pl_EquipSkill_004"),
                Notice    = { true, true },
                Condition = { false },
                Param     = {}
            },
            _008 = {
                Enum      = "Pl_EquipSkill_008",
                Id        = getPlEquipSkillId("Pl_EquipSkill_008"),
                Notice    = { true, true },
                Condition = { false },
                Param     = {}
            },
            _009 = {
                Enum      = "Pl_EquipSkill_009",
                Id        = getPlEquipSkillId("Pl_EquipSkill_009"),
                Notice    = { true, true },
                Condition = { false, false, false },
                Param     = { 120 }
            },
            _023 = {
                Enum      = "Pl_EquipSkill_023",
                Id        = getPlEquipSkillId("Pl_EquipSkill_023"),
                Notice    = { true, false },
                Condition = {},
                Param     = {}
            },
            _036 = {
                Enum      = "Pl_EquipSkill_036",
                Id        = getPlEquipSkillId("Pl_EquipSkill_036"),
                Notice    = { true, true },
                Condition = { false },
                Param     = { 720 }
            },
            _042 = {
                Enum      = "Pl_EquipSkill_042",
                Id        = getPlEquipSkillId("Pl_EquipSkill_042"),
                Notice    = { true, true },
                Condition = { false },
                Param     = { _EquipSkillParameter:get_field("_EquipSkill_042_CtlAddTime") * 60 }
            },
            _089 = {
                Enum      = "Pl_EquipSkill_089",
                Id        = getPlEquipSkillId("Pl_EquipSkill_089"),
                Notice    = { true, false },
                Condition = {},
                Param     = {}
            },
            _090 = {
                Enum      = "Pl_EquipSkill_090",
                Id        = getPlEquipSkillId("Pl_EquipSkill_090"),
                Notice    = { true, true },
                Condition = { false },
                Param     = { 0.35 }
            },
            _091 = {
                Enum      = "Pl_EquipSkill_091",
                Id        = getPlEquipSkillId("Pl_EquipSkill_091"),
                Notice    = { true, true },
                Condition = { false },
                Param     = { 0 }
            },
            _102 = {
                Enum      = "Pl_EquipSkill_102",
                Id        = getPlEquipSkillId("Pl_EquipSkill_102"),
                Notice    = { true, true },
                Condition = { false },
                Param     = {
                    _EquipSkillParameter:get_field("_EquipSkill_102_ActivationLv2"),
                    _EquipSkillParameter:get_field("_EquipSkill_102_ActivationLv2"),
                    _EquipSkillParameter:get_field("_EquipSkill_102_ActivationLv4"),
                    _EquipSkillParameter:get_field("_EquipSkill_102_ActivationLv4"),
                    _EquipSkillParameter:get_field("_EquipSkill_102_ActivationLv5")
                }
            },
            _105 = {
                Enum      = "Pl_EquipSkill_105",
                Id        = getPlEquipSkillId("Pl_EquipSkill_105"),
                Notice    = { true, true },
                Condition = { false },
                Param     = { 1800 }
            },
            _204 = {
                Enum      = "Pl_EquipSkill_204",
                Id        = getPlEquipSkillId("Pl_EquipSkill_204"),
                Notice    = { true, true },
                Condition = { false },
                Param     = { 1800 }
            },
            _206 = {
                Enum      = "Pl_EquipSkill_206",
                Id        = getPlEquipSkillId("Pl_EquipSkill_206"),
                Notice    = { true, true },
                Condition = { false },
                Param     = {}
            },
            _208 = {
                Enum      = "Pl_EquipSkill_208",
                Id        = getPlEquipSkillId("Pl_EquipSkill_208"),
                Notice    = { true, true },
                Condition = { false },
                Param     = {
                    _EquipSkillParameter:get_field("_EquipSkill_208_Lv1_Duration") * 60,
                    _EquipSkillParameter:get_field("_EquipSkill_208_Lv2_Duration") * 60,
                    _EquipSkillParameter:get_field("_EquipSkill_208_Lv3_Duration") * 60
                }
            },
            _209 = {
                Enum      = "Pl_EquipSkill_209",
                Id        = getPlEquipSkillId("Pl_EquipSkill_209"),
                Notice    = { true, true },
                Condition = { false },
                Param     = {}
            },
            _210 = {
                Enum      = "Pl_EquipSkill_210",
                Id        = getPlEquipSkillId("Pl_EquipSkill_210"),
                Notice    = { true, false },
                Condition = { false },
                Param     = {}
            },
            _215 = {
                Enum      = "Pl_EquipSkill_215",
                Id        = getPlEquipSkillId("Pl_EquipSkill_215"),
                Notice    = { true, true },
                Condition = { false },
                Param     = {
                    _EquipSkillParameter:get_field("_EquipSkill_215_Lv1"):get_field("_Time") * 60,
                    _EquipSkillParameter:get_field("_EquipSkill_215_Lv2"):get_field("_Time") * 60,
                    _EquipSkillParameter:get_field("_EquipSkill_215_Lv3"):get_field("_Time") * 60
                }
            },
            _216 = {
                Enum      = "Pl_EquipSkill_216",
                Id        = getPlEquipSkillId("Pl_EquipSkill_216"),
                Notice    = { true, true },
                Condition = { false },
                Param     = {
                    _EquipSkillParameter:get_field("_EquipSkill_216_Lv1"):get_field("_Bow_Duration") * 60,
                    _EquipSkillParameter:get_field("_EquipSkill_216_Lv2"):get_field("_Bow_Duration") * 60,
                    _EquipSkillParameter:get_field("_EquipSkill_216_Lv3"):get_field("_Bow_Duration") * 60
                }
            },
            _220 = {
                Enum      = "Pl_EquipSkill_220",
                Id        = getPlEquipSkillId("Pl_EquipSkill_220"),
                Notice    = { true, false },
                Condition = { false },
                Param     = {}
            },
            _222 = {
                Enum      = "Pl_EquipSkill_222",
                Id        = getPlEquipSkillId("Pl_EquipSkill_222"),
                Notice    = { true, true },
                Condition = { false },
                Param     = {
                    _EquipSkillParameter:get_field("_EquipSkill_222_Lv1"),
                    _EquipSkillParameter:get_field("_EquipSkill_222_Lv2"),
                    _EquipSkillParameter:get_field("_EquipSkill_222_Lv3")
                }
            },
            _223 = {
                Enum      = "Pl_EquipSkill_223",
                Id        = getPlEquipSkillId("Pl_EquipSkill_223"),
                Notice    = { true, false },
                Condition = { false },
                Param     = { {
                    (100 - _EquipSkillParameter:get_field("_EquipSkill_223"):get_field("_DamageReduceLv1")) / 100,
                    (100 - _EquipSkillParameter:get_field("_EquipSkill_223"):get_field("_DamageReduceLv2")) / 100
                }, {
                    _EquipSkillParameter:get_field("_EquipSkill_223"):get_field("_AccumulatorMax")
                } }
            },
            _226 = {
                Enum      = "Pl_EquipSkill_226",
                Id        = getPlEquipSkillId("Pl_EquipSkill_226"),
                Notice    = { true, true },
                Condition = { false },
                Param     = {}
            },
            _227 = {
                Enum      = "Pl_EquipSkill_227",
                Id        = getPlEquipSkillId("Pl_EquipSkill_227"),
                Notice    = { true, false },
                Condition = { false },
                Param     = {}
            },
            _229 = {
                Enum      = "Pl_EquipSkill_229",
                Id        = getPlEquipSkillId("Pl_EquipSkill_229"),
                Notice    = { true, true },
                Condition = { false },
                Param     = {}
            },
            _230 = {
                Enum      = "Pl_EquipSkill_230",
                Id        = getPlEquipSkillId("Pl_EquipSkill_230"),
                Notice    = { true, true },
                Condition = { false },
                Param     = {}
            },
            _231 = {
                Enum      = "Pl_EquipSkill_231",
                Id        = getPlEquipSkillId("Pl_EquipSkill_231"),
                Notice    = { true, true },
                Condition = { false },
                Param     = {
                    _EquipSkillParameter:get_field("_EquipSkill_231_Lv1_WpOn_Timer") * 60,
                    _EquipSkillParameter:get_field("_EquipSkill_231_Lv2_WpOn_Timer") * 60,
                    _EquipSkillParameter:get_field("_EquipSkill_231_Lv3_WpOn_Timer") * 60
                }
            },
            _232 = {
                Enum      = "Pl_EquipSkill_232",
                Id        = getPlEquipSkillId("Pl_EquipSkill_232"),
                Notice    = { true, true },
                Condition = { false },
                Param     = { {
                    _EquipSkillParameter:get_field("_EquipSkill_232"):get_field("_SkillLv1"):get_field("_Absorption_Lv1"),
                    _EquipSkillParameter:get_field("_EquipSkill_232"):get_field("_SkillLv2"):get_field("_Absorption_Lv1"),
                    _EquipSkillParameter:get_field("_EquipSkill_232"):get_field("_SkillLv3"):get_field("_Absorption_Lv1")
                }, {
                    _EquipSkillParameter:get_field("_EquipSkill_232"):get_field("_SkillLv1"):get_field("_Absorption_Lv2"),
                    _EquipSkillParameter:get_field("_EquipSkill_232"):get_field("_SkillLv2"):get_field("_Absorption_Lv2"),
                    _EquipSkillParameter:get_field("_EquipSkill_232"):get_field("_SkillLv3"):get_field("_Absorption_Lv2")
                }, {
                    _EquipSkillParameter:get_field("_EquipSkill_232"):get_field("_SkillLv1"):get_field("_ActivationTime_Lv1"),
                    _EquipSkillParameter:get_field("_EquipSkill_232"):get_field("_SkillLv2"):get_field("_ActivationTime_Lv1"),
                    _EquipSkillParameter:get_field("_EquipSkill_232"):get_field("_SkillLv3"):get_field("_ActivationTime_Lv1")
                }, {
                    _EquipSkillParameter:get_field("_EquipSkill_232"):get_field("_SkillLv1"):get_field("_ActivationTime_Lv2"),
                    _EquipSkillParameter:get_field("_EquipSkill_232"):get_field("_SkillLv2"):get_field("_ActivationTime_Lv2"),
                    _EquipSkillParameter:get_field("_EquipSkill_232"):get_field("_SkillLv3"):get_field("_ActivationTime_Lv2")
                } }
            }
        },
        KitchenSkill = {
            _002 = {
                Enum      = "Pl_KitchenSkill_002",
                Id        = getPlKitchenSkillId("Pl_KitchenSkill_002"),
                Notice    = { true, true },
                Condition = { false },
                Param     = {
                    _OdangoSkillParameter:get_field("_KitchenSkill_002_Lv1"):get_field("_EnableHP"),
                    _OdangoSkillParameter:get_field("_KitchenSkill_002_Lv2"):get_field("_EnableHP"),
                    _OdangoSkillParameter:get_field("_KitchenSkill_002_Lv3"):get_field("_EnableHP"),
                    _OdangoSkillParameter:get_field("_KitchenSkill_002_Lv4"):get_field("_EnableHP")
                }
            },
            _024 = {
                Enum      = "Pl_KitchenSkill_024",
                Id        = getPlKitchenSkillId("Pl_KitchenSkill_024"),
                Notice    = { true, false },
                Condition = { false },
                Param     = {}
            },
            _027 = {
                Enum      = "Pl_KitchenSkill_027",
                Id        = getPlKitchenSkillId("Pl_KitchenSkill_027"),
                Notice    = { true, true },
                Condition = {},
                Param     = {}
            },
            _030 = {
                Enum      = "Pl_KitchenSkill_030",
                Id        = getPlKitchenSkillId("Pl_KitchenSkill_030"),
                Notice    = { true, false },
                Condition = {},
                Param     = {}
            },
            _031 = {
                Enum      = "Pl_KitchenSkill_031",
                Id        = getPlKitchenSkillId("Pl_KitchenSkill_031"),
                Notice    = { true, false },
                Condition = {},
                Param     = {}
            },
            _048 = {
                Enum      = "Pl_KitchenSkill_048",
                Id        = getPlKitchenSkillId("Pl_KitchenSkill_048"),
                Notice    = { true, false },
                Condition = { false },
                Param     = { {
                    _OdangoSkillParameter:get_field("_KitchenSkill_048_Lv1_Damage"),
                    _OdangoSkillParameter:get_field("_KitchenSkill_048_Lv2_Damage"),
                    _OdangoSkillParameter:get_field("_KitchenSkill_048_Lv3_Damage"),
                    _OdangoSkillParameter:get_field("_KitchenSkill_048_Lv4_Damage")
                }, {
                    _OdangoSkillParameter:get_field("_KitchenSkill_048_Lv1_Reduce"),
                    _OdangoSkillParameter:get_field("_KitchenSkill_048_Lv2_Reduce"),
                    _OdangoSkillParameter:get_field("_KitchenSkill_048_Lv3_Reduce"),
                    _OdangoSkillParameter:get_field("_KitchenSkill_048_Lv4_Reduce")
                } }
            },
            _051 = {
                Enum      = "Pl_KitchenSkill_051",
                Id        = getPlKitchenSkillId("Pl_KitchenSkill_051"),
                Notice    = { true, true },
                Condition = { false },
                Param     = { _OdangoSkillParameter:get_field("_KitchenSkill_051_Lv4_AtkDuration") * 60 }
            },
            _054 = {
                Enum      = "Pl_KitchenSkill_054",
                Id        = getPlKitchenSkillId("Pl_KitchenSkill_054"),
                Notice    = { true, true },
                Condition = { false },
                Param     = { _OdangoSkillParameter:get_field("_KitchenSkill_054_Time") * 60 }
            }
        }
    }
end

local function init(PlayerManager)
    reset = true
    return getSkillData(PlayerManager)
end

local isEquipSkill091
sdk.hook(sdk.find_type_definition("snow.player.PlayerBase"):get_method("isEquipSkill091()"),
    function(args)
    end,
    function(retval)
        if sdk.to_int64(retval) == 1 then
            isEquipSkill091 = true
        else
            isEquipSkill091 = false
        end

        return retval
    end)

local function getState(playerData, playerBase)
    local PlayerInfo = sdk.get_managed_singleton("snow.gui.GuiManager"):get_field("<refGuiHud>k__BackingField"):get_field("PlayerInfo")
    return {
        playerHealth                    = playerData:call("get_vital()"),
        playerMaxHealth                 = playerBase:call("getVitalMax()"),
        playerRawRedHealth              = playerData:get_field("_r_Vital"),
        playerRedHealth                 = playerBase:call("getRedVital()"),
        playerStamina                   = playerData:get_field("_stamina"),
        playerMaxStamina                = playerData:get_field("_staminaMax"),

        _ChallengeTimer                 = playerData:get_field("_ChallengeTimer"),
        isDebuffState                   = playerBase:call("isDebuffState"),
        _PowerFreedomTimer              = playerBase:get_field("_PowerFreedomTimer"),
        _WholeBodyTimer                 = playerData:get_field("_WholeBodyTimer"),
        _EquipSkill_036_Timer           = playerData:get_field("_EquipSkill_036_Timer"),
        _SlidingPowerupTimer            = playerData:get_field("_SlidingPowerupTimer"),
        isEquipSkill091                 = isEquipSkill091,
        _DieCount                       = playerData:get_field("_DieCount"),
        _CounterattackPowerupTimer      = playerData:get_field("_CounterattackPowerupTimer"),
        _DisasterTurnPowerUpTimer       = playerData:get_field("_DisasterTurnPowerUpTimer"),
        _FightingSpiritTimer            = playerData:get_field("_FightingSpiritTimer"),
        _EquipSkill208_AtkUpTimer       = playerData:get_field("_EquipSkill208_AtkUpTimer"),
        _BrandNewSharpnessAdjustUpTimer = playerData:get_field("_BrandNewSharpnessAdjustUpTimer"),
        _EquipSkill216_BottleUpTimer    = playerBase:get_field("_EquipSkill216_BottleUpTimer"),
        isHaveSkillGuts                 = PlayerInfo:get_field("isHaveSkillGuts"),
        _EquipSkill222_Timer            = playerData:get_field("_EquipSkill222_Timer"),
        _EquipSkill223Accumulator       = playerData:get_field("_EquipSkill223Accumulator"),
        isHateTarget                    = playerBase:call("isHateTarget()"),
        _IsEquipSkill226Enable          = playerBase:get_field("_IsEquipSkill226Enable"),
        _EquipSkill227State             = playerData:get_field("_EquipSkill227State"),
        get_IsEnableEquipSkill225       = playerBase:call("get_IsEnableEquipSkill225()"),
        _EquipSkill229UseUpFlg          = playerBase:get_field("_EquipSkill229UseUpFlg"),
        isActiveEquipSkill230           = playerBase:call("isActiveEquipSkill230()"),
        _EquipSkill231_WireNumTimer     = playerData:get_field("_EquipSkill231_WireNumTimer"),
        _EquipSkill231_WpOffTimer       = playerData:get_field("_EquipSkill231_WpOffTimer"),
        _EquipSkill232Absorption        = playerData:get_field("_EquipSkill232Absorption"),
        _EquipSkill232Timer             = playerData:get_field("_EquipSkill232Timer"),

        isHaveKitchenGuts               = PlayerInfo:get_field("isHaveKitchenGuts"),
        _KitchenSkill048_Damage         = playerData:get_field("_KitchenSkill048_Damage"),
        _KitchenSkill051_AtkUpTimer     = playerData:get_field("_KitchenSkill051_AtkUpTimer"),
        _KitchenSkill054_Timer          = playerData:get_field("_KitchenSkill054_Timer")
    }
end

local function getEquipSkillData(PlayerSkill)
    local t = {}
    for i = 1, #PlEquipSkillId:get_fields() do
        t[i] = PlayerSkill:call("getSkillData", i)
    end
    return t
end
local function getKitchenSkillData(PlayerSkill)
    local t = {}
    for i = 1, #PlKitchenSkillId:get_fields() do
        t[i] = PlayerSkill:call("getKitchenSkillData", i)
    end
    return t
end

local function getChatManager()
    return sdk.get_managed_singleton("snow.gui.ChatManager")
end

local getGuidByName = sdk.find_type_definition("via.gui.message"):get_method("getGuidByName")
local message       = sdk.find_type_definition("via.gui.message"):get_method("get(System.Guid)")
local function getMessageByName(Name)
    local Guid = getGuidByName:call(nil, Name)
    return message:call(nil, Guid)
end

local function getUI()
    return {
        OnMenu = {
            name        = "<COLOR 00FFFF>Improved Skill Notifications</COLOR>",
            description = ""
        },
        Slider = {
            label             = { "<COLOR FF0000>R</COLOR>", "<COLOR 00FF00>G</COLOR>", "<COLOR 0000FF>B</COLOR>" },
            curValue          = {},
            min               = 0x0,
            max               = 0xFF,
            toolTip           = "",
            isImmediateUpdate = false,
            wasChanged        = nil,
            newValue          = nil
        },
        Options = {
            Selector = {
                label             = getMessageByName("Comn_TargetSelect_00"),
                curValue          = 1,
                optionNames       = { getMessageByName("FacilityCommonMenu_14"), getMessageByName("CharMakeMsg_Me_193") },
                optionMessages    = "",
                toolTip           = "",
                isImmediateUpdate = false,
                wasChanged        = nil,
                newIndex          = nil
            },
            EquipSkills = {
                label             = getMessageByName("CharMakeMsg_Me_166"),
                curValue          = 1,
                optionNames       = { getMessageByName("COMN_ITEMFILTER_01"), getMessageByName("COMN_SkillDetail_03") },
                optionMessages    = "",
                toolTip           = "",
                isImmediateUpdate = false,
                wasChanged        = nil,
                newIndex          = nil,
                isFilter          = false
            },
            SkillSettings = {
                label             = "",
                curValue          = {},
                optionNames       = {},
                optionMessages    = "",
                toolTip           = "",
                isImmediateUpdate = false,
                wasChanged        = nil,
                newIndex          = nil,
                msg               = {
                    getMessageByName("STM_ASE_Menu_005"),
                    "<COL YEL>" .. getMessageByName("Option_Me_Item_107_01_MR") .. "</COL>",
                    "<COL RED>" .. getMessageByName("Option_Me_Item_107_02_MR") .. "</COL>",
                    "<COL GRAY>" .. getMessageByName("ChatMenu_LogMenu_16") .. "</COL>"
                }
            },
            COLOR = {
                label             = {},
                curValue          = {},
                optionNames       = { getMessageByName("CharMakeMsg_Me_100"), getMessageByName("CharMakeMsg_Me_101") },
                optionMessages    = "",
                toolTip           = "",
                isImmediateUpdate = false,
                wasChanged        = nil,
                newIndex          = nil
            }
        },
        Header = {
            EquipSkill = {
                text = getMessageByName("FacilityCommonMenu_14")
            },
            KitchenSkill = {
                text = getMessageByName("COMN_SkillDetailTab_04")
            }
        },
        Label = {
            label = getMessageByName("DialogMsg_System_NSW_DataLoad_NG"),
            displayValue = "",
            toolTip = getMessageByName("StartMenu_System_Common_GrayOut")
        },
        MSG = {
            Pl = {
                getMessageByName("ChatLog_Pl_Skill_01"),
                getMessageByName("ChatLog_Pl_Skill_02")
            },
            Ot = {
                getMessageByName("ChatLog_Ot_Skill_01"),
                getMessageByName("ChatLog_Ot_Skill_02"),
                getMessageByName("ChatLog_Ot_Skill_03")
            },
            Co = {
                getMessageByName("ChatLog_Co_Skill_01")
            }
        }
    }
end
local UI                           = getUI()

local getEquipSkillName            = sdk.find_type_definition("snow.data.DataShortcut"):get_method("getName(snow.data.DataDef.PlEquipSkillId)")
local getKitchenSkillName          = sdk.find_type_definition("snow.data.DataShortcut"):get_method("getName(snow.data.DataDef.PlKitchenSkillId)")
local GUI_COMMON_MEAL_SKILL_NOTICE = sdk.find_type_definition("snow.gui.COMMON"):get_field("GUI_COMMON_MEAL_SKILL_NOTICE"):get_data(nil)
local function AddChatInfomation(type, skillID, isSkillActive)
    local getName
    local ChatLog
    if type == 1 then
        getName = getEquipSkillName
    elseif type == 2 then
        getName = getKitchenSkillName
    end
    if isSkillActive then
        ChatLog = UI.MSG.Pl[1]
    elseif not isSkillActive then
        ChatLog = UI.MSG.Pl[2]
    end
    getChatManager():call("reqAddChatInfomation", string.gsub(ChatLog, "{0}", getName(nil, skillID)), GUI_COMMON_MEAL_SKILL_NOTICE)
end

sdk.hook(sdk.find_type_definition("snow.player.PlayerManager"):get_method("update"),
    function(args)
        local PlayerManager = getPlayerManager()
        if not PlayerManager or not PlayerManager:call("get_RefItemParameter()") then
            return
        end

        local MasterPlayerID = getMasterPlayerID(PlayerManager)
        if not MasterPlayerID or MasterPlayerID > 4 then
            if not reset then Pl = init(PlayerManager) end
            return
        end

        local playerData  = getPlayerData(PlayerManager, MasterPlayerID)
        local PlayerSkill = getPlayerSkill(PlayerManager, MasterPlayerID)
        if not playerData or not PlayerSkill then
            if not reset then Pl = init(PlayerManager) end
            return
        end

        Sd = {
            EquipSkill   = getEquipSkillData(PlayerSkill),
            KitchenSkill = getKitchenSkillData(PlayerSkill)
        }

        local playerBase = getPlayerListPrivate(PlayerManager, MasterPlayerID)
        if not playerBase or not playerBase:get_type_definition():is_a("snow.player.PlayerQuestBase") then
            if not reset then Pl = init(PlayerManager) end
            return
        end

        if not Pl then Pl = init(PlayerManager) end
        St = getState(playerData, playerBase)

        if ChangedLanguage() then UI = getUI() end

        reset = false

        -- 0 Pl_EquipSkill_None
        -- 1 Pl_EquipSkill_000 攻撃
        -- 2 Pl_EquipSkill_001 挑戦者
        if Sd.EquipSkill[Pl.EquipSkill._001.Id] then
            if not Pl.EquipSkill._001.Condition[1] and St._ChallengeTimer == Pl.EquipSkill._001.Param[1] then
                Pl.EquipSkill._001.Condition[1] = true
                AddChatInfomation(1, Pl.EquipSkill._001.Id, Pl.EquipSkill._001.Condition[1])
            elseif Pl.EquipSkill._001.Condition[1] and St._ChallengeTimer == 0 then
                Pl.EquipSkill._001.Condition[1] = false
                AddChatInfomation(1, Pl.EquipSkill._001.Id, Pl.EquipSkill._001.Condition[1])
            end
        end
        -- 3 Pl_EquipSkill_002 フルチャージ
        if Sd.EquipSkill[Pl.EquipSkill._002.Id] then
            if not Pl.EquipSkill._002.Condition[1] and St.playerHealth == St.playerMaxHealth then
                Pl.EquipSkill._002.Condition[1] = true
                AddChatInfomation(1, Pl.EquipSkill._002.Id, Pl.EquipSkill._002.Condition[1])
            elseif Pl.EquipSkill._002.Condition[1] and St.playerHealth < St.playerMaxHealth then
                Pl.EquipSkill._002.Condition[1] = false
                AddChatInfomation(1, Pl.EquipSkill._002.Id, Pl.EquipSkill._002.Condition[1])
            end
        end
        -- 4 Pl_EquipSkill_003 逆恨み
        if Sd.EquipSkill[Pl.EquipSkill._003.Id] then
            if not Pl.EquipSkill._003.Condition[1] then
                if St.get_IsEnableEquipSkill225 or St.playerRedHealth > 0 then
                    Pl.EquipSkill._003.Condition[1] = true
                    AddChatInfomation(1, Pl.EquipSkill._003.Id, Pl.EquipSkill._003.Condition[1])
                end
            elseif Pl.EquipSkill._003.Condition[1] and not St.get_IsEnableEquipSkill225 and St.playerHealth == St.playerRawRedHealth and St.playerRedHealth == 0 then
                Pl.EquipSkill._003.Condition[1] = false
                AddChatInfomation(1, Pl.EquipSkill._003.Id, Pl.EquipSkill._003.Condition[1])
            end
        end
        -- 5 Pl_EquipSkill_004 死中に活
        if Sd.EquipSkill[Pl.EquipSkill._004.Id] then
            if not Pl.EquipSkill._004 and St.isDebuffState then
                Pl.EquipSkill._004 = true
                AddChatInfomation(1, Pl.EquipSkill._004.Id, Pl.EquipSkill._004)
            elseif Pl.EquipSkill._004 and not St.isDebuffState then
                Pl.EquipSkill._004 = false
                AddChatInfomation(1, Pl.EquipSkill._004.Id, Pl.EquipSkill._004)
            end
        end
        -- 6 Pl_EquipSkill_005 見切り
        -- 7 Pl_EquipSkill_006 超会心
        -- 8 Pl_EquipSkill_007 弱点特効
        -- 9 Pl_EquipSkill_008 力の解放
        if Sd.EquipSkill[Pl.EquipSkill._008.Id] then
            if not Pl.EquipSkill._008.Condition[1] and St._PowerFreedomTimer == Pl.EquipSkill._001.Param[1] then
                Pl.EquipSkill._008.Condition[1] = true
                AddChatInfomation(1, Pl.EquipSkill._008.Id, Pl.EquipSkill._008.Condition[1])
            elseif Pl.EquipSkill._008.Condition[1] and St._PowerFreedomTimer == 0 then
                Pl.EquipSkill._008.Condition[1] = false
                AddChatInfomation(1, Pl.EquipSkill._008.Id, Pl.EquipSkill._008.Condition[1])
            end
        end
        -- 10 Pl_EquipSkill_009 渾身
        if Sd.EquipSkill[Pl.EquipSkill._009.Id] then
            if not Pl.EquipSkill._009.Condition[1] and St.playerStamina == St.playerMaxStamina and St._WholeBodyTimer > Pl.EquipSkill._009.Param[1] then
                Pl.EquipSkill._009.Condition[2] = true
            elseif Pl.EquipSkill._009.Condition[2] and St._WholeBodyTimer == 0 then
                Pl.EquipSkill._009.Condition[1] = true
                Pl.EquipSkill._009.Condition[2] = false
                AddChatInfomation(1, Pl.EquipSkill._009.Id, Pl.EquipSkill._009.Condition[1])
            elseif Pl.EquipSkill._009.Condition[1] and not Pl.EquipSkill._009.Condition[3] and St.playerStamina < St.playerMaxStamina and St._WholeBodyTimer == 0 then
                Pl.EquipSkill._009.Condition[3] = true
            elseif Pl.EquipSkill._009.Condition[1] and Pl.EquipSkill._009.Condition[3] and St.playerStamina < St.playerMaxStamina and St._WholeBodyTimer == 0 then
                Pl.EquipSkill._009.Condition[1] = false
                Pl.EquipSkill._009.Condition[3] = false
                AddChatInfomation(1, Pl.EquipSkill._009.Id, Pl.EquipSkill._009.Condition[1])
            end
        end
        -- 11 Pl_EquipSkill_010 会心撃【属性】
        -- 12 Pl_EquipSkill_011 達人芸
        -- 13 Pl_EquipSkill_012 火属性攻撃強化
        -- 14 Pl_EquipSkill_013 水属性攻撃強化
        -- 15 Pl_EquipSkill_014 氷属性攻撃強化
        -- 16 Pl_EquipSkill_015 雷属性攻撃強化
        -- 17 Pl_EquipSkill_016 龍属性攻撃強化
        -- 18 Pl_EquipSkill_017 毒属性強化
        -- 19 Pl_EquipSkill_018 麻痺属性強化
        -- 20 Pl_EquipSkill_019 睡眠属性強化
        -- 21 Pl_EquipSkill_020 爆破属性強化
        -- 22 Pl_EquipSkill_021 匠
        -- 23 Pl_EquipSkill_022 業物
        -- 24 Pl_EquipSkill_023 弾丸節約

        -- 25 Pl_EquipSkill_024 剛刃研磨
        -- 26 Pl_EquipSkill_025 心眼
        -- 27 Pl_EquipSkill_026 弾導強化
        -- 28 Pl_EquipSkill_027 鈍器使い
        -- 29 Pl_EquipSkill_028 弓溜め段階解放
        -- 30 Pl_EquipSkill_029 集中
        -- 31 Pl_EquipSkill_030 強化持続
        -- 32 Pl_EquipSkill_031 ランナー
        -- 33 Pl_EquipSkill_032 体術
        -- 34 Pl_EquipSkill_033 スタミナ急速回復
        -- 35 Pl_EquipSkill_034 ガード性能
        -- 36 Pl_EquipSkill_035 ガード強化
        -- 37 Pl_EquipSkill_036 攻めの守勢
        if Sd.EquipSkill[Pl.EquipSkill._036.Id] then
            if St._EquipSkill_036_Timer == Pl.EquipSkill._036.Param[1] then
                Pl.EquipSkill._036.Condition[1] = true
                AddChatInfomation(1, Pl.EquipSkill._036.Id, Pl.EquipSkill._036.Condition[1])
            elseif Pl.EquipSkill._036.Condition[1] and St._EquipSkill_036_Timer == 0 then
                Pl.EquipSkill._036.Condition[1] = false
                AddChatInfomation(1, Pl.EquipSkill._036.Id, Pl.EquipSkill._036.Condition[1])
            end
        end
        -- 38 Pl_EquipSkill_037 抜刀術【技】
        -- 39 Pl_EquipSkill_038 抜刀術【力】
        -- 40 Pl_EquipSkill_039 納刀術
        -- 41 Pl_EquipSkill_040 ＫＯ術
        -- 42 Pl_EquipSkill_041 スタミナ奪取
        -- 43 Pl_EquipSkill_042 滑走強化
        if Sd.EquipSkill[Pl.EquipSkill._042.Id] then
            if not Pl.EquipSkill._042.Condition[1] and St._SlidingPowerupTimer == Pl.EquipSkill._042.Param[1] then
                Pl.EquipSkill._042.Condition[1] = true
                AddChatInfomation(1, Pl.EquipSkill._042.Id, Pl.EquipSkill._042.Condition[1])
            elseif Pl.EquipSkill._042.Condition[1] and St._SlidingPowerupTimer == 0 then
                Pl.EquipSkill._042.Condition[1] = false
                AddChatInfomation(1, Pl.EquipSkill._042.Id, Pl.EquipSkill._042.Condition[1])
            end
        end
        -- 44 Pl_EquipSkill_043 笛吹き名人
        -- 45 Pl_EquipSkill_044 砲術
        -- 46 Pl_EquipSkill_045 砲弾装填
        -- 47 Pl_EquipSkill_046 特殊射撃強化
        -- 48 Pl_EquipSkill_047 通常弾・連射矢強化
        -- 49 Pl_EquipSkill_048 貫通弾・貫通矢強化
        -- 50 Pl_EquipSkill_049 散弾・拡散矢強化
        -- 51 Pl_EquipSkill_050 装填拡張
        -- 52 Pl_EquipSkill_051 装填速度
        -- 53 Pl_EquipSkill_052 反動軽減
        -- 54 Pl_EquipSkill_053 ブレ抑制
        -- 55 Pl_EquipSkill_054 速射強化
        -- 56 Pl_EquipSkill_055 防御
        -- 57 Pl_EquipSkill_056 精霊の加護
        -- 58 Pl_EquipSkill_057 体力回復量ＵＰ
        -- 59 Pl_EquipSkill_058 回復速度
        -- 60 Pl_EquipSkill_059 早食い
        -- 61 Pl_EquipSkill_060 耳栓
        -- 62 Pl_EquipSkill_061 風圧耐性
        -- 63 Pl_EquipSkill_062 耐震
        -- 64 Pl_EquipSkill_063 泡沫の舞
        -- 65 Pl_EquipSkill_064 回避性能
        -- 66 Pl_EquipSkill_065 回避距離ＵＰ
        -- 67 Pl_EquipSkill_066 火耐性
        -- 68 Pl_EquipSkill_067 水耐性
        -- 69 Pl_EquipSkill_068 氷耐性
        -- 70 Pl_EquipSkill_069 雷耐性
        -- 71 Pl_EquipSkill_070 龍耐性
        -- 72 Pl_EquipSkill_071 属性やられ耐性
        -- 73 Pl_EquipSkill_072 毒耐性
        -- 74 Pl_EquipSkill_073 麻痺耐性
        -- 75 Pl_EquipSkill_074 睡眠耐性
        -- 76 Pl_EquipSkill_075 気絶耐性
        -- 77 Pl_EquipSkill_076 泥雪耐性
        -- 78 Pl_EquipSkill_077 爆破やられ耐性
        -- 79 Pl_EquipSkill_078 植生学
        -- 80 Pl_EquipSkill_079 地質学
        -- 81 Pl_EquipSkill_080 破壊王
        -- 82 Pl_EquipSkill_081 捕獲名人
        -- 83 Pl_EquipSkill_082 剥ぎ取り名人
        -- 84 Pl_EquipSkill_083 幸運
        -- 85 Pl_EquipSkill_084 砥石使用高速化
        -- 86 Pl_EquipSkill_085 ボマー
        -- 87 Pl_EquipSkill_086 キノコ大好き
        -- 88 Pl_EquipSkill_087 アイテム使用強化
        -- 89 Pl_EquipSkill_088 広域化
        -- 90 Pl_EquipSkill_089 満足感

        -- 91 Pl_EquipSkill_090 火事場力
        if Sd.EquipSkill[Pl.EquipSkill._090.Id] then
            if not Pl.EquipSkill._090.Condition[1] and not Pl.KitchenSkill._002.Condition[1] and St.playerHealth <= St.playerMaxHealth * Pl.EquipSkill._090.Param[1] then
                Pl.EquipSkill._090.Condition[1] = true
                AddChatInfomation(1, Pl.EquipSkill._090.Id, Pl.EquipSkill._090.Condition[1])
            elseif Pl.EquipSkill._090.Condition[1] and St.playerHealth > St.playerMaxHealth * Pl.EquipSkill._090.Param[1] then
                Pl.EquipSkill._090.Condition[1] = false
                AddChatInfomation(1, Pl.EquipSkill._090.Id, Pl.EquipSkill._090.Condition[1])
            end
        end
        -- 92 Pl_EquipSkill_091 不屈
        if St.isEquipSkill091 then
            if Sd.EquipSkill[Pl.EquipSkill._091.Id] then
                if St._DieCount - Pl.EquipSkill._091.Param[1] > 0 or (St._DieCount > 0 and not Pl.EquipSkill._091.Condition[1]) then
                    Pl.EquipSkill._091.Param[1] = St._DieCount
                    Pl.EquipSkill._091.Condition[1] = true
                    AddChatInfomation(1, Pl.EquipSkill._091.Id, Pl.EquipSkill._091.Condition[1])
                elseif Pl.EquipSkill._091.Condition[1] and St._DieCount - Pl.EquipSkill._091.Param[1] < 0 then
                    Pl.EquipSkill._091.Condition[1] = false
                    AddChatInfomation(1, Pl.EquipSkill._091.Id, Pl.EquipSkill._091.Condition[1])
                end
            elseif not Sd.EquipSkill[Pl.EquipSkill._091.Id] and Pl.EquipSkill._091.Condition[1] then
                Pl.EquipSkill._091.Condition[1] = false
                AddChatInfomation(1, Pl.EquipSkill._091.Id, Pl.EquipSkill._091.Condition[1])
            end
        end
        -- 93 Pl_EquipSkill_092 ひるみ軽減
        -- 94 Pl_EquipSkill_093 ジャンプ鉄人
        -- 95 Pl_EquipSkill_094 剥ぎ取り鉄人
        -- 96 Pl_EquipSkill_095 腹減り耐性
        -- 97 Pl_EquipSkill_096 飛び込み
        -- 98 Pl_EquipSkill_097 陽動
        -- 99 Pl_EquipSkill_098 乗り名人
        -- 100 Pl_EquipSkill_099 霞皮の恩恵
        -- 101 Pl_EquipSkill_100 鋼殻の恩恵
        -- 102 Pl_EquipSkill_101 炎鱗の恩恵
        -- 103 Pl_EquipSkill_102 龍気活性
        if Sd.EquipSkill[Pl.EquipSkill._102.Id] then
            if not Pl.EquipSkill._102.Condition[1] and St.playerHealth <= St.playerMaxHealth * Pl.EquipSkill._102.Param[Sd.EquipSkill[Pl.EquipSkill._102.Id]:get_field("SkillLv")] then
                Pl.EquipSkill._102.Condition[1] = true
                AddChatInfomation(1, Pl.EquipSkill._102.Id, Pl.EquipSkill._102.Condition[1])
            elseif Pl.EquipSkill._102.Condition[1] and St.playerHealth > St.playerMaxHealth * Pl.EquipSkill._102.Param[Sd.EquipSkill[Pl.EquipSkill._102.Id]:get_field("SkillLv")] then
                Pl.EquipSkill._102.Condition[1] = false
                AddChatInfomation(1, Pl.EquipSkill._102.Id, Pl.EquipSkill._102.Condition[1])
            end
        end
        -- 104 Pl_EquipSkill_103 翔蟲使い
        -- 105 Pl_EquipSkill_104 壁面移動
        -- 106 Pl_EquipSkill_105 逆襲
        if Sd.EquipSkill[Pl.EquipSkill._105.Id] then
            if St._CounterattackPowerupTimer == Pl.EquipSkill._105.Param[1] then
                Pl.EquipSkill._105.Condition[1] = true
                AddChatInfomation(1, Pl.EquipSkill._105.Id, Pl.EquipSkill._105.Condition[1])
            elseif Pl.EquipSkill._105.Condition[1] and St._CounterattackPowerupTimer == 0 then
                Pl.EquipSkill._105.Condition[1] = false
                AddChatInfomation(1, Pl.EquipSkill._105.Id, Pl.EquipSkill._105.Condition[1])
            end
        end
        -- 107 Pl_EquipSkill_106 高速変形
        -- 108 Pl_EquipSkill_107 鬼火纏
        -- 109 Pl_EquipSkill_108 風紋の一致
        -- 110 Pl_EquipSkill_109 雷紋の一致
        -- 111 Pl_EquipSkill_110 風雷合一
        -- 112 Pl_EquipSkill_200 血氣
        -- 113 Pl_EquipSkill_201 伏魔響命
        -- 114 Pl_EquipSkill_202 激昂
        -- 115 Pl_EquipSkill_203 業鎧【修羅】
        -- 116 Pl_EquipSkill_204 災禍転福
        if Sd.EquipSkill[Pl.EquipSkill._204.Id] then
            if not Pl.EquipSkill._204.Condition[1] and St._DisasterTurnPowerUpTimer == Pl.EquipSkill._204.Param[1] then
                Pl.EquipSkill._204.Condition[1] = true
            elseif Pl.EquipSkill._204.Condition[1] and St._DisasterTurnPowerUpTimer == 0 then
                Pl.EquipSkill._204.Condition[1] = false
                AddChatInfomation(1, Pl.EquipSkill._204.Id, Pl.EquipSkill._204.Condition[1])
            end
        end
        -- 117 Pl_EquipSkill_205 狂竜症【蝕】
        -- 118 Pl_EquipSkill_206 顕如盤石
        if Sd.EquipSkill[Pl.EquipSkill._206.Id] then
            if not Pl.EquipSkill._206.Condition[1] and St._FightingSpiritTimer == Pl.EquipSkill._001.Param[1] then
                Pl.EquipSkill._206.Condition[1] = true
                AddChatInfomation(1, Pl.EquipSkill._206.Id, Pl.EquipSkill._206.Condition[1])
            elseif Pl.EquipSkill._206.Condition[1] and St._FightingSpiritTimer == 0 then
                Pl.EquipSkill._206.Condition[1] = false
                AddChatInfomation(1, Pl.EquipSkill._206.Id, Pl.EquipSkill._206.Condition[1])
            end
        end
        -- 119 Pl_EquipSkill_207 闇討ち
        -- 120 Pl_EquipSkill_208 巧撃
        if Sd.EquipSkill[Pl.EquipSkill._208.Id] then
            if St._EquipSkill208_AtkUpTimer == Pl.EquipSkill._208.Param[Sd.EquipSkill[Pl.EquipSkill._208.Id]:get_field("SkillLv")] then
                Pl.EquipSkill._208.Condition[1] = true
            elseif Pl.EquipSkill._208.Condition[1] and St._EquipSkill208_AtkUpTimer == 0 then
                Pl.EquipSkill._208.Condition[1] = false
                AddChatInfomation(1, Pl.EquipSkill._208.Id, Pl.EquipSkill._208.Condition[1])
            end
        end
        -- 121 Pl_EquipSkill_209 煽衛
        if Sd.EquipSkill[Pl.EquipSkill._209.Id] then
            if not Pl.EquipSkill._209.Condition[1] and St.isHateTarget then
                Pl.EquipSkill._209.Condition[1] = true
            elseif Pl.EquipSkill._209.Condition[1] and not St.isHateTarget then
                Pl.EquipSkill._209.Condition[1] = false
                AddChatInfomation(1, Pl.EquipSkill._209.Id, Pl.EquipSkill._209.Condition[1])
            end
        end
        -- 122 Pl_EquipSkill_210 合気
        -- 123 Pl_EquipSkill_211 供応
        -- 124 Pl_EquipSkill_212 チャージマスター
        -- 125 Pl_EquipSkill_213 攻勢
        -- 126 Pl_EquipSkill_214 チューンアップ
        -- 127 Pl_EquipSkill_215 研磨術【鋭】
        if Sd.EquipSkill[Pl.EquipSkill._215.Id] then
            if St._BrandNewSharpnessAdjustUpTimer == Pl.EquipSkill._215.Param[Sd.EquipSkill[Pl.EquipSkill._215.Id]:get_field("SkillLv")] then
                Pl.EquipSkill._215.Condition[1] = true
            elseif Pl.EquipSkill._215.Condition[1] and St._BrandNewSharpnessAdjustUpTimer == 0 then
                Pl.EquipSkill._215.Condition[1] = false
                AddChatInfomation(1, Pl.EquipSkill._215.Id, Pl.EquipSkill._215.Condition[1])
            end
        end
        -- 128 Pl_EquipSkill_216 刃鱗磨き
        if Sd.EquipSkill[Pl.EquipSkill._216.Id] then
            if St._EquipSkill216_BottleUpTimer == Pl.EquipSkill._216.Param[Sd.EquipSkill[Pl.EquipSkill._216.Id]:get_field("SkillLv")] then
                Pl.EquipSkill._216.Condition[1] = true
            elseif Pl.EquipSkill._216.Condition[1] and St._EquipSkill216_BottleUpTimer == 0 then
                Pl.EquipSkill._216.Condition[1] = false
                AddChatInfomation(1, Pl.EquipSkill._216.Id, Pl.EquipSkill._216.Condition[1])
            end
        end
        -- 129 Pl_EquipSkill_217 壁面移動【翔】
        -- 130 Pl_EquipSkill_218 弱点特効【属性】
        -- 131 Pl_EquipSkill_219 連撃
        -- 132 Pl_EquipSkill_220 根性
        if Sd.EquipSkill[Pl.EquipSkill._220.Id] and not Pl.EquipSkill._220.Condition[1] and St.isHaveSkillGuts then
            Pl.EquipSkill._220.Condition[1] = true
        elseif not Sd.EquipSkill[Pl.EquipSkill._220.Id] and Pl.EquipSkill._220.Condition[1] and not St.isHaveSkillGuts then
            AddChatInfomation(1, Pl.EquipSkill._220.Id, Pl.EquipSkill._220.Condition[1])
            Pl.EquipSkill._220.Condition[1] = false
        end
        -- 133 Pl_EquipSkill_221 疾之息吹
        -- 134 Pl_EquipSkill_222 状態異常確定蓄積
        if Sd.EquipSkill[Pl.EquipSkill._222.Id] then
            if St._EquipSkill222_Timer == Pl.EquipSkill._222.Param[Sd.EquipSkill[Pl.EquipSkill._222.Id]:get_field("SkillLv")] then
                Pl.EquipSkill._222.Condition[1] = true
            elseif Pl.EquipSkill._222.Condition[1] and St._EquipSkill222_Timer == 0 then
                Pl.EquipSkill._222.Condition[1] = false
                AddChatInfomation(1, Pl.EquipSkill._222.Id, Pl.EquipSkill._222.Condition[1])
            end
        end
        -- 135 Pl_EquipSkill_223 剛心
        if Sd.EquipSkill[Pl.EquipSkill._223.Id] then
            if not Pl.EquipSkill._223.Condition[1] and St._EquipSkill223Accumulator == Pl.EquipSkill._223.Param[2][1] then
                Pl.EquipSkill._223.Condition[1] = true
            end
        end
        -- 136 Pl_EquipSkill_224 蓄積時攻撃強化
        -- 137 Pl_EquipSkill_225 狂化
        -- 138 Pl_EquipSkill_226 風纏
        if Sd.EquipSkill[Pl.EquipSkill._226.Id] then
            if not Pl.EquipSkill._226.Condition[1] and St._IsEquipSkill226Enable then
                Pl.EquipSkill._226.Condition[1] = true
                AddChatInfomation(1, Pl.EquipSkill._226.Id, Pl.EquipSkill._226.Condition[1])
            elseif Pl.EquipSkill._226.Condition[1] and not St._IsEquipSkill226Enable then
                Pl.EquipSkill._226.Condition[1] = false
                AddChatInfomation(1, Pl.EquipSkill._226.Id, Pl.EquipSkill._226.Condition[1])
            end
        end
        -- 139 Pl_EquipSkill_227 粉塵纏
        if Sd.EquipSkill[Pl.EquipSkill._227.Id] then
            if not Pl.EquipSkill._227.Condition[1] and St._EquipSkill227State ~= 0 then
                Pl.EquipSkill._227.Condition[1] = true
            elseif Pl.EquipSkill._227.Condition[1] and St._EquipSkill227State == 0 then
                AddChatInfomation(1, Pl.EquipSkill._227.Id, Pl.EquipSkill._227.Condition[1])
                Pl.EquipSkill._227.Condition[1] = false
            end
        end
        -- 140 Pl_EquipSkill_228 冰気錬成
        -- 141 Pl_EquipSkill_229 龍気変換
        if Sd.EquipSkill[Pl.EquipSkill._229.Id] then
            if not Pl.EquipSkill._229.Condition[1] and St._EquipSkill229UseUpFlg then
                Pl.EquipSkill._229.Condition[1] = true
                AddChatInfomation(1, Pl.EquipSkill._229.Id, Pl.EquipSkill._229.Condition[1])
            elseif Pl.EquipSkill._229.Condition[1] and not St._EquipSkill229UseUpFlg then
                Pl.EquipSkill._229.Condition[1] = false
                AddChatInfomation(1, Pl.EquipSkill._229.Id, Pl.EquipSkill._229.Condition[1])
            end
        end
        -- 142 Pl_EquipSkill_230 天衣無崩
        if Sd.EquipSkill[Pl.EquipSkill._230.Id] then
            if not Pl.EquipSkill._230.Condition[1] and St.isActiveEquipSkill230 then
                Pl.EquipSkill._230.Condition[1] = true
            elseif Pl.EquipSkill._230.Condition[1] and not St.isActiveEquipSkill230 then
                Pl.EquipSkill._230.Condition[1] = false
                AddChatInfomation(1, Pl.EquipSkill._230.Id, Pl.EquipSkill._230.Condition[1])
            end
        end
        -- 143 Pl_EquipSkill_231 狂竜症【翔】
        if Sd.EquipSkill[Pl.EquipSkill._231.Id] then
            if not Pl.EquipSkill._231.Condition[1] and St._EquipSkill231_WireNumTimer == Pl.EquipSkill._231.Param[Sd.EquipSkill[Pl.EquipSkill._231.Id]:get_field("SkillLv")] then
                Pl.EquipSkill._231.Condition[1] = true
            elseif Pl.EquipSkill._231.Condition[1] and St._EquipSkill231_WpOffTimer == 0 then
                Pl.EquipSkill._231.Condition[1] = false
                AddChatInfomation(1, Pl.EquipSkill._231.Id, Pl.EquipSkill._231.Condition[1])
            end
        end
        -- 144 Pl_EquipSkill_232 血氣覚醒
        if Sd.EquipSkill[Pl.EquipSkill._232.Id] then
            if not Pl.EquipSkill._232.Condition[1] then
                if St._EquipSkill232Absorption >= Pl.EquipSkill._232.Param[1][Sd.EquipSkill[Pl.EquipSkill._232.Id]:get_field("SkillLv")] and St._EquipSkill232Timer == Pl.EquipSkill._232.Param[3][Sd.EquipSkill[Pl.EquipSkill._232.Id]:get_field("SkillLv")] then
                    Pl.EquipSkill._232.Condition[1] = true
                elseif St._EquipSkill232Absorption >= Pl.EquipSkill._232.Param[2][Sd.EquipSkill[Pl.EquipSkill._232.Id]:get_field("SkillLv")] and St._EquipSkill232Timer == Pl.EquipSkill._232.Param[4][Sd.EquipSkill[Pl.EquipSkill._232.Id]:get_field("SkillLv")] then
                    Pl.EquipSkill._232.Condition[1] = true
                end
            elseif Pl.EquipSkill._232.Condition[1] and St._EquipSkill232Timer == 0 then
                Pl.EquipSkill._232.Condition[1] = false
                AddChatInfomation(1, Pl.EquipSkill._232.Id, Pl.EquipSkill._232.Condition[1])
            end
        end
        -- 145 Pl_EquipSkill_233 奮闘
        -- 146 Pl_EquipSkill_234 緩衝
        -- 147 Pl_EquipSkill_235 激励
        -- 148 Pl_EquipSkill_236
        -- 149 Pl_EquipSkill_237
        -- 150 Pl_EquipSkill_238
        -- 151 Pl_EquipSkill_239
        -- 152 Pl_EquipSkill_240
        -- 153 Pl_EquipSkill_241
        -- 154 Pl_EquipSkill_242
        -- 155 Pl_EquipSkill_243
        -- 156 Pl_EquipSkill_244
        -- 157 Pl_EquipSkill_245
        -- 158 Pl_EquipSkill_246
        -- 159 Pl_EquipSkill_247
        -- 160 Pl_EquipSkill_248
        -- 161 Pl_EquipSkill_249
        -- 162 Pl_EquipSkill_250
        -- 163 Pl_EquipSkill_251
        -- 164 Pl_EquipSkill_252
        -- 165 Pl_EquipSkill_253
        -- 166 Pl_EquipSkill_254
        -- 167 Pl_EquipSkill_255
        -- 148 PlEquipSkillId_Max
        -- 148 Max
        -- 149 Error


        -- 0 Pl_KitchenSkill_None
        -- 1 Pl_KitchenSkill_000 おだんご研磨術
        -- 2 Pl_KitchenSkill_001 おだんご乗り上手
        -- 3 Pl_KitchenSkill_002 おだんご火事場力
        if Sd.KitchenSkill[Pl.KitchenSkill._002.Id] then
            if not Pl.KitchenSkill._002.Condition[1] and St.playerHealth <= Pl.KitchenSkill._002.Param[Sd.KitchenSkill[Pl.KitchenSkill._002.Id]:get_field("_SkillLv")] then
                Pl.KitchenSkill._002.Condition[1] = true
                AddChatInfomation(2, Pl.KitchenSkill._002.Id, Pl.KitchenSkill._002.Condition[1])
            elseif Pl.KitchenSkill._002.Condition[1] and St.playerHealth > Pl.KitchenSkill._002.Param[Sd.KitchenSkill[Pl.KitchenSkill._002.Id]:get_field("_SkillLv")] then
                Pl.KitchenSkill._002.Condition[1] = false
                AddChatInfomation(2, Pl.KitchenSkill._002.Id, Pl.KitchenSkill._002.Condition[1])
            end
        end
        -- 4 Pl_KitchenSkill_003 おだんご解体術【小】
        -- 5 Pl_KitchenSkill_004 おだんご解体術【大】
        -- 6 Pl_KitchenSkill_005 おだんご医療術【小】
        -- 7 Pl_KitchenSkill_006 おだんご医療術【大】
        -- 8 Pl_KitchenSkill_007 おだんご体術
        -- 9 Pl_KitchenSkill_008 おだんご火薬術
        -- 10 Pl_KitchenSkill_009 おだんご特殊攻撃術
        -- 11 Pl_KitchenSkill_010 おだんご防御術【小】
        -- 12 Pl_KitchenSkill_011 おだんご防御術【大】
        -- 13 Pl_KitchenSkill_012 おだんご収穫祭
        -- 14 Pl_KitchenSkill_013 おだんご射撃術
        -- 15 Pl_KitchenSkill_014 おだんご幸運術
        -- 16 Pl_KitchenSkill_015 おだんご激運術
        -- 17 Pl_KitchenSkill_016 おだんごはじかれ上手
        -- 18 Pl_KitchenSkill_017 おだんご弱いの来い！
        -- 19 Pl_KitchenSkill_018 おだんご換算術
        -- 20 Pl_KitchenSkill_019 おだんご暴れ撃ち
        -- 21 Pl_KitchenSkill_020 おだんご壁走り達人
        -- 22 Pl_KitchenSkill_021 おだんごＫＯ術
        -- 23 Pl_KitchenSkill_022 おだんご金運術
        -- 24 Pl_KitchenSkill_023 おだんご砲撃術
        -- 25 Pl_KitchenSkill_024 おだんごド根性
        if Sd.KitchenSkill[Pl.KitchenSkill._024.Id] and not Pl.KitchenSkill._024.Condition[1] and St.isHaveKitchenGuts then
            Pl.KitchenSkill._024.Condition[1] = true
        elseif not Sd.KitchenSkill[Pl.KitchenSkill._024.Id] and Pl.KitchenSkill._024.Condition[1] and not St.isHaveKitchenGuts then
            AddChatInfomation(2, Pl.KitchenSkill._024.Id, Pl.KitchenSkill._024.Condition[1])
            Pl.KitchenSkill._024.Condition[1] = false
        end
        -- 26 Pl_KitchenSkill_025 おだんご免疫術
        -- 27 Pl_KitchenSkill_026 おだんごオトモ指導術
        -- 28 Pl_KitchenSkill_027 おだんご短期催眠術

        -- 29 Pl_KitchenSkill_028 おだんごふんばり術
        -- 30 Pl_KitchenSkill_029 おだんごビルドアップ
        -- 31 Pl_KitchenSkill_030 おだんご報酬金保険

        -- 32 Pl_KitchenSkill_031 おだんご復活術

        -- 33 Pl_KitchenSkill_032 おだんご環境生物召喚
        -- 34 Pl_KitchenSkill_033 おだんご投擲術
        -- 35 Pl_KitchenSkill_034 おだんご火耐性【小】
        -- 36 Pl_KitchenSkill_035 おだんご火耐性【大】
        -- 37 Pl_KitchenSkill_036 おだんご水耐性【小】
        -- 38 Pl_KitchenSkill_037 おだんご水耐性【大】
        -- 39 Pl_KitchenSkill_038 おだんご雷耐性【小】
        -- 40 Pl_KitchenSkill_039 おだんご雷耐性【大】
        -- 41 Pl_KitchenSkill_040 おだんご氷耐性【小】
        -- 42 Pl_KitchenSkill_041 おだんご氷耐性【大】
        -- 43 Pl_KitchenSkill_042 おだんご龍耐性【小】
        -- 44 Pl_KitchenSkill_043 おだんご龍耐性【大】
        -- 45 Pl_KitchenSkill_044 おだんご採蜜術
        -- 46 Pl_KitchenSkill_045 おだんご腹へらず
        -- 47 Pl_KitchenSkill_046 おだんご鳥寄せの術
        -- 48 Pl_KitchenSkill_047 おだんごぶら下がり術
        -- 49 Pl_KitchenSkill_048 おだんご防護術
        if Sd.KitchenSkill[Pl.KitchenSkill._048.Id] then
            if not Pl.KitchenSkill._048.Condition[1] and St._KitchenSkill048_Damage >= Pl.KitchenSkill._048.Param[1][Sd.KitchenSkill[Pl.KitchenSkill._048.Id]:get_field("_SkillLv")] then
                Pl.KitchenSkill._048.Condition[1] = true
            end
        end
        -- 50 Pl_KitchenSkill_049 おだんご強化延長術
        -- 51 Pl_KitchenSkill_050 おだんご生命力
        -- 52 Pl_KitchenSkill_051 おだんご逃走術
        if Sd.KitchenSkill[Pl.KitchenSkill._051.Id] then
            if St._KitchenSkill051_AtkUpTimer == Pl.KitchenSkill._051.Param[1] then
                Pl.KitchenSkill._051.Condition[1] = true
                AddChatInfomation(2, Pl.KitchenSkill._051.Id, Pl.KitchenSkill._051.Condition[1])
            elseif Pl.KitchenSkill._051.Condition[1] and St._KitchenSkill051_AtkUpTimer == 0 then
                Pl.KitchenSkill._051.Condition[1] = false
                AddChatInfomation(2, Pl.KitchenSkill._051.Id, Pl.KitchenSkill._051.Condition[1])
            end
        end
        -- 53 Pl_KitchenSkill_052 おだんご具足術
        -- 54 Pl_KitchenSkill_053 おだんご疾替え術
        -- 55 Pl_KitchenSkill_054 おだんご絆術
        if Sd.KitchenSkill[Pl.KitchenSkill._054.Id] then
            if St._KitchenSkill054_Timer == Pl.KitchenSkill._054.Param[1] then
                Pl.KitchenSkill._054.Condition[1] = true
            elseif Pl.KitchenSkill._054.Condition[1] and St._KitchenSkill054_Timer == 0 then
                Pl.KitchenSkill._054.Condition[1] = false
                AddChatInfomation(2, Pl.KitchenSkill._054.Id, Pl.KitchenSkill._054.Condition[1])
            end
        end
        -- 56 Pl_KitchenSkill_055 おだんご超回復力
        -- 57 Pl_KitchenSkill_056
        -- 58 Pl_KitchenSkill_057
        -- 59 Pl_KitchenSkill_058
        -- 60 Pl_KitchenSkill_059
        -- 61 Pl_KitchenSkill_060
        -- 62 Pl_KitchenSkill_061
        -- 63 Pl_KitchenSkill_062
        -- 64 Pl_KitchenSkill_063
        -- 57 Max


        -- 0 Concert_000 自分強化
        -- 1 Concert_001 攻撃力UP
        -- 2 Concert_002 防御力UP
        -- 3 Concert_003 会心率UP
        -- 4 Concert_004 属性攻撃力UP
        -- 5 Concert_005 攻撃力＆防御力UP
        -- 6 Concert_006 攻撃力＆会心率UP
        -- 7 Concert_007 のけぞり無効
        -- 8 Concert_008 聴覚保護【小】
        -- 9 Concert_009 聴覚保護【大】
        -- 10 Concert_010 振動無効
        -- 11 Concert_011 風圧無効
        -- 12 Concert_012 気絶無効
        -- 13 Concert_013 全属性やられ無効
        -- 14 Concert_014 精霊王の加護
        -- 15 Concert_015 体力回復【小】
        -- 16 Concert_016 体力回復【大】
        -- 17 Concert_017 解毒＆体力回復【小】
        -- 18 Concert_018 体力継続回復
        -- 19 Concert_019 スタミナ消費軽減
        -- 20 Concert_020 スタミナ回復速度UP
        -- 21 Concert_021 斬れ味消費軽減
        -- 22 Concert_022 地形ダメージ無効
        -- 23 Concert_023 高周衝撃波
        -- 24 Concert_024 音の防壁
        -- 25 Concert_025 気炎の旋律
        -- 26 Concert_026 斬れ味継続回復
        -- 27 Concert_027 斬れ味延長効果
        -- 28 Concert_Max
        -- 28 Concert_Invalid
    end,
    function(retval)
        return retval
    end)


local preDamage      = nil
local postDamage     = nil
local isMasterPlayer = false
local isReduce       = false

sdk.hook(sdk.find_type_definition("snow.player.PlayerQuestBase"):get_method("checkDamage_calcDamage(System.Single, System.Single, snow.player.PlayerDamageInfo, System.Boolean)"),
    function(args)
        isMasterPlayer = sdk.to_managed_object(args[2]):call("isMasterPlayer")

        if not isMasterPlayer then return end

        preDamage = sdk.to_float(args[3])

        if Pl.EquipSkill._223.Condition[1] and St._EquipSkill223Accumulator == 0 then
            preDamage = preDamage * Pl.EquipSkill._223.Param[1][Sd.EquipSkill[Pl.EquipSkill._223.Id]:get_field("SkillLv")]
            Pl.EquipSkill._223.Condition[1] = false
        end
    end,
    function(retval)
        return retval
    end)

sdk.hook(sdk.find_type_definition("snow.player.PlayerQuestBase"):get_method("damageVital(System.Single, System.Boolean, System.Boolean, System.Boolean, System.Boolean, System.Boolean)"),
    function(args)
        postDamage = nil

        if not preDamage then return end

        postDamage = sdk.to_float(args[3])

        if sdk.to_float(args[10]) < 0 then
            if Pl.KitchenSkill._048.Condition[1] then
                preDamage = preDamage * Pl.KitchenSkill._048.Param[2][Sd.KitchenSkill[Pl.KitchenSkill._048.Id]:get_field("_SkillLv")]
                Pl.KitchenSkill._048.Condition[1] = false
            end
        end
    end,
    function(retval)
        if not isMasterPlayer or not postDamage or not preDamage then
            return retval
        end

        if math.abs(preDamage + postDamage) > 0.0001 then
            isReduce = true
        end

        preDamage = nil
    end)

sdk.hook(sdk.find_type_definition("via.wwise.WwiseContainer"):get_method("trigger(System.UInt32, via.GameObject)"),
    function(args)
        if sdk.to_int64(args[2]) == 0x2ACF664E then
            if isReduce then
                isReduce = false
                getChatManager():call("reqAddChatInfomation", UI.MSG.Co[1], GUI_COMMON_MEAL_SKILL_NOTICE)
            end
        end
    end,
    function(retval)
        return retval
    end)


local success, ModUI = pcall(require, "ModOptionsMenu.ModMenuApi")

if success then
    local preLoad
    local filepath = "Improved Skill Notifications/config.json"
    local conf     = json.load_file(filepath) or {}

    local function pairsByKeys(t)
        local keys = {}
        for key in pairs(t) do
            table.insert(keys, key)
        end
        table.sort(keys)
        local index = 0
        return function()
            index = index + 1
            if index <= #keys then
                return index, keys[index], t[keys[index]]
            end
        end
    end

    local function removeCRLF(msg)
        return msg:gsub("<COL[^>]*>{0}</COL[^>]*>[\n\r]", "%1 "):gsub("[\n\r]<COL[^>]*>{0}</COL[^>]*>", " %1"):gsub("[\n\r]", "")
    end

    local function rgb2Hex(r, g, b, str)
        return ("<COLOR %02X%02X%02X>%s</COLOR>"):format(r, g, b, str)
    end

    local function normTbl(tbl, base)
        local result = {}

        for i, _, v in pairsByKeys(base) do
            local find
            local defaultTable = { v.Enum, v.Notice[1], v.Notice[2], 1 }

            if tbl then
                for _, w in ipairs(tbl) do
                    if not find and w[1] == v.Enum then
                        if #w ~= 4 then
                            w = defaultTable
                        end
                        table.insert(result, w)
                        find = true
                    end
                end
            end
            if not find then
                table.insert(result, i, defaultTable)
            end
        end

        return result
    end

    local function saveConfig()
        fs.write(filepath, json.dump_string(conf))
    end

    local function set()
        if Pl then
            conf.EquipSkill   = normTbl(conf.EquipSkill, Pl.EquipSkill)
            conf.KitchenSkill = normTbl(conf.KitchenSkill, Pl.KitchenSkill)

            -- Create a copy with table.unpack() to avoid referencing the same table
            local t           = { 0xFF, 0xFF, 0xFF, 1 }
            conf.COL          = conf.COL or {}
            while #conf.COL ~= 2 do
                if #conf.COL > 2 then
                    table.remove(conf.COL, #conf.COL)
                end
                if #conf.COL < 2 then
                    table.insert(conf.COL, { table.unpack(t) })
                end
            end
            for _, v in ipairs(conf.COL) do
                if #v < 4 then
                    v = { table.unpack(t) }
                end
            end

            saveConfig()

            preLoad = true
        end
        return preLoad
    end

    local function getSkillSettingsOptionNames(index)
        local PlSkill
        if index == 1 then
            PlSkill = Pl.EquipSkill
        elseif index == 2 then
            PlSkill = Pl.KitchenSkill
        end
        UI.Options.SkillSettings.optionNames[index] = {}
        for i, _, v in pairsByKeys(PlSkill) do
            UI.Options.SkillSettings.optionNames[index][i] = {}
            if v.Notice[1] then
                table.insert(UI.Options.SkillSettings.optionNames[index][i], UI.Options.SkillSettings.msg[2])
            end
            if v.Notice[2] then
                table.insert(UI.Options.SkillSettings.optionNames[index][i], UI.Options.SkillSettings.msg[3])
            end
            if UI.Options.SkillSettings.optionNames[index][i] then
                table.insert(UI.Options.SkillSettings.optionNames[index][i], UI.Options.SkillSettings.msg[4])
                if #UI.Options.SkillSettings.optionNames[index][i] == 3 then
                    table.insert(UI.Options.SkillSettings.optionNames[index][i], 1, UI.Options.SkillSettings.msg[1])
                end
            end
        end
    end

    local function getSkillSettings(index)
        local Header, getSkillId, getSkillName, confSkill, SdSkill
        if index == 1 then
            Header       = UI.Header.EquipSkill
            getSkillId   = getPlEquipSkillId
            getSkillName = getEquipSkillName
            confSkill    = conf.EquipSkill
            SdSkill      = Sd.EquipSkill
        elseif index == 2 then
            Header       = UI.Header.KitchenSkill
            getSkillId   = getPlKitchenSkillId
            getSkillName = getKitchenSkillName
            confSkill    = conf.KitchenSkill
            SdSkill      = Sd.KitchenSkill
        end
        ModUI.Header(Header.text)
        for i, v in ipairs(confSkill) do
            local id = getSkillId(v[1])
            if v[4] > #UI.Options.SkillSettings.optionNames[index][i] then
                v[4] = 1
                saveConfig()
            end
            UI.Options.SkillSettings.curValue[i] = v[4]
            UI.Options.SkillSettings.label = getSkillName(nil, id)
            if UI.Options.SkillSettings.curValue[i] ~= 1 then
                UI.Options.SkillSettings.label = ("<COLOR FFE29D>%s</COLOR>"):format(UI.Options.SkillSettings.label)
            end

            if not UI.Options.EquipSkills.isFilter or SdSkill[id] then
                UI.Options.SkillSettings.wasChanged, UI.Options.SkillSettings.newIndex = ModUI.Options(UI.Options.SkillSettings.label, UI.Options.SkillSettings.curValue[i], UI.Options.SkillSettings.optionNames[index][i], UI.Options.SkillSettings.optionMessages, UI.Options.SkillSettings.toolTip, UI.Options.SkillSettings.isImmediateUpdate)
                if UI.Options.SkillSettings.wasChanged then
                    UI.Options.SkillSettings.curValue[i] = UI.Options.SkillSettings.newIndex

                    if UI.Options.SkillSettings.optionNames[index][i][UI.Options.SkillSettings.curValue[i]] == UI.Options.SkillSettings.msg[2] then
                        v[2] = true
                        v[3] = false
                    elseif UI.Options.SkillSettings.optionNames[index][i][UI.Options.SkillSettings.curValue[i]] == UI.Options.SkillSettings.msg[3] then
                        v[2] = false
                        v[3] = true
                    elseif UI.Options.SkillSettings.optionNames[index][i][UI.Options.SkillSettings.curValue[i]] == UI.Options.SkillSettings.msg[4] then
                        v[2] = false
                        v[3] = false
                    elseif UI.Options.SkillSettings.optionNames[index][i][UI.Options.SkillSettings.curValue[i]] == UI.Options.SkillSettings.msg[1] then
                        v[2] = true
                        v[3] = true
                    end
                    v[4] = UI.Options.SkillSettings.curValue[i]

                    saveConfig()
                end
            end
        end
    end

    local function getColorSettings()
        for i, v in ipairs(conf.COL) do
            UI.Options.COLOR.curValue[i] = v[4]

            UI.Options.COLOR.wasChanged, UI.Options.COLOR.newIndex = ModUI.Options(UI.Options.COLOR.label[i], UI.Options.COLOR.curValue[i], UI.Options.COLOR.optionNames, UI.Options.COLOR.optionMessages, UI.Options.COLOR.toolTip, UI.Options.COLOR.isImmediateUpdate)
            if UI.Options.COLOR.wasChanged then
                UI.Options.COLOR.curValue[i] = UI.Options.COLOR.newIndex
                v[4] = UI.Options.COLOR.curValue[i]
                saveConfig()
            end

            if UI.Options.COLOR.curValue[i] == 2 then
                UI.Options.COLOR.label[i] = removeCRLF(UI.MSG.Pl[i]):gsub("{0}", rgb2Hex(v[1], v[2], v[3], getMessageByName("EnemyIndex112_MR")))
                ModUI.SetIndent(18)

                for j = 1, #UI.Slider.label do
                    UI.Slider.curValue[i] = { [j] = v[j] }

                    UI.Slider.wasChanged, UI.Slider.newValue = ModUI.Slider(UI.Slider.label[j], UI.Slider.curValue[i][j], UI.Slider.min, UI.Slider.max, UI.Slider.toolTip, UI.Slider.isImmediateUpdate)
                    if UI.Slider.wasChanged then
                        UI.Slider.curValue[i][j] = UI.Slider.newValue
                        v[j] = UI.Slider.curValue[i][j]
                        saveConfig()
                    end
                end

                ModUI.SetIndent(0)
            elseif UI.Options.COLOR.curValue[i] == 1 then
                UI.Options.COLOR.label[i] = removeCRLF(UI.MSG.Pl[i]):gsub("{0}", getMessageByName("EnemyIndex112_MR"))
            end
        end
    end

    ModUI.OnMenu(UI.OnMenu.name, UI.OnMenu.description, function()
        if ChangedLanguage() then
            getSkillSettingsOptionNames(1)
            getSkillSettingsOptionNames(2)
        end

        if not getPlayerListPrivate(getPlayerManager(), getMasterPlayerID(getPlayerManager())) then
            ModUI.Label(UI.Label.label, UI.Label.displayValue, UI.Label.toolTip)
            return
        end

        if not preLoad then
            if not set() then
                return
            end
            getSkillSettingsOptionNames(1)
            getSkillSettingsOptionNames(2)
        end

        UI.Options.Selector.wasChanged, UI.Options.Selector.newIndex = ModUI.Options(UI.Options.Selector.label, UI.Options.Selector.curValue, UI.Options.Selector.optionNames, UI.Options.Selector.optionMessages, UI.Options.Selector.toolTip, UI.Options.Selector.isImmediateUpdate)
        if UI.Options.Selector.wasChanged then
            UI.Options.Selector.curValue = UI.Options.Selector.newIndex
        end

        ModUI.Header()

        if UI.Options.Selector.curValue == 1 then
            UI.Options.EquipSkills.wasChanged, UI.Options.EquipSkills.newIndex = ModUI.Options(UI.Options.EquipSkills.label, UI.Options.EquipSkills.curValue, UI.Options.EquipSkills.optionNames, UI.Options.EquipSkills.optionMessages, UI.Options.EquipSkills.toolTip, UI.Options.EquipSkills.isImmediateUpdate)
            if UI.Options.EquipSkills.wasChanged then
                UI.Options.EquipSkills.curValue = UI.Options.EquipSkills.newIndex

                if UI.Options.EquipSkills.curValue == 2 then
                    UI.Options.EquipSkills.isFilter = true
                else
                    UI.Options.EquipSkills.isFilter = false
                end
            end

            getSkillSettings(1)
            getSkillSettings(2)
        elseif UI.Options.Selector.curValue == 2 then
            getColorSettings()
        end
    end)

    local function skip(index, args)
        local confSkill, getSkillName, getPlSkillId
        if index == 1 then
            confSkill    = conf.EquipSkill
            getSkillName = getEquipSkillName
            getPlSkillId = getPlEquipSkillId
        elseif index == 2 then
            confSkill    = conf.KitchenSkill
            getSkillName = getKitchenSkillName
            getPlSkillId = getPlKitchenSkillId
        end

        local preMessage = sdk.to_managed_object(args[3]):call("ToString")

        for _, v in ipairs(confSkill) do
            for i, w in ipairs(conf.COL) do
                local id = getPlSkillId(v[1])
                local skillName = getSkillName(nil, id)
                local postMessage

                if index == 2 and (id == 31 or id == 32) then
                    postMessage = UI.MSG.Ot[1]
                else
                    postMessage = UI.MSG.Pl[i]
                end
                postMessage = postMessage:gsub("{0}", skillName)

                if preMessage == postMessage then
                    if not v[i + 1] then
                        return true
                    end
                    if w[4] == 2 then
                        args[3] = sdk.to_ptr(sdk.create_managed_string(postMessage:gsub("<COL[^>]*>{0}</COL[^>]*>", skillName):gsub(skillName, rgb2Hex(w[1], w[2], w[3], skillName))))
                    end
                    break
                end
            end
        end
    end

    sdk.hook(sdk.find_type_definition("snow.gui.ChatManager"):get_method("reqAddChatInfomation"),
        function(args)
            if conf.COL and conf.EquipSkill and conf.KitchenSkill then
                if skip(1, args) or skip(2, args) then
                    return sdk.PreHookResult.SKIP_ORIGINAL
                end
            end
        end,
        function(retval)
            return retval
        end)
end