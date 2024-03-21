#pragma once

#include "Utils/Sdk.hpp"

namespace Namespaces
{
    namespace mhrise
    {
        void initialize();

        namespace snow::player::PlayerLobbyBase
        {
            inline sdk::REMethodDefinitionEx<bool, sdk::VMContext *, ::REManagedObject *, uint32_t> *isLobbyCommonTag252656;
        }

        namespace snow::gui::COMMON
        {
            inline sdk::REFieldEx<uint32_t, true> *GUI_COMMON_NOTICE_SIDE_OPEN;
        }

        namespace via::Behavior
        {
            inline sdk::ReflectionPropertyEx<bool> *Enabled;
        }

        namespace snow::player::EquipSkill_223
        {
            inline sdk::REFieldEx<float> *DamageReduceLv1;
            inline sdk::REFieldEx<float> *DamageReduceLv2;
        }

        namespace snow::data::DataDef::PlKitchenSkillId
        {
            inline sdk::REFieldEx<uint32_t, true> *Pl_KitchenSkill_002;
            inline sdk::REFieldEx<uint32_t, true> *Pl_KitchenSkill_024;
            inline sdk::REFieldEx<uint32_t, true> *Pl_KitchenSkill_028;
            inline sdk::REFieldEx<uint32_t, true> *Pl_KitchenSkill_048;
            inline sdk::REFieldEx<uint32_t, true> *Pl_KitchenSkill_051;
            inline sdk::REFieldEx<uint32_t, true> *Pl_KitchenSkill_052;
            inline sdk::REFieldEx<uint32_t, true> *Pl_KitchenSkill_054;
        }

        namespace snow::quest::QuestType
        {
            inline sdk::REFieldEx<uint32_t, true> *TOUR;
            inline sdk::REFieldEx<uint32_t, true> *HYAKURYU;
        }

        namespace snow::player::PlayerIndex
        {
            inline sdk::REFieldEx<uint8_t, true> *Pl3;
            inline sdk::REFieldEx<uint8_t, true> *Max;
        }

        namespace snow::player::PlayerBase::PlBaseActionFlag
        {
            inline sdk::RETypeDefinition *RETypeDefinition;

            inline sdk::REFieldEx<int32_t, true> *IsWholeBodyTime;
            inline sdk::REFieldEx<int32_t, true> *IsHornWallHyperArmor;
            inline sdk::REFieldEx<int32_t, true> *EquipSkill227_TriggerAttack;
            inline sdk::REFieldEx<int32_t, true> *EquipSkill227_TriggerDamage;
        }

        namespace snow::player::PlayerSkillList::SkillEndFlags
        {
            inline sdk::RETypeDefinition *RETypeDefinition;

            inline sdk::REFieldEx<int32_t, true> *Kitchen_024;
            inline sdk::REFieldEx<int32_t, true> *Equip_220;
        }

        namespace snow::BitSetFlagBase
        {
            inline sdk::REMethodDefinitionEx<bool, sdk::VMContext *, ::REManagedObject *, uint32_t> *isOn11030;
        }

        namespace snow::player::PlayerManager
        {
            inline sdk::REFieldEx<::REManagedObject *> *PlayerUserDataSkillParameter;
        }

        namespace snow::player::PlayerQuestBase
        {
            inline sdk::REFieldEx<::REManagedObject *> *PlayerUserDataQuestCommon;
            inline sdk::REFieldEx<::REManagedObject *> *DamageReflex_b;
            inline sdk::REFieldEx<float> *EquipSkill_036_Timer;
            inline sdk::REFieldEx<bool> *IsGuardPrevFrame;
            inline sdk::REFieldEx<bool> *EquipSkill229UseUpFlg;
            inline sdk::REFieldEx<uint16_t> *EquipSkill230Lv;
            inline sdk::REFieldEx<bool> *EquipSkill230DamageReduce;

            inline sdk::REMethodDefinitionEx<bool, sdk::VMContext *, ::REManagedObject *> *isActiveEquipSkill230400590;
        }

        namespace snow::player::Bow
        {
            inline sdk::REFieldEx<float> *EquipSkill216_BottleUpTimer;
        }

        namespace snow::player::Situation
        {
            inline sdk::REFieldEx<uint32_t, true> *ReceiveKitchen052;
        }

        namespace snow::player::PlayerData
        {
            inline sdk::REFieldEx<::REManagedObject *> *_vitalContext;
            inline sdk::REFieldEx<int32_t> *_r_Vital;
            inline sdk::REFieldEx<float> *SlidingTimer;
            inline sdk::REFieldEx<float> *SlidingPowerupTimer;
            inline sdk::REFieldEx<float> *CounterattackPowerupTimer;
            inline sdk::REFieldEx<uint32_t> *DieCount;
            inline sdk::REFieldEx<bool> *IsEnable_KitchenSkill048_Reduce;
            inline sdk::REFieldEx<float> *KitchenSkill051_AtkUpTimer;
            inline sdk::REFieldEx<float> *KitchenSkill054_Timer;
            inline sdk::REFieldEx<float> *DisasterTurnPowerUpTimer;
            inline sdk::REFieldEx<float> *EquipSkill208_AtkUpTimer;
            inline sdk::REFieldEx<bool> *EquipSkill223DamageReduce;
            inline sdk::REFieldEx<bool> *HornMusicDamageReduce;
            inline sdk::REFieldEx<float> *EquipSkill232Absorption;
            inline sdk::REFieldEx<float> *EquipSkill232Timer;
        }

        namespace snow::data::DataShortcut
        {
            inline sdk::REMethodDefinitionEx<::SystemString *, sdk::VMContext *, uint8_t> *getName249386;
            inline sdk::REMethodDefinitionEx<::SystemString *, sdk::VMContext *, uint32_t> *getName249402;
        }

        namespace snow::gui::ChatManager
        {
            inline sdk::REMethodDefinitionEx<void, sdk::VMContext *, ::REManagedObject *, ::SystemString *, uint32_t> *reqAddChatInfomation244588;
        }

        namespace snow::hit::DamageType
        {
            inline sdk::REFieldEx<int32_t, true> *None;
        }

        namespace snow::player::PlayerSkillList
        {
            inline sdk::REMethodDefinitionEx<bool, sdk::VMContext *, ::REManagedObject *, uint8_t, uint32_t> *hasSkill208056;
            inline sdk::REMethodDefinitionEx<uint32_t, sdk::VMContext *, ::REManagedObject *, uint32_t> *getKitchenSkillLv208058;
            inline sdk::REMethodDefinitionEx<::REManagedObject *, sdk::VMContext *, ::REManagedObject *, uint8_t> *getSkillData208060;
        }

        namespace snow::player::EquipSkill_232
        {
            inline sdk::REFieldEx<::REManagedObject *> *SkillLv1;
            inline sdk::REFieldEx<::REManagedObject *> *SkillLv2;
            inline sdk::REFieldEx<::REManagedObject *> *SkillLv3;
        }

        namespace snow::player::PlayerDamageInfo
        {
            inline sdk::REFieldEx<int32_t> *damage_type;
        }

        namespace via::dve::DeviceContext_System_Single
        {
            inline sdk::REMethodDefinitionEx<float, sdk::VMContext *, ::REManagedObject *> *read205342;
        }

        namespace snow::player::PlayerWeaponType
        {
            inline sdk::REFieldEx<int32_t, true> *HeavyBowgun;
        }

        namespace snow::player::EquipSkillParameter
        {
            inline sdk::REFieldEx<float> *EquipSkill_042_SlidingTime;
            inline sdk::REFieldEx<::REManagedObject *> *EquipSkill_223;
            inline sdk::REFieldEx<float> *EquipSkill_230_ReduceDamageRate;
            inline sdk::REFieldEx<::REManagedObject *> *EquipSkill_232;
        }

        namespace snow::player::PlayerBase
        {
            inline sdk::REFieldEx<uint8_t> *PlayerIndex;
            inline sdk::REFieldEx<::REManagedObject *> *_refPlayerData;
            inline sdk::REFieldEx<::REManagedObject *> *_refPlayerSkillList;
            inline sdk::REFieldEx<int32_t> *_playerWeaponType;
            inline sdk::REFieldEx<float> *SharpnessGaugeBoostTimer;
            inline sdk::REFieldEx<::REManagedObject *> *RefPlayerInput_b;
            inline sdk::REFieldEx<::REManagedObject *> *RefPlayerAIControl_b;
            inline sdk::REFieldEx<uint32_t> *HunterWireSkill231Num_b;
            inline sdk::REFieldEx<::REManagedObject *> *PlBaseActionFlags_b;
            inline sdk::REFieldEx<bool> *IsEnableEquipSkill225;

            inline sdk::REMethodDefinitionEx<bool, sdk::VMContext *, ::REManagedObject *> *isMaster597332;
            inline sdk::REMethodDefinitionEx<bool, sdk::VMContext *, ::REManagedObject *> *isPredicamentPowerUp597588;
            inline sdk::REMethodDefinitionEx<bool, sdk::VMContext *, ::REManagedObject *> *isDebuffState597593;
            inline sdk::REMethodDefinitionEx<bool, sdk::VMContext *, ::REManagedObject *> *isKitchenSkillPredicamentPowerUp597616;
        }

        namespace snow::player::PlayerCondition
        {
            inline sdk::REFieldEx<uint64_t> *_common;
            inline sdk::REFieldEx<uint64_t> *_commonOld;
        }

        namespace snow::QuestManager
        {
            inline sdk::REFieldEx<::REManagedObject *> *ActiveQuestData;
            inline sdk::REFieldEx<uint32_t> *QuestType;
        }

        namespace snow::player::OdangoSkillParameter
        {
            inline sdk::REFieldEx<float> *KitchenSkill_028_Lv3;
            inline sdk::REFieldEx<float> *KitchenSkill_028_Lv4;
            inline sdk::REFieldEx<float> *KitchenSkill_048_Lv1_Reduce;
            inline sdk::REFieldEx<float> *KitchenSkill_048_Lv2_Reduce;
            inline sdk::REFieldEx<float> *KitchenSkill_048_Lv3_Reduce;
            inline sdk::REFieldEx<float> *KitchenSkill_048_Lv4_Reduce;
            inline sdk::REFieldEx<float> *KitchenSkill_052_Lv1;
            inline sdk::REFieldEx<float> *KitchenSkill_052_Lv2;
            inline sdk::REFieldEx<float> *KitchenSkill_052_Lv3;
            inline sdk::REFieldEx<float> *KitchenSkill_052_Lv4;
        }

        namespace via::Component
        {
            inline sdk::ReflectionPropertyEx<::REManagedObject *> *GameObject;
        }

        namespace snow::player::EquipSkill_232_LvParam
        {
            inline sdk::REFieldEx<float> *Absorption_Lv1;
            inline sdk::REFieldEx<float> *Absorption_Lv2;
        }

        namespace snow::player::DamageReflexInfo::Type
        {
            inline sdk::REFieldEx<int32_t, true> *KitchenSkill_051_Dive;
        }

        namespace snow::player::PlayerSkillData
        {
            inline sdk::REFieldEx<uint32_t> *SkillLv;
        }

        namespace via::gui::message
        {
            inline sdk::REMethodDefinitionEx<::SystemString *, sdk::VMContext *, std::array<uint64_t, 2> *> *get778345;
            inline sdk::REMethodDefinitionEx<void, std::array<uint64_t, 2> *, sdk::VMContext *, ::SystemString *> *getGuidByName778372;
        }

        namespace snow::player::PlayerUserDataQuestCommon
        {
            inline sdk::REFieldEx<float> *HornMusicDamageReduce;
        }

        namespace snow::data::DataDef::PlEquipSkillId
        {
            inline sdk::REFieldEx<uint8_t, true> *Pl_EquipSkill_001;
            inline sdk::REFieldEx<uint8_t, true> *Pl_EquipSkill_002;
            inline sdk::REFieldEx<uint8_t, true> *Pl_EquipSkill_003;
            inline sdk::REFieldEx<uint8_t, true> *Pl_EquipSkill_004;
            inline sdk::REFieldEx<uint8_t, true> *Pl_EquipSkill_008;
            inline sdk::REFieldEx<uint8_t, true> *Pl_EquipSkill_009;
            inline sdk::REFieldEx<uint8_t, true> *Pl_EquipSkill_024;
            inline sdk::REFieldEx<uint8_t, true> *Pl_EquipSkill_036;
            inline sdk::REFieldEx<uint8_t, true> *Pl_EquipSkill_042;
            inline sdk::REFieldEx<uint8_t, true> *Pl_EquipSkill_090;
            inline sdk::REFieldEx<uint8_t, true> *Pl_EquipSkill_091;
            inline sdk::REFieldEx<uint8_t, true> *Pl_EquipSkill_102;
            inline sdk::REFieldEx<uint8_t, true> *Pl_EquipSkill_105;
            inline sdk::REFieldEx<uint8_t, true> *Pl_EquipSkill_204;
            inline sdk::REFieldEx<uint8_t, true> *Pl_EquipSkill_206;
            inline sdk::REFieldEx<uint8_t, true> *Pl_EquipSkill_208;
            inline sdk::REFieldEx<uint8_t, true> *Pl_EquipSkill_209;
            inline sdk::REFieldEx<uint8_t, true> *Pl_EquipSkill_215;
            inline sdk::REFieldEx<uint8_t, true> *Pl_EquipSkill_216;
            inline sdk::REFieldEx<uint8_t, true> *Pl_EquipSkill_220;
            inline sdk::REFieldEx<uint8_t, true> *Pl_EquipSkill_222;
            inline sdk::REFieldEx<uint8_t, true> *Pl_EquipSkill_223;
            inline sdk::REFieldEx<uint8_t, true> *Pl_EquipSkill_226;
            inline sdk::REFieldEx<uint8_t, true> *Pl_EquipSkill_227;
            inline sdk::REFieldEx<uint8_t, true> *Pl_EquipSkill_229;
            inline sdk::REFieldEx<uint8_t, true> *Pl_EquipSkill_230;
            inline sdk::REFieldEx<uint8_t, true> *Pl_EquipSkill_231;
            inline sdk::REFieldEx<uint8_t, true> *Pl_EquipSkill_232;
        }

        namespace snow::player::PlayerUserDataSkillParameter
        {
            inline sdk::REFieldEx<::REManagedObject *> *EquipSkillParameter;
            inline sdk::REFieldEx<::REManagedObject *> *OdangoSkillParameter;
        }

        namespace snow::player::DamageReflexInfo
        {
            inline sdk::REFieldEx<int32_t> *CheckType_b;
        }

        namespace System::String
        {
            inline sdk::REMethodDefinitionEx<::SystemString *, sdk::VMContext *, ::SystemString *, ::REManagedObject *> *Format722162;
        }
    }
}