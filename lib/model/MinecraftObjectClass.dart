// To parse this JSON data, do
//
//     final track = trackFromJson(jsonString);

import 'dart:convert';

Track trackFromJson(String str) {
  final jsonData = json.decode(str);
  return Track.fromJson(jsonData);
}

String trackToJson(Track data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

class Track {
  MinecraftEntity minecraftEntity;

  Track({
    this.minecraftEntity,
  });

  factory Track.fromJson(Map<String, dynamic> json) => new Track(
    minecraftEntity: MinecraftEntity.fromJson(json["minecraft:entity"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:entity": minecraftEntity.toJson(),
  };
}

class MinecraftEntity {
  dynamic formatVersion;
  ComponentGroups componentGroups;
  Components components;
  Events events;
  double version;

  MinecraftEntity({
    this.formatVersion,
    this.componentGroups,
    this.components,
    this.events,
    this.version,
  });

  factory MinecraftEntity.fromJson(Map<String, dynamic> json) => new MinecraftEntity(
    formatVersion: json["format_version"],
    componentGroups: json["component_groups"] == null ? null : ComponentGroups.fromJson(json["component_groups"]),
    components: Components.fromJson(json["components"]),
    events: json["events"] == null ? null : Events.fromJson(json["events"]),
    version: json["version"] == null ? null : json["version"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "format_version": formatVersion,
    "component_groups": componentGroups == null ? null : componentGroups.toJson(),
    "components": components.toJson(),
    "events": events == null ? null : events.toJson(),
    "version": version == null ? null : version,
  };
}

class ComponentGroups {
  MinecraftSpiderJockey minecraftSpiderJockey;
  MinecraftSpiderJockey minecraftSpiderStrayJockey;
  MinecraftSpiderJockey minecraftSpiderWitherJockey;
  MinecraftSpiderNeutral minecraftSpiderNeutral;
  MinecraftHostileClass minecraftSpiderHostile;
  MinecraftHostileClass minecraftSpiderAngry;
  MinecraftSpiderPoison minecraftSpiderPoisonEasy;
  MinecraftSpiderPoison minecraftSpiderPoisonNormal;
  MinecraftSpiderPoison minecraftSpiderPoisonHard;
  MinecraftNBaby minecraftChickenBaby;
  MinecraftChickenAdult minecraftChickenAdult;
  MinecraftLeashed minecraftChickenLeashed;
  MinecraftCowBaby minecraftCowBaby;
  MinecraftCowAdult minecraftCowAdult;
  MinecraftLeashed minecraftCowLeashed;
  MinecraftExploding minecraftExploding;
  DibrugarhFerrets minecraftHunting;
  MinecraftChargedCreeper minecraftChargedCreeper;
  MinecraftExploding minecraftChargedExploding;
  MinecraftDolphinAdult minecraftDolphinAdult;
  MinecraftNBaby minecraftDolphinBaby;
  MinecraftDolphinAngry minecraftDolphinAngry;
  MinecraftDolphinDried minecraftDolphinDried;
  MinecraftDolphinSwimmingNavigation minecraftDolphinSwimmingNavigation;
  MinecraftDolphinOnLand minecraftDolphinOnLand;
  MinecraftDolphinOnLandInRain minecraftDolphinOnLandInRain;
  MinecraftDonkeyBabyClass minecraftDonkeyBaby;
  MinecraftDonkeyAdultClass minecraftDonkeyAdult;
  MinecraftWild minecraftDonkeyWild;
  MinecraftDonkeyTamed minecraftDonkeyTamed;
  MinecraftUnchested minecraftDonkeyUnchested;
  MinecraftChested minecraftDonkeyChested;
  MinecraftSaddled minecraftDonkeySaddled;
  MinecraftLeashed minecraftDonkeyLeashed;
  MinecraftBabyDrownedClass minecraftBabyDrowned;
  MinecraftAdultDrownedClass minecraftAdultDrowned;
  MinecraftModeSwitcher minecraftModeSwitcher;
  MinecraftRangedMode minecraftRangedMode;
  MinecraftMeleeMode minecraftMeleeMode;
  MinecraftErMode minecraftHunterMode;
  MinecraftErMode minecraftWanderMode;
  DragonSitting dragonSitting;
  DragonFlying dragonFlying;
  DragonDeath dragonDeath;
  MinecraftEndermanCalm minecraftEndermanCalm;
  MinecraftEndermanAngry minecraftEndermanAngry;
  MinecraftGuardianAggressive minecraftGuardianAggressive;
  MinecraftGuardianPassive minecraftGuardianPassive;
  MinecraftDonkeyBabyClass minecraftHorseBaby;
  MinecraftDonkeyAdultClass minecraftHorseAdult;
  MinecraftWild minecraftHorseWild;
  MinecraftHorseTamed minecraftHorseTamed;
  MinecraftLeashed minecraftHorseLeashed;
  MinecraftSaddled minecraftHorseSaddled;
  MinecraftBabyDrownedClass minecraftZombieHuskBaby;
  MinecraftZombieHuskAdult minecraftZombieHuskAdult;
  MinecraftZombieHuskJockey minecraftZombieHuskJockey;
  MinecraftLeashedClass minecraftLeashed;
  MinecraftPlayerCreated minecraftPlayerCreated;
  MinecraftVillageCreated minecraftVillageCreated;
  MinecraftDonkeyBabyClass minecraftLlamaBaby;
  MinecraftLlamaAdult minecraftLlamaAdult;
  MinecraftStrength minecraftStrength1;
  MinecraftStrength minecraftStrength2;
  MinecraftStrength minecraftStrength3;
  MinecraftStrength minecraftStrength4;
  MinecraftStrength minecraftStrength5;
  PortoCamel minecraftLlamaCreamy;
  PortoCamel minecraftLlamaWhite;
  PortoCamel minecraftLlamaBrown;
  PortoCamel minecraftLlamaGray;
  MinecraftLlamaWild minecraftLlamaWild;
  MinecraftLlamaTamed minecraftLlamaTamed;
  MinecraftUnchested minecraftLlamaUnchested;
  MinecraftChested minecraftLlamaChested;
  MinecraftLeashed minecraftLlamaLeashed;
  MinecraftLlamaAngry minecraftLlamaAngry;
  MinecraftLlamaAngry minecraftLlamaAngryWolf;
  MinecraftInCaravan minecraftInCaravan;
  MinecraftSlime minecraftSlimeLarge;
  MinecraftSlime minecraftSlimeMedium;
  MinecraftSlime minecraftSlimeSmall;
  BecomeZombie minecraftMooshroomBecomeCow;
  MinecraftBaby minecraftBaby;
  MinecraftAdult minecraftAdult;
  MinecraftWildClass minecraftWild;
  MinecraftMuleTamed minecraftMuleTamed;
  MinecraftMuleUnchested minecraftMuleUnchested;
  MinecraftChested minecraftMuleChested;
  MinecraftLeashed minecraftMuleLeashed;
  MinecraftTamed minecraftTamed;
  PortoCamel minecraftTuxedo;
  PortoCamel minecraftTabby;
  PortoCamel minecraftSiamese;
  PortoCamel minecraftParrotRed;
  PortoCamel minecraftParrotBlue;
  PortoCamel minecraftParrotGreen;
  PortoCamel minecraftParrotCyan;
  PortoCamel minecraftParrotSilver;
  MinecraftAdultDrownedClass minecraftParrotAdult;
  MinecraftParrotWild minecraftParrotWild;
  MinecraftParrotTame minecraftParrotTame;
  MinecraftRevertToSkeletonClass minecraftTransformed;
  MinecraftUnsaddled minecraftUnsaddled;
  MinecraftSaddledClass minecraftSaddled;
  MinecraftBabyWild minecraftBabyWild;
  MinecraftBabyScaredClass minecraftBabyScared;
  MinecraftAdultWild minecraftAdultWild;
  MinecraftAdultHostile minecraftAdultHostile;
  MinecraftPufferfish minecraftPufferfishPuffed;
  MinecraftPufferfish minecraftPufferfishDeflated;
  PortoCamel coatBrown;
  PortoCamel coatWhite;
  PortoCamel coatBlack;
  PortoCamel coatSplotched;
  PortoCamel coatDesert;
  PortoCamel coatSalt;
  Scale scaleSmall;
  Scale scaleNormal;
  Scale scaleLarge;
  MinecraftRideableShearedClass minecraftRideableSheared;
  MinecraftRideableShearedClass minecraftWooly;
  MinecraftDyeable minecraftDyeable;
  MinecraftSheared minecraftSheared;
  MinecraftSheep minecraftSheepWhite;
  MinecraftSheep minecraftSheepBrown;
  MinecraftSheep minecraftSheepBlack;
  MinecraftSheep minecraftSheepGray;
  MinecraftSheep minecraftSheepLightGray;
  MinecraftSheep minecraftSheepPink;
  PortoCamel minecraftShulkerPurple;
  PortoCamel minecraftShulkerBlack;
  PortoCamel minecraftShulkerBlue;
  PortoCamel minecraftShulkerBrown;
  PortoCamel minecraftShulkerCyan;
  PortoCamel minecraftShulkerGray;
  PortoCamel minecraftShulkerGreen;
  PortoCamel minecraftShulkerLightBlue;
  PortoCamel minecraftShulkerLime;
  PortoCamel minecraftShulkerMagenta;
  PortoCamel minecraftShulkerOrange;
  PortoCamel minecraftShulkerPink;
  PortoCamel minecraftShulkerRed;
  PortoCamel minecraftShulkerSilver;
  PortoCamel minecraftShulkerWhite;
  PortoCamel minecraftShulkerYellow;
  MinecraftCalm minecraftCalm;
  ComponentGroupsMinecraftAngry minecraftAngry;
  Trap trap;
  TrapSpawned trapSpawned;
  MinecraftJockey minecraftJockey;
  MinecraftHostileClass minecraftHostile;
  MinecraftNeutral minecraftNeutral;
  MinecraftRevertToSkeletonClass minecraftRevertToSkeleton;
  MinecraftPregnant minecraftPregnant;
  MinecraftWantsToLayEgg minecraftWantsToLayEgg;
  BecomeWitch becomeWitch;
  BecomeZombie becomeZombie;
  BehaviorPeasant behaviorPeasant;
  BehaviorNonPeasant behaviorNonPeasant;
  Armorer farmer;
  Armorer fisherman;
  Armorer shepherd;
  Armorer fletcher;
  Armorer librarian;
  Armorer cleric;
  Armorer armorer;
  Armorer weaponsmith;
  Armorer toolsmith;
  Armorer butcher;
  Armorer leatherworker;
  MinecraftBabyScaredClass minecraftVindicatorAggro;
  MinecraftVindicatorJohnny minecraftVindicatorJohnny;
  ToVillager toVillager;

  ComponentGroups({
    this.minecraftSpiderJockey,
    this.minecraftSpiderStrayJockey,
    this.minecraftSpiderWitherJockey,
    this.minecraftSpiderNeutral,
    this.minecraftSpiderHostile,
    this.minecraftSpiderAngry,
    this.minecraftSpiderPoisonEasy,
    this.minecraftSpiderPoisonNormal,
    this.minecraftSpiderPoisonHard,
    this.minecraftChickenBaby,
    this.minecraftChickenAdult,
    this.minecraftChickenLeashed,
    this.minecraftCowBaby,
    this.minecraftCowAdult,
    this.minecraftCowLeashed,
    this.minecraftExploding,
    this.minecraftHunting,
    this.minecraftChargedCreeper,
    this.minecraftChargedExploding,
    this.minecraftDolphinAdult,
    this.minecraftDolphinBaby,
    this.minecraftDolphinAngry,
    this.minecraftDolphinDried,
    this.minecraftDolphinSwimmingNavigation,
    this.minecraftDolphinOnLand,
    this.minecraftDolphinOnLandInRain,
    this.minecraftDonkeyBaby,
    this.minecraftDonkeyAdult,
    this.minecraftDonkeyWild,
    this.minecraftDonkeyTamed,
    this.minecraftDonkeyUnchested,
    this.minecraftDonkeyChested,
    this.minecraftDonkeySaddled,
    this.minecraftDonkeyLeashed,
    this.minecraftBabyDrowned,
    this.minecraftAdultDrowned,
    this.minecraftModeSwitcher,
    this.minecraftRangedMode,
    this.minecraftMeleeMode,
    this.minecraftHunterMode,
    this.minecraftWanderMode,
    this.dragonSitting,
    this.dragonFlying,
    this.dragonDeath,
    this.minecraftEndermanCalm,
    this.minecraftEndermanAngry,
    this.minecraftGuardianAggressive,
    this.minecraftGuardianPassive,
    this.minecraftHorseBaby,
    this.minecraftHorseAdult,
    this.minecraftHorseWild,
    this.minecraftHorseTamed,
    this.minecraftHorseLeashed,
    this.minecraftHorseSaddled,
    this.minecraftZombieHuskBaby,
    this.minecraftZombieHuskAdult,
    this.minecraftZombieHuskJockey,
    this.minecraftLeashed,
    this.minecraftPlayerCreated,
    this.minecraftVillageCreated,
    this.minecraftLlamaBaby,
    this.minecraftLlamaAdult,
    this.minecraftStrength1,
    this.minecraftStrength2,
    this.minecraftStrength3,
    this.minecraftStrength4,
    this.minecraftStrength5,
    this.minecraftLlamaCreamy,
    this.minecraftLlamaWhite,
    this.minecraftLlamaBrown,
    this.minecraftLlamaGray,
    this.minecraftLlamaWild,
    this.minecraftLlamaTamed,
    this.minecraftLlamaUnchested,
    this.minecraftLlamaChested,
    this.minecraftLlamaLeashed,
    this.minecraftLlamaAngry,
    this.minecraftLlamaAngryWolf,
    this.minecraftInCaravan,
    this.minecraftSlimeLarge,
    this.minecraftSlimeMedium,
    this.minecraftSlimeSmall,
    this.minecraftMooshroomBecomeCow,
    this.minecraftBaby,
    this.minecraftAdult,
    this.minecraftWild,
    this.minecraftMuleTamed,
    this.minecraftMuleUnchested,
    this.minecraftMuleChested,
    this.minecraftMuleLeashed,
    this.minecraftTamed,
    this.minecraftTuxedo,
    this.minecraftTabby,
    this.minecraftSiamese,
    this.minecraftParrotRed,
    this.minecraftParrotBlue,
    this.minecraftParrotGreen,
    this.minecraftParrotCyan,
    this.minecraftParrotSilver,
    this.minecraftParrotAdult,
    this.minecraftParrotWild,
    this.minecraftParrotTame,
    this.minecraftTransformed,
    this.minecraftUnsaddled,
    this.minecraftSaddled,
    this.minecraftBabyWild,
    this.minecraftBabyScared,
    this.minecraftAdultWild,
    this.minecraftAdultHostile,
    this.minecraftPufferfishPuffed,
    this.minecraftPufferfishDeflated,
    this.coatBrown,
    this.coatWhite,
    this.coatBlack,
    this.coatSplotched,
    this.coatDesert,
    this.coatSalt,
    this.scaleSmall,
    this.scaleNormal,
    this.scaleLarge,
    this.minecraftRideableSheared,
    this.minecraftWooly,
    this.minecraftDyeable,
    this.minecraftSheared,
    this.minecraftSheepWhite,
    this.minecraftSheepBrown,
    this.minecraftSheepBlack,
    this.minecraftSheepGray,
    this.minecraftSheepLightGray,
    this.minecraftSheepPink,
    this.minecraftShulkerPurple,
    this.minecraftShulkerBlack,
    this.minecraftShulkerBlue,
    this.minecraftShulkerBrown,
    this.minecraftShulkerCyan,
    this.minecraftShulkerGray,
    this.minecraftShulkerGreen,
    this.minecraftShulkerLightBlue,
    this.minecraftShulkerLime,
    this.minecraftShulkerMagenta,
    this.minecraftShulkerOrange,
    this.minecraftShulkerPink,
    this.minecraftShulkerRed,
    this.minecraftShulkerSilver,
    this.minecraftShulkerWhite,
    this.minecraftShulkerYellow,
    this.minecraftCalm,
    this.minecraftAngry,
    this.trap,
    this.trapSpawned,
    this.minecraftJockey,
    this.minecraftHostile,
    this.minecraftNeutral,
    this.minecraftRevertToSkeleton,
    this.minecraftPregnant,
    this.minecraftWantsToLayEgg,
    this.becomeWitch,
    this.becomeZombie,
    this.behaviorPeasant,
    this.behaviorNonPeasant,
    this.farmer,
    this.fisherman,
    this.shepherd,
    this.fletcher,
    this.librarian,
    this.cleric,
    this.armorer,
    this.weaponsmith,
    this.toolsmith,
    this.butcher,
    this.leatherworker,
    this.minecraftVindicatorAggro,
    this.minecraftVindicatorJohnny,
    this.toVillager,
  });

  factory ComponentGroups.fromJson(Map<String, dynamic> json) => new ComponentGroups(
    minecraftSpiderJockey: json["minecraft:spider_jockey"] == null ? null : MinecraftSpiderJockey.fromJson(json["minecraft:spider_jockey"]),
    minecraftSpiderStrayJockey: json["minecraft:spider_stray_jockey"] == null ? null : MinecraftSpiderJockey.fromJson(json["minecraft:spider_stray_jockey"]),
    minecraftSpiderWitherJockey: json["minecraft:spider_wither_jockey"] == null ? null : MinecraftSpiderJockey.fromJson(json["minecraft:spider_wither_jockey"]),
    minecraftSpiderNeutral: json["minecraft:spider_neutral"] == null ? null : MinecraftSpiderNeutral.fromJson(json["minecraft:spider_neutral"]),
    minecraftSpiderHostile: json["minecraft:spider_hostile"] == null ? null : MinecraftHostileClass.fromJson(json["minecraft:spider_hostile"]),
    minecraftSpiderAngry: json["minecraft:spider_angry"] == null ? null : MinecraftHostileClass.fromJson(json["minecraft:spider_angry"]),
    minecraftSpiderPoisonEasy: json["minecraft:spider_poison_easy"] == null ? null : MinecraftSpiderPoison.fromJson(json["minecraft:spider_poison_easy"]),
    minecraftSpiderPoisonNormal: json["minecraft:spider_poison_normal"] == null ? null : MinecraftSpiderPoison.fromJson(json["minecraft:spider_poison_normal"]),
    minecraftSpiderPoisonHard: json["minecraft:spider_poison_hard"] == null ? null : MinecraftSpiderPoison.fromJson(json["minecraft:spider_poison_hard"]),
    minecraftChickenBaby: json["minecraft:chicken_baby"] == null ? null : MinecraftNBaby.fromJson(json["minecraft:chicken_baby"]),
    minecraftChickenAdult: json["minecraft:chicken_adult"] == null ? null : MinecraftChickenAdult.fromJson(json["minecraft:chicken_adult"]),
    minecraftChickenLeashed: json["minecraft:chicken_leashed"] == null ? null : MinecraftLeashed.fromJson(json["minecraft:chicken_leashed"]),
    minecraftCowBaby: json["minecraft:cow_baby"] == null ? null : MinecraftCowBaby.fromJson(json["minecraft:cow_baby"]),
    minecraftCowAdult: json["minecraft:cow_adult"] == null ? null : MinecraftCowAdult.fromJson(json["minecraft:cow_adult"]),
    minecraftCowLeashed: json["minecraft:cow_leashed"] == null ? null : MinecraftLeashed.fromJson(json["minecraft:cow_leashed"]),
    minecraftExploding: json["minecraft:exploding"] == null ? null : MinecraftExploding.fromJson(json["minecraft:exploding"]),
    minecraftHunting: json["minecraft:hunting"] == null ? null : DibrugarhFerrets.fromJson(json["minecraft:hunting"]),
    minecraftChargedCreeper: json["minecraft:charged_creeper"] == null ? null : MinecraftChargedCreeper.fromJson(json["minecraft:charged_creeper"]),
    minecraftChargedExploding: json["minecraft:charged_exploding"] == null ? null : MinecraftExploding.fromJson(json["minecraft:charged_exploding"]),
    minecraftDolphinAdult: json["minecraft:dolphin_adult"] == null ? null : MinecraftDolphinAdult.fromJson(json["minecraft:dolphin_adult"]),
    minecraftDolphinBaby: json["minecraft:dolphin_baby"] == null ? null : MinecraftNBaby.fromJson(json["minecraft:dolphin_baby"]),
    minecraftDolphinAngry: json["minecraft:dolphin_angry"] == null ? null : MinecraftDolphinAngry.fromJson(json["minecraft:dolphin_angry"]),
    minecraftDolphinDried: json["minecraft:dolphin_dried"] == null ? null : MinecraftDolphinDried.fromJson(json["minecraft:dolphin_dried"]),
    minecraftDolphinSwimmingNavigation: json["minecraft:dolphin_swimming_navigation"] == null ? null : MinecraftDolphinSwimmingNavigation.fromJson(json["minecraft:dolphin_swimming_navigation"]),
    minecraftDolphinOnLand: json["minecraft:dolphin_on_land"] == null ? null : MinecraftDolphinOnLand.fromJson(json["minecraft:dolphin_on_land"]),
    minecraftDolphinOnLandInRain: json["minecraft:dolphin_on_land_in_rain"] == null ? null : MinecraftDolphinOnLandInRain.fromJson(json["minecraft:dolphin_on_land_in_rain"]),
    minecraftDonkeyBaby: json["minecraft:donkey_baby"] == null ? null : MinecraftDonkeyBabyClass.fromJson(json["minecraft:donkey_baby"]),
    minecraftDonkeyAdult: json["minecraft:donkey_adult"] == null ? null : MinecraftDonkeyAdultClass.fromJson(json["minecraft:donkey_adult"]),
    minecraftDonkeyWild: json["minecraft:donkey_wild"] == null ? null : MinecraftWild.fromJson(json["minecraft:donkey_wild"]),
    minecraftDonkeyTamed: json["minecraft:donkey_tamed"] == null ? null : MinecraftDonkeyTamed.fromJson(json["minecraft:donkey_tamed"]),
    minecraftDonkeyUnchested: json["minecraft:donkey_unchested"] == null ? null : MinecraftUnchested.fromJson(json["minecraft:donkey_unchested"]),
    minecraftDonkeyChested: json["minecraft:donkey_chested"] == null ? null : MinecraftChested.fromJson(json["minecraft:donkey_chested"]),
    minecraftDonkeySaddled: json["minecraft:donkey_saddled"] == null ? null : MinecraftSaddled.fromJson(json["minecraft:donkey_saddled"]),
    minecraftDonkeyLeashed: json["minecraft:donkey_leashed"] == null ? null : MinecraftLeashed.fromJson(json["minecraft:donkey_leashed"]),
    minecraftBabyDrowned: json["minecraft:baby_drowned"] == null ? null : MinecraftBabyDrownedClass.fromJson(json["minecraft:baby_drowned"]),
    minecraftAdultDrowned: json["minecraft:adult_drowned"] == null ? null : MinecraftAdultDrownedClass.fromJson(json["minecraft:adult_drowned"]),
    minecraftModeSwitcher: json["minecraft:mode_switcher"] == null ? null : MinecraftModeSwitcher.fromJson(json["minecraft:mode_switcher"]),
    minecraftRangedMode: json["minecraft:ranged_mode"] == null ? null : MinecraftRangedMode.fromJson(json["minecraft:ranged_mode"]),
    minecraftMeleeMode: json["minecraft:melee_mode"] == null ? null : MinecraftMeleeMode.fromJson(json["minecraft:melee_mode"]),
    minecraftHunterMode: json["minecraft:hunter_mode"] == null ? null : MinecraftErMode.fromJson(json["minecraft:hunter_mode"]),
    minecraftWanderMode: json["minecraft:wander_mode"] == null ? null : MinecraftErMode.fromJson(json["minecraft:wander_mode"]),
    dragonSitting: json["dragon_sitting"] == null ? null : DragonSitting.fromJson(json["dragon_sitting"]),
    dragonFlying: json["dragon_flying"] == null ? null : DragonFlying.fromJson(json["dragon_flying"]),
    dragonDeath: json["dragon_death"] == null ? null : DragonDeath.fromJson(json["dragon_death"]),
    minecraftEndermanCalm: json["minecraft:enderman_calm"] == null ? null : MinecraftEndermanCalm.fromJson(json["minecraft:enderman_calm"]),
    minecraftEndermanAngry: json["minecraft:enderman_angry"] == null ? null : MinecraftEndermanAngry.fromJson(json["minecraft:enderman_angry"]),
    minecraftGuardianAggressive: json["minecraft:guardian_aggressive"] == null ? null : MinecraftGuardianAggressive.fromJson(json["minecraft:guardian_aggressive"]),
    minecraftGuardianPassive: json["minecraft:guardian_passive"] == null ? null : MinecraftGuardianPassive.fromJson(json["minecraft:guardian_passive"]),
    minecraftHorseBaby: json["minecraft:horse_baby"] == null ? null : MinecraftDonkeyBabyClass.fromJson(json["minecraft:horse_baby"]),
    minecraftHorseAdult: json["minecraft:horse_adult"] == null ? null : MinecraftDonkeyAdultClass.fromJson(json["minecraft:horse_adult"]),
    minecraftHorseWild: json["minecraft:horse_wild"] == null ? null : MinecraftWild.fromJson(json["minecraft:horse_wild"]),
    minecraftHorseTamed: json["minecraft:horse_tamed"] == null ? null : MinecraftHorseTamed.fromJson(json["minecraft:horse_tamed"]),
    minecraftHorseLeashed: json["minecraft:horse_leashed"] == null ? null : MinecraftLeashed.fromJson(json["minecraft:horse_leashed"]),
    minecraftHorseSaddled: json["minecraft:horse_saddled"] == null ? null : MinecraftSaddled.fromJson(json["minecraft:horse_saddled"]),
    minecraftZombieHuskBaby: json["minecraft:zombie_husk_baby"] == null ? null : MinecraftBabyDrownedClass.fromJson(json["minecraft:zombie_husk_baby"]),
    minecraftZombieHuskAdult: json["minecraft:zombie_husk_adult"] == null ? null : MinecraftZombieHuskAdult.fromJson(json["minecraft:zombie_husk_adult"]),
    minecraftZombieHuskJockey: json["minecraft:zombie_husk_jockey"] == null ? null : MinecraftZombieHuskJockey.fromJson(json["minecraft:zombie_husk_jockey"]),
    minecraftLeashed: json["minecraft:leashed"] == null ? null : MinecraftLeashedClass.fromJson(json["minecraft:leashed"]),
    minecraftPlayerCreated: json["minecraft:player_created"] == null ? null : MinecraftPlayerCreated.fromJson(json["minecraft:player_created"]),
    minecraftVillageCreated: json["minecraft:village_created"] == null ? null : MinecraftVillageCreated.fromJson(json["minecraft:village_created"]),
    minecraftLlamaBaby: json["minecraft:llama_baby"] == null ? null : MinecraftDonkeyBabyClass.fromJson(json["minecraft:llama_baby"]),
    minecraftLlamaAdult: json["minecraft:llama_adult"] == null ? null : MinecraftLlamaAdult.fromJson(json["minecraft:llama_adult"]),
    minecraftStrength1: json["minecraft:strength_1"] == null ? null : MinecraftStrength.fromJson(json["minecraft:strength_1"]),
    minecraftStrength2: json["minecraft:strength_2"] == null ? null : MinecraftStrength.fromJson(json["minecraft:strength_2"]),
    minecraftStrength3: json["minecraft:strength_3"] == null ? null : MinecraftStrength.fromJson(json["minecraft:strength_3"]),
    minecraftStrength4: json["minecraft:strength_4"] == null ? null : MinecraftStrength.fromJson(json["minecraft:strength_4"]),
    minecraftStrength5: json["minecraft:strength_5"] == null ? null : MinecraftStrength.fromJson(json["minecraft:strength_5"]),
    minecraftLlamaCreamy: json["minecraft:llama_creamy"] == null ? null : PortoCamel.fromJson(json["minecraft:llama_creamy"]),
    minecraftLlamaWhite: json["minecraft:llama_white"] == null ? null : PortoCamel.fromJson(json["minecraft:llama_white"]),
    minecraftLlamaBrown: json["minecraft:llama_brown"] == null ? null : PortoCamel.fromJson(json["minecraft:llama_brown"]),
    minecraftLlamaGray: json["minecraft:llama_gray"] == null ? null : PortoCamel.fromJson(json["minecraft:llama_gray"]),
    minecraftLlamaWild: json["minecraft:llama_wild"] == null ? null : MinecraftLlamaWild.fromJson(json["minecraft:llama_wild"]),
    minecraftLlamaTamed: json["minecraft:llama_tamed"] == null ? null : MinecraftLlamaTamed.fromJson(json["minecraft:llama_tamed"]),
    minecraftLlamaUnchested: json["minecraft:llama_unchested"] == null ? null : MinecraftUnchested.fromJson(json["minecraft:llama_unchested"]),
    minecraftLlamaChested: json["minecraft:llama_chested"] == null ? null : MinecraftChested.fromJson(json["minecraft:llama_chested"]),
    minecraftLlamaLeashed: json["minecraft:llama_leashed"] == null ? null : MinecraftLeashed.fromJson(json["minecraft:llama_leashed"]),
    minecraftLlamaAngry: json["minecraft:llama_angry"] == null ? null : MinecraftLlamaAngry.fromJson(json["minecraft:llama_angry"]),
    minecraftLlamaAngryWolf: json["minecraft:llama_angry_wolf"] == null ? null : MinecraftLlamaAngry.fromJson(json["minecraft:llama_angry_wolf"]),
    minecraftInCaravan: json["minecraft:in_caravan"] == null ? null : MinecraftInCaravan.fromJson(json["minecraft:in_caravan"]),
    minecraftSlimeLarge: json["minecraft:slime_large"] == null ? null : MinecraftSlime.fromJson(json["minecraft:slime_large"]),
    minecraftSlimeMedium: json["minecraft:slime_medium"] == null ? null : MinecraftSlime.fromJson(json["minecraft:slime_medium"]),
    minecraftSlimeSmall: json["minecraft:slime_small"] == null ? null : MinecraftSlime.fromJson(json["minecraft:slime_small"]),
    minecraftMooshroomBecomeCow: json["minecraft:mooshroom_become_cow"] == null ? null : BecomeZombie.fromJson(json["minecraft:mooshroom_become_cow"]),
    minecraftBaby: json["minecraft:baby"] == null ? null : MinecraftBaby.fromJson(json["minecraft:baby"]),
    minecraftAdult: json["minecraft:adult"] == null ? null : MinecraftAdult.fromJson(json["minecraft:adult"]),
    minecraftWild: json["minecraft:wild"] == null ? null : MinecraftWildClass.fromJson(json["minecraft:wild"]),
    minecraftMuleTamed: json["minecraft:mule_tamed"] == null ? null : MinecraftMuleTamed.fromJson(json["minecraft:mule_tamed"]),
    minecraftMuleUnchested: json["minecraft:mule_unchested"] == null ? null : MinecraftMuleUnchested.fromJson(json["minecraft:mule_unchested"]),
    minecraftMuleChested: json["minecraft:mule_chested"] == null ? null : MinecraftChested.fromJson(json["minecraft:mule_chested"]),
    minecraftMuleLeashed: json["minecraft:mule_leashed"] == null ? null : MinecraftLeashed.fromJson(json["minecraft:mule_leashed"]),
    minecraftTamed: json["minecraft:tamed"] == null ? null : MinecraftTamed.fromJson(json["minecraft:tamed"]),
    minecraftTuxedo: json["minecraft:tuxedo"] == null ? null : PortoCamel.fromJson(json["minecraft:tuxedo"]),
    minecraftTabby: json["minecraft:tabby"] == null ? null : PortoCamel.fromJson(json["minecraft:tabby"]),
    minecraftSiamese: json["minecraft:siamese"] == null ? null : PortoCamel.fromJson(json["minecraft:siamese"]),
    minecraftParrotRed: json["minecraft:parrot_red"] == null ? null : PortoCamel.fromJson(json["minecraft:parrot_red"]),
    minecraftParrotBlue: json["minecraft:parrot_blue"] == null ? null : PortoCamel.fromJson(json["minecraft:parrot_blue"]),
    minecraftParrotGreen: json["minecraft:parrot_green"] == null ? null : PortoCamel.fromJson(json["minecraft:parrot_green"]),
    minecraftParrotCyan: json["minecraft:parrot_cyan"] == null ? null : PortoCamel.fromJson(json["minecraft:parrot_cyan"]),
    minecraftParrotSilver: json["minecraft:parrot_silver"] == null ? null : PortoCamel.fromJson(json["minecraft:parrot_silver"]),
    minecraftParrotAdult: json["minecraft:parrot_adult"] == null ? null : MinecraftAdultDrownedClass.fromJson(json["minecraft:parrot_adult"]),
    minecraftParrotWild: json["minecraft:parrot_wild"] == null ? null : MinecraftParrotWild.fromJson(json["minecraft:parrot_wild"]),
    minecraftParrotTame: json["minecraft:parrot_tame"] == null ? null : MinecraftParrotTame.fromJson(json["minecraft:parrot_tame"]),
    minecraftTransformed: json["minecraft:transformed"] == null ? null : MinecraftRevertToSkeletonClass.fromJson(json["minecraft:transformed"]),
    minecraftUnsaddled: json["minecraft:unsaddled"] == null ? null : MinecraftUnsaddled.fromJson(json["minecraft:unsaddled"]),
    minecraftSaddled: json["minecraft:saddled"] == null ? null : MinecraftSaddledClass.fromJson(json["minecraft:saddled"]),
    minecraftBabyWild: json["minecraft:baby_wild"] == null ? null : MinecraftBabyWild.fromJson(json["minecraft:baby_wild"]),
    minecraftBabyScared: json["minecraft:baby_scared"] == null ? null : MinecraftBabyScaredClass.fromJson(json["minecraft:baby_scared"]),
    minecraftAdultWild: json["minecraft:adult_wild"] == null ? null : MinecraftAdultWild.fromJson(json["minecraft:adult_wild"]),
    minecraftAdultHostile: json["minecraft:adult_hostile"] == null ? null : MinecraftAdultHostile.fromJson(json["minecraft:adult_hostile"]),
    minecraftPufferfishPuffed: json["minecraft:pufferfish_puffed"] == null ? null : MinecraftPufferfish.fromJson(json["minecraft:pufferfish_puffed"]),
    minecraftPufferfishDeflated: json["minecraft:pufferfish_deflated"] == null ? null : MinecraftPufferfish.fromJson(json["minecraft:pufferfish_deflated"]),
    coatBrown: json["coat_brown"] == null ? null : PortoCamel.fromJson(json["coat_brown"]),
    coatWhite: json["coat_white"] == null ? null : PortoCamel.fromJson(json["coat_white"]),
    coatBlack: json["coat_black"] == null ? null : PortoCamel.fromJson(json["coat_black"]),
    coatSplotched: json["coat_splotched"] == null ? null : PortoCamel.fromJson(json["coat_splotched"]),
    coatDesert: json["coat_desert"] == null ? null : PortoCamel.fromJson(json["coat_desert"]),
    coatSalt: json["coat_salt"] == null ? null : PortoCamel.fromJson(json["coat_salt"]),
    scaleSmall: json["scale_small"] == null ? null : Scale.fromJson(json["scale_small"]),
    scaleNormal: json["scale_normal"] == null ? null : Scale.fromJson(json["scale_normal"]),
    scaleLarge: json["scale_large"] == null ? null : Scale.fromJson(json["scale_large"]),
    minecraftRideableSheared: json["minecraft:rideable_sheared"] == null ? null : MinecraftRideableShearedClass.fromJson(json["minecraft:rideable_sheared"]),
    minecraftWooly: json["minecraft:wooly"] == null ? null : MinecraftRideableShearedClass.fromJson(json["minecraft:wooly"]),
    minecraftDyeable: json["minecraft:dyeable"] == null ? null : MinecraftDyeable.fromJson(json["minecraft:dyeable"]),
    minecraftSheared: json["minecraft:sheared"] == null ? null : MinecraftSheared.fromJson(json["minecraft:sheared"]),
    minecraftSheepWhite: json["minecraft:sheep_white"] == null ? null : MinecraftSheep.fromJson(json["minecraft:sheep_white"]),
    minecraftSheepBrown: json["minecraft:sheep_brown"] == null ? null : MinecraftSheep.fromJson(json["minecraft:sheep_brown"]),
    minecraftSheepBlack: json["minecraft:sheep_black"] == null ? null : MinecraftSheep.fromJson(json["minecraft:sheep_black"]),
    minecraftSheepGray: json["minecraft:sheep_gray"] == null ? null : MinecraftSheep.fromJson(json["minecraft:sheep_gray"]),
    minecraftSheepLightGray: json["minecraft:sheep_light_gray"] == null ? null : MinecraftSheep.fromJson(json["minecraft:sheep_light_gray"]),
    minecraftSheepPink: json["minecraft:sheep_pink"] == null ? null : MinecraftSheep.fromJson(json["minecraft:sheep_pink"]),
    minecraftShulkerPurple: json["minecraft:shulker_purple"] == null ? null : PortoCamel.fromJson(json["minecraft:shulker_purple"]),
    minecraftShulkerBlack: json["minecraft:shulker_black"] == null ? null : PortoCamel.fromJson(json["minecraft:shulker_black"]),
    minecraftShulkerBlue: json["minecraft:shulker_blue"] == null ? null : PortoCamel.fromJson(json["minecraft:shulker_blue"]),
    minecraftShulkerBrown: json["minecraft:shulker_brown"] == null ? null : PortoCamel.fromJson(json["minecraft:shulker_brown"]),
    minecraftShulkerCyan: json["minecraft:shulker_cyan"] == null ? null : PortoCamel.fromJson(json["minecraft:shulker_cyan"]),
    minecraftShulkerGray: json["minecraft:shulker_gray"] == null ? null : PortoCamel.fromJson(json["minecraft:shulker_gray"]),
    minecraftShulkerGreen: json["minecraft:shulker_green"] == null ? null : PortoCamel.fromJson(json["minecraft:shulker_green"]),
    minecraftShulkerLightBlue: json["minecraft:shulker_light_blue"] == null ? null : PortoCamel.fromJson(json["minecraft:shulker_light_blue"]),
    minecraftShulkerLime: json["minecraft:shulker_lime"] == null ? null : PortoCamel.fromJson(json["minecraft:shulker_lime"]),
    minecraftShulkerMagenta: json["minecraft:shulker_magenta"] == null ? null : PortoCamel.fromJson(json["minecraft:shulker_magenta"]),
    minecraftShulkerOrange: json["minecraft:shulker_orange"] == null ? null : PortoCamel.fromJson(json["minecraft:shulker_orange"]),
    minecraftShulkerPink: json["minecraft:shulker_pink"] == null ? null : PortoCamel.fromJson(json["minecraft:shulker_pink"]),
    minecraftShulkerRed: json["minecraft:shulker_red"] == null ? null : PortoCamel.fromJson(json["minecraft:shulker_red"]),
    minecraftShulkerSilver: json["minecraft:shulker_silver"] == null ? null : PortoCamel.fromJson(json["minecraft:shulker_silver"]),
    minecraftShulkerWhite: json["minecraft:shulker_white"] == null ? null : PortoCamel.fromJson(json["minecraft:shulker_white"]),
    minecraftShulkerYellow: json["minecraft:shulker_yellow"] == null ? null : PortoCamel.fromJson(json["minecraft:shulker_yellow"]),
    minecraftCalm: json["minecraft:calm"] == null ? null : MinecraftCalm.fromJson(json["minecraft:calm"]),
    minecraftAngry: json["minecraft:angry"] == null ? null : ComponentGroupsMinecraftAngry.fromJson(json["minecraft:angry"]),
    trap: json["trap"] == null ? null : Trap.fromJson(json["trap"]),
    trapSpawned: json["trap_spawned"] == null ? null : TrapSpawned.fromJson(json["trap_spawned"]),
    minecraftJockey: json["minecraft:jockey"] == null ? null : MinecraftJockey.fromJson(json["minecraft:jockey"]),
    minecraftHostile: json["minecraft:hostile"] == null ? null : MinecraftHostileClass.fromJson(json["minecraft:hostile"]),
    minecraftNeutral: json["minecraft:neutral"] == null ? null : MinecraftNeutral.fromJson(json["minecraft:neutral"]),
    minecraftRevertToSkeleton: json["minecraft:revert_to_skeleton"] == null ? null : MinecraftRevertToSkeletonClass.fromJson(json["minecraft:revert_to_skeleton"]),
    minecraftPregnant: json["minecraft:pregnant"] == null ? null : MinecraftPregnant.fromJson(json["minecraft:pregnant"]),
    minecraftWantsToLayEgg: json["minecraft:wants_to_lay_egg"] == null ? null : MinecraftWantsToLayEgg.fromJson(json["minecraft:wants_to_lay_egg"]),
    becomeWitch: json["become_witch"] == null ? null : BecomeWitch.fromJson(json["become_witch"]),
    becomeZombie: json["become_zombie"] == null ? null : BecomeZombie.fromJson(json["become_zombie"]),
    behaviorPeasant: json["behavior_peasant"] == null ? null : BehaviorPeasant.fromJson(json["behavior_peasant"]),
    behaviorNonPeasant: json["behavior_non_peasant"] == null ? null : BehaviorNonPeasant.fromJson(json["behavior_non_peasant"]),
    farmer: json["farmer"] == null ? null : Armorer.fromJson(json["farmer"]),
    fisherman: json["fisherman"] == null ? null : Armorer.fromJson(json["fisherman"]),
    shepherd: json["shepherd"] == null ? null : Armorer.fromJson(json["shepherd"]),
    fletcher: json["fletcher"] == null ? null : Armorer.fromJson(json["fletcher"]),
    librarian: json["librarian"] == null ? null : Armorer.fromJson(json["librarian"]),
    cleric: json["cleric"] == null ? null : Armorer.fromJson(json["cleric"]),
    armorer: json["armorer"] == null ? null : Armorer.fromJson(json["armorer"]),
    weaponsmith: json["weaponsmith"] == null ? null : Armorer.fromJson(json["weaponsmith"]),
    toolsmith: json["toolsmith"] == null ? null : Armorer.fromJson(json["toolsmith"]),
    butcher: json["butcher"] == null ? null : Armorer.fromJson(json["butcher"]),
    leatherworker: json["leatherworker"] == null ? null : Armorer.fromJson(json["leatherworker"]),
    minecraftVindicatorAggro: json["minecraft:vindicator_aggro"] == null ? null : MinecraftBabyScaredClass.fromJson(json["minecraft:vindicator_aggro"]),
    minecraftVindicatorJohnny: json["minecraft:vindicator_johnny"] == null ? null : MinecraftVindicatorJohnny.fromJson(json["minecraft:vindicator_johnny"]),
    toVillager: json["to_villager"] == null ? null : ToVillager.fromJson(json["to_villager"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:spider_jockey": minecraftSpiderJockey == null ? null : minecraftSpiderJockey.toJson(),
    "minecraft:spider_stray_jockey": minecraftSpiderStrayJockey == null ? null : minecraftSpiderStrayJockey.toJson(),
    "minecraft:spider_wither_jockey": minecraftSpiderWitherJockey == null ? null : minecraftSpiderWitherJockey.toJson(),
    "minecraft:spider_neutral": minecraftSpiderNeutral == null ? null : minecraftSpiderNeutral.toJson(),
    "minecraft:spider_hostile": minecraftSpiderHostile == null ? null : minecraftSpiderHostile.toJson(),
    "minecraft:spider_angry": minecraftSpiderAngry == null ? null : minecraftSpiderAngry.toJson(),
    "minecraft:spider_poison_easy": minecraftSpiderPoisonEasy == null ? null : minecraftSpiderPoisonEasy.toJson(),
    "minecraft:spider_poison_normal": minecraftSpiderPoisonNormal == null ? null : minecraftSpiderPoisonNormal.toJson(),
    "minecraft:spider_poison_hard": minecraftSpiderPoisonHard == null ? null : minecraftSpiderPoisonHard.toJson(),
    "minecraft:chicken_baby": minecraftChickenBaby == null ? null : minecraftChickenBaby.toJson(),
    "minecraft:chicken_adult": minecraftChickenAdult == null ? null : minecraftChickenAdult.toJson(),
    "minecraft:chicken_leashed": minecraftChickenLeashed == null ? null : minecraftChickenLeashed.toJson(),
    "minecraft:cow_baby": minecraftCowBaby == null ? null : minecraftCowBaby.toJson(),
    "minecraft:cow_adult": minecraftCowAdult == null ? null : minecraftCowAdult.toJson(),
    "minecraft:cow_leashed": minecraftCowLeashed == null ? null : minecraftCowLeashed.toJson(),
    "minecraft:exploding": minecraftExploding == null ? null : minecraftExploding.toJson(),
    "minecraft:hunting": minecraftHunting == null ? null : minecraftHunting.toJson(),
    "minecraft:charged_creeper": minecraftChargedCreeper == null ? null : minecraftChargedCreeper.toJson(),
    "minecraft:charged_exploding": minecraftChargedExploding == null ? null : minecraftChargedExploding.toJson(),
    "minecraft:dolphin_adult": minecraftDolphinAdult == null ? null : minecraftDolphinAdult.toJson(),
    "minecraft:dolphin_baby": minecraftDolphinBaby == null ? null : minecraftDolphinBaby.toJson(),
    "minecraft:dolphin_angry": minecraftDolphinAngry == null ? null : minecraftDolphinAngry.toJson(),
    "minecraft:dolphin_dried": minecraftDolphinDried == null ? null : minecraftDolphinDried.toJson(),
    "minecraft:dolphin_swimming_navigation": minecraftDolphinSwimmingNavigation == null ? null : minecraftDolphinSwimmingNavigation.toJson(),
    "minecraft:dolphin_on_land": minecraftDolphinOnLand == null ? null : minecraftDolphinOnLand.toJson(),
    "minecraft:dolphin_on_land_in_rain": minecraftDolphinOnLandInRain == null ? null : minecraftDolphinOnLandInRain.toJson(),
    "minecraft:donkey_baby": minecraftDonkeyBaby == null ? null : minecraftDonkeyBaby.toJson(),
    "minecraft:donkey_adult": minecraftDonkeyAdult == null ? null : minecraftDonkeyAdult.toJson(),
    "minecraft:donkey_wild": minecraftDonkeyWild == null ? null : minecraftDonkeyWild.toJson(),
    "minecraft:donkey_tamed": minecraftDonkeyTamed == null ? null : minecraftDonkeyTamed.toJson(),
    "minecraft:donkey_unchested": minecraftDonkeyUnchested == null ? null : minecraftDonkeyUnchested.toJson(),
    "minecraft:donkey_chested": minecraftDonkeyChested == null ? null : minecraftDonkeyChested.toJson(),
    "minecraft:donkey_saddled": minecraftDonkeySaddled == null ? null : minecraftDonkeySaddled.toJson(),
    "minecraft:donkey_leashed": minecraftDonkeyLeashed == null ? null : minecraftDonkeyLeashed.toJson(),
    "minecraft:baby_drowned": minecraftBabyDrowned == null ? null : minecraftBabyDrowned.toJson(),
    "minecraft:adult_drowned": minecraftAdultDrowned == null ? null : minecraftAdultDrowned.toJson(),
    "minecraft:mode_switcher": minecraftModeSwitcher == null ? null : minecraftModeSwitcher.toJson(),
    "minecraft:ranged_mode": minecraftRangedMode == null ? null : minecraftRangedMode.toJson(),
    "minecraft:melee_mode": minecraftMeleeMode == null ? null : minecraftMeleeMode.toJson(),
    "minecraft:hunter_mode": minecraftHunterMode == null ? null : minecraftHunterMode.toJson(),
    "minecraft:wander_mode": minecraftWanderMode == null ? null : minecraftWanderMode.toJson(),
    "dragon_sitting": dragonSitting == null ? null : dragonSitting.toJson(),
    "dragon_flying": dragonFlying == null ? null : dragonFlying.toJson(),
    "dragon_death": dragonDeath == null ? null : dragonDeath.toJson(),
    "minecraft:enderman_calm": minecraftEndermanCalm == null ? null : minecraftEndermanCalm.toJson(),
    "minecraft:enderman_angry": minecraftEndermanAngry == null ? null : minecraftEndermanAngry.toJson(),
    "minecraft:guardian_aggressive": minecraftGuardianAggressive == null ? null : minecraftGuardianAggressive.toJson(),
    "minecraft:guardian_passive": minecraftGuardianPassive == null ? null : minecraftGuardianPassive.toJson(),
    "minecraft:horse_baby": minecraftHorseBaby == null ? null : minecraftHorseBaby.toJson(),
    "minecraft:horse_adult": minecraftHorseAdult == null ? null : minecraftHorseAdult.toJson(),
    "minecraft:horse_wild": minecraftHorseWild == null ? null : minecraftHorseWild.toJson(),
    "minecraft:horse_tamed": minecraftHorseTamed == null ? null : minecraftHorseTamed.toJson(),
    "minecraft:horse_leashed": minecraftHorseLeashed == null ? null : minecraftHorseLeashed.toJson(),
    "minecraft:horse_saddled": minecraftHorseSaddled == null ? null : minecraftHorseSaddled.toJson(),
    "minecraft:zombie_husk_baby": minecraftZombieHuskBaby == null ? null : minecraftZombieHuskBaby.toJson(),
    "minecraft:zombie_husk_adult": minecraftZombieHuskAdult == null ? null : minecraftZombieHuskAdult.toJson(),
    "minecraft:zombie_husk_jockey": minecraftZombieHuskJockey == null ? null : minecraftZombieHuskJockey.toJson(),
    "minecraft:leashed": minecraftLeashed == null ? null : minecraftLeashed.toJson(),
    "minecraft:player_created": minecraftPlayerCreated == null ? null : minecraftPlayerCreated.toJson(),
    "minecraft:village_created": minecraftVillageCreated == null ? null : minecraftVillageCreated.toJson(),
    "minecraft:llama_baby": minecraftLlamaBaby == null ? null : minecraftLlamaBaby.toJson(),
    "minecraft:llama_adult": minecraftLlamaAdult == null ? null : minecraftLlamaAdult.toJson(),
    "minecraft:strength_1": minecraftStrength1 == null ? null : minecraftStrength1.toJson(),
    "minecraft:strength_2": minecraftStrength2 == null ? null : minecraftStrength2.toJson(),
    "minecraft:strength_3": minecraftStrength3 == null ? null : minecraftStrength3.toJson(),
    "minecraft:strength_4": minecraftStrength4 == null ? null : minecraftStrength4.toJson(),
    "minecraft:strength_5": minecraftStrength5 == null ? null : minecraftStrength5.toJson(),
    "minecraft:llama_creamy": minecraftLlamaCreamy == null ? null : minecraftLlamaCreamy.toJson(),
    "minecraft:llama_white": minecraftLlamaWhite == null ? null : minecraftLlamaWhite.toJson(),
    "minecraft:llama_brown": minecraftLlamaBrown == null ? null : minecraftLlamaBrown.toJson(),
    "minecraft:llama_gray": minecraftLlamaGray == null ? null : minecraftLlamaGray.toJson(),
    "minecraft:llama_wild": minecraftLlamaWild == null ? null : minecraftLlamaWild.toJson(),
    "minecraft:llama_tamed": minecraftLlamaTamed == null ? null : minecraftLlamaTamed.toJson(),
    "minecraft:llama_unchested": minecraftLlamaUnchested == null ? null : minecraftLlamaUnchested.toJson(),
    "minecraft:llama_chested": minecraftLlamaChested == null ? null : minecraftLlamaChested.toJson(),
    "minecraft:llama_leashed": minecraftLlamaLeashed == null ? null : minecraftLlamaLeashed.toJson(),
    "minecraft:llama_angry": minecraftLlamaAngry == null ? null : minecraftLlamaAngry.toJson(),
    "minecraft:llama_angry_wolf": minecraftLlamaAngryWolf == null ? null : minecraftLlamaAngryWolf.toJson(),
    "minecraft:in_caravan": minecraftInCaravan == null ? null : minecraftInCaravan.toJson(),
    "minecraft:slime_large": minecraftSlimeLarge == null ? null : minecraftSlimeLarge.toJson(),
    "minecraft:slime_medium": minecraftSlimeMedium == null ? null : minecraftSlimeMedium.toJson(),
    "minecraft:slime_small": minecraftSlimeSmall == null ? null : minecraftSlimeSmall.toJson(),
    "minecraft:mooshroom_become_cow": minecraftMooshroomBecomeCow == null ? null : minecraftMooshroomBecomeCow.toJson(),
    "minecraft:baby": minecraftBaby == null ? null : minecraftBaby.toJson(),
    "minecraft:adult": minecraftAdult == null ? null : minecraftAdult.toJson(),
    "minecraft:wild": minecraftWild == null ? null : minecraftWild.toJson(),
    "minecraft:mule_tamed": minecraftMuleTamed == null ? null : minecraftMuleTamed.toJson(),
    "minecraft:mule_unchested": minecraftMuleUnchested == null ? null : minecraftMuleUnchested.toJson(),
    "minecraft:mule_chested": minecraftMuleChested == null ? null : minecraftMuleChested.toJson(),
    "minecraft:mule_leashed": minecraftMuleLeashed == null ? null : minecraftMuleLeashed.toJson(),
    "minecraft:tamed": minecraftTamed == null ? null : minecraftTamed.toJson(),
    "minecraft:tuxedo": minecraftTuxedo == null ? null : minecraftTuxedo.toJson(),
    "minecraft:tabby": minecraftTabby == null ? null : minecraftTabby.toJson(),
    "minecraft:siamese": minecraftSiamese == null ? null : minecraftSiamese.toJson(),
    "minecraft:parrot_red": minecraftParrotRed == null ? null : minecraftParrotRed.toJson(),
    "minecraft:parrot_blue": minecraftParrotBlue == null ? null : minecraftParrotBlue.toJson(),
    "minecraft:parrot_green": minecraftParrotGreen == null ? null : minecraftParrotGreen.toJson(),
    "minecraft:parrot_cyan": minecraftParrotCyan == null ? null : minecraftParrotCyan.toJson(),
    "minecraft:parrot_silver": minecraftParrotSilver == null ? null : minecraftParrotSilver.toJson(),
    "minecraft:parrot_adult": minecraftParrotAdult == null ? null : minecraftParrotAdult.toJson(),
    "minecraft:parrot_wild": minecraftParrotWild == null ? null : minecraftParrotWild.toJson(),
    "minecraft:parrot_tame": minecraftParrotTame == null ? null : minecraftParrotTame.toJson(),
    "minecraft:transformed": minecraftTransformed == null ? null : minecraftTransformed.toJson(),
    "minecraft:unsaddled": minecraftUnsaddled == null ? null : minecraftUnsaddled.toJson(),
    "minecraft:saddled": minecraftSaddled == null ? null : minecraftSaddled.toJson(),
    "minecraft:baby_wild": minecraftBabyWild == null ? null : minecraftBabyWild.toJson(),
    "minecraft:baby_scared": minecraftBabyScared == null ? null : minecraftBabyScared.toJson(),
    "minecraft:adult_wild": minecraftAdultWild == null ? null : minecraftAdultWild.toJson(),
    "minecraft:adult_hostile": minecraftAdultHostile == null ? null : minecraftAdultHostile.toJson(),
    "minecraft:pufferfish_puffed": minecraftPufferfishPuffed == null ? null : minecraftPufferfishPuffed.toJson(),
    "minecraft:pufferfish_deflated": minecraftPufferfishDeflated == null ? null : minecraftPufferfishDeflated.toJson(),
    "coat_brown": coatBrown == null ? null : coatBrown.toJson(),
    "coat_white": coatWhite == null ? null : coatWhite.toJson(),
    "coat_black": coatBlack == null ? null : coatBlack.toJson(),
    "coat_splotched": coatSplotched == null ? null : coatSplotched.toJson(),
    "coat_desert": coatDesert == null ? null : coatDesert.toJson(),
    "coat_salt": coatSalt == null ? null : coatSalt.toJson(),
    "scale_small": scaleSmall == null ? null : scaleSmall.toJson(),
    "scale_normal": scaleNormal == null ? null : scaleNormal.toJson(),
    "scale_large": scaleLarge == null ? null : scaleLarge.toJson(),
    "minecraft:rideable_sheared": minecraftRideableSheared == null ? null : minecraftRideableSheared.toJson(),
    "minecraft:wooly": minecraftWooly == null ? null : minecraftWooly.toJson(),
    "minecraft:dyeable": minecraftDyeable == null ? null : minecraftDyeable.toJson(),
    "minecraft:sheared": minecraftSheared == null ? null : minecraftSheared.toJson(),
    "minecraft:sheep_white": minecraftSheepWhite == null ? null : minecraftSheepWhite.toJson(),
    "minecraft:sheep_brown": minecraftSheepBrown == null ? null : minecraftSheepBrown.toJson(),
    "minecraft:sheep_black": minecraftSheepBlack == null ? null : minecraftSheepBlack.toJson(),
    "minecraft:sheep_gray": minecraftSheepGray == null ? null : minecraftSheepGray.toJson(),
    "minecraft:sheep_light_gray": minecraftSheepLightGray == null ? null : minecraftSheepLightGray.toJson(),
    "minecraft:sheep_pink": minecraftSheepPink == null ? null : minecraftSheepPink.toJson(),
    "minecraft:shulker_purple": minecraftShulkerPurple == null ? null : minecraftShulkerPurple.toJson(),
    "minecraft:shulker_black": minecraftShulkerBlack == null ? null : minecraftShulkerBlack.toJson(),
    "minecraft:shulker_blue": minecraftShulkerBlue == null ? null : minecraftShulkerBlue.toJson(),
    "minecraft:shulker_brown": minecraftShulkerBrown == null ? null : minecraftShulkerBrown.toJson(),
    "minecraft:shulker_cyan": minecraftShulkerCyan == null ? null : minecraftShulkerCyan.toJson(),
    "minecraft:shulker_gray": minecraftShulkerGray == null ? null : minecraftShulkerGray.toJson(),
    "minecraft:shulker_green": minecraftShulkerGreen == null ? null : minecraftShulkerGreen.toJson(),
    "minecraft:shulker_light_blue": minecraftShulkerLightBlue == null ? null : minecraftShulkerLightBlue.toJson(),
    "minecraft:shulker_lime": minecraftShulkerLime == null ? null : minecraftShulkerLime.toJson(),
    "minecraft:shulker_magenta": minecraftShulkerMagenta == null ? null : minecraftShulkerMagenta.toJson(),
    "minecraft:shulker_orange": minecraftShulkerOrange == null ? null : minecraftShulkerOrange.toJson(),
    "minecraft:shulker_pink": minecraftShulkerPink == null ? null : minecraftShulkerPink.toJson(),
    "minecraft:shulker_red": minecraftShulkerRed == null ? null : minecraftShulkerRed.toJson(),
    "minecraft:shulker_silver": minecraftShulkerSilver == null ? null : minecraftShulkerSilver.toJson(),
    "minecraft:shulker_white": minecraftShulkerWhite == null ? null : minecraftShulkerWhite.toJson(),
    "minecraft:shulker_yellow": minecraftShulkerYellow == null ? null : minecraftShulkerYellow.toJson(),
    "minecraft:calm": minecraftCalm == null ? null : minecraftCalm.toJson(),
    "minecraft:angry": minecraftAngry == null ? null : minecraftAngry.toJson(),
    "trap": trap == null ? null : trap.toJson(),
    "trap_spawned": trapSpawned == null ? null : trapSpawned.toJson(),
    "minecraft:jockey": minecraftJockey == null ? null : minecraftJockey.toJson(),
    "minecraft:hostile": minecraftHostile == null ? null : minecraftHostile.toJson(),
    "minecraft:neutral": minecraftNeutral == null ? null : minecraftNeutral.toJson(),
    "minecraft:revert_to_skeleton": minecraftRevertToSkeleton == null ? null : minecraftRevertToSkeleton.toJson(),
    "minecraft:pregnant": minecraftPregnant == null ? null : minecraftPregnant.toJson(),
    "minecraft:wants_to_lay_egg": minecraftWantsToLayEgg == null ? null : minecraftWantsToLayEgg.toJson(),
    "become_witch": becomeWitch == null ? null : becomeWitch.toJson(),
    "become_zombie": becomeZombie == null ? null : becomeZombie.toJson(),
    "behavior_peasant": behaviorPeasant == null ? null : behaviorPeasant.toJson(),
    "behavior_non_peasant": behaviorNonPeasant == null ? null : behaviorNonPeasant.toJson(),
    "farmer": farmer == null ? null : farmer.toJson(),
    "fisherman": fisherman == null ? null : fisherman.toJson(),
    "shepherd": shepherd == null ? null : shepherd.toJson(),
    "fletcher": fletcher == null ? null : fletcher.toJson(),
    "librarian": librarian == null ? null : librarian.toJson(),
    "cleric": cleric == null ? null : cleric.toJson(),
    "armorer": armorer == null ? null : armorer.toJson(),
    "weaponsmith": weaponsmith == null ? null : weaponsmith.toJson(),
    "toolsmith": toolsmith == null ? null : toolsmith.toJson(),
    "butcher": butcher == null ? null : butcher.toJson(),
    "leatherworker": leatherworker == null ? null : leatherworker.toJson(),
    "minecraft:vindicator_aggro": minecraftVindicatorAggro == null ? null : minecraftVindicatorAggro.toJson(),
    "minecraft:vindicator_johnny": minecraftVindicatorJohnny == null ? null : minecraftVindicatorJohnny.toJson(),
    "to_villager": toVillager == null ? null : toVillager.toJson(),
  };
}

class Armorer {
  MinecraftTypeFamily minecraftTypeFamily;
  MinecraftFlyingSpeed minecraftVariant;

  Armorer({
    this.minecraftTypeFamily,
    this.minecraftVariant,
  });

  factory Armorer.fromJson(Map<String, dynamic> json) => new Armorer(
    minecraftTypeFamily: MinecraftTypeFamily.fromJson(json["minecraft:type_family"]),
    minecraftVariant: MinecraftFlyingSpeed.fromJson(json["minecraft:variant"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:type_family": minecraftTypeFamily.toJson(),
    "minecraft:variant": minecraftVariant.toJson(),
  };
}

class MinecraftTypeFamily {
  List<String> family;

  MinecraftTypeFamily({
    this.family,
  });

  factory MinecraftTypeFamily.fromJson(Map<String, dynamic> json) => new MinecraftTypeFamily(
    family: new List<String>.from(json["family"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "family": new List<dynamic>.from(family.map((x) => x)),
  };
}

class MinecraftFlyingSpeed {
  double value;

  MinecraftFlyingSpeed({
    this.value,
  });

  factory MinecraftFlyingSpeed.fromJson(Map<String, dynamic> json) => new MinecraftFlyingSpeed(
    value: json["value"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "value": value,
  };
}

class BecomeWitch {
  BecomeWitchMinecraftTransformation minecraftTransformation;

  BecomeWitch({
    this.minecraftTransformation,
  });

  factory BecomeWitch.fromJson(Map<String, dynamic> json) => new BecomeWitch(
    minecraftTransformation: BecomeWitchMinecraftTransformation.fromJson(json["minecraft:transformation"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:transformation": minecraftTransformation.toJson(),
  };
}

class BecomeWitchMinecraftTransformation {
  String into;
  double delay;

  BecomeWitchMinecraftTransformation({
    this.into,
    this.delay,
  });

  factory BecomeWitchMinecraftTransformation.fromJson(Map<String, dynamic> json) => new BecomeWitchMinecraftTransformation(
    into: json["into"],
    delay: json["delay"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "into": into,
    "delay": delay,
  };
}

class BecomeZombie {
  BecomeZombieMinecraftTransformation minecraftTransformation;

  BecomeZombie({
    this.minecraftTransformation,
  });

  factory BecomeZombie.fromJson(Map<String, dynamic> json) => new BecomeZombie(
    minecraftTransformation: BecomeZombieMinecraftTransformation.fromJson(json["minecraft:transformation"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:transformation": minecraftTransformation.toJson(),
  };
}

class BecomeZombieMinecraftTransformation {
  String into;

  BecomeZombieMinecraftTransformation({
    this.into,
  });

  factory BecomeZombieMinecraftTransformation.fromJson(Map<String, dynamic> json) => new BecomeZombieMinecraftTransformation(
    into: json["into"],
  );

  Map<String, dynamic> toJson() => {
    "into": into,
  };
}

class BehaviorNonPeasant {
  BehaviorNonPeasantMinecraftBehaviorShareItems minecraftBehaviorShareItems;

  BehaviorNonPeasant({
    this.minecraftBehaviorShareItems,
  });

  factory BehaviorNonPeasant.fromJson(Map<String, dynamic> json) => new BehaviorNonPeasant(
    minecraftBehaviorShareItems: BehaviorNonPeasantMinecraftBehaviorShareItems.fromJson(json["minecraft:behavior.share_items"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:behavior.share_items": minecraftBehaviorShareItems.toJson(),
  };
}

class BehaviorNonPeasantMinecraftBehaviorShareItems {
  int priority;
  MinecraftBehaviorShareItemsFilters filters;
  List<TargetEntityItem> targetEntityItems;
  List<PurpleItemsFilter> itemsFilter;

  BehaviorNonPeasantMinecraftBehaviorShareItems({
    this.priority,
    this.filters,
    this.targetEntityItems,
    this.itemsFilter,
  });

  factory BehaviorNonPeasantMinecraftBehaviorShareItems.fromJson(Map<String, dynamic> json) => new BehaviorNonPeasantMinecraftBehaviorShareItems(
    priority: json["priority"],
    filters: MinecraftBehaviorShareItemsFilters.fromJson(json["filters"]),
    targetEntityItems: new List<TargetEntityItem>.from(json["target_entity_items"].map((x) => TargetEntityItem.fromJson(x))),
    itemsFilter: new List<PurpleItemsFilter>.from(json["items_filter"].map((x) => PurpleItemsFilter.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "filters": filters.toJson(),
    "target_entity_items": new List<dynamic>.from(targetEntityItems.map((x) => x.toJson())),
    "items_filter": new List<dynamic>.from(itemsFilter.map((x) => x.toJson())),
  };
}

class MinecraftBehaviorShareItemsFilters {
  List<String> otherWithFamilies;

  MinecraftBehaviorShareItemsFilters({
    this.otherWithFamilies,
  });

  factory MinecraftBehaviorShareItemsFilters.fromJson(Map<String, dynamic> json) => new MinecraftBehaviorShareItemsFilters(
    otherWithFamilies: new List<String>.from(json["other_with_families"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "other_with_families": new List<dynamic>.from(otherWithFamilies.map((x) => x)),
  };
}

class PurpleItemsFilter {
  int minCount;
  String item;

  PurpleItemsFilter({
    this.minCount,
    this.item,
  });

  factory PurpleItemsFilter.fromJson(Map<String, dynamic> json) => new PurpleItemsFilter(
    minCount: json["min_count"],
    item: json["item"],
  );

  Map<String, dynamic> toJson() => {
    "min_count": minCount,
    "item": item,
  };
}

class TargetEntityItem {
  int maxCount;
  String item;

  TargetEntityItem({
    this.maxCount,
    this.item,
  });

  factory TargetEntityItem.fromJson(Map<String, dynamic> json) => new TargetEntityItem(
    maxCount: json["max_count"],
    item: json["item"],
  );

  Map<String, dynamic> toJson() => {
    "max_count": maxCount,
    "item": item,
  };
}

class BehaviorPeasant {
  BehaviorPeasantMinecraftBehaviorShareItems minecraftBehaviorShareItems;
  MinecraftBehaviorFleeSunClass minecraftBehaviorHarvestFarmBlock;

  BehaviorPeasant({
    this.minecraftBehaviorShareItems,
    this.minecraftBehaviorHarvestFarmBlock,
  });

  factory BehaviorPeasant.fromJson(Map<String, dynamic> json) => new BehaviorPeasant(
    minecraftBehaviorShareItems: BehaviorPeasantMinecraftBehaviorShareItems.fromJson(json["minecraft:behavior.share_items"]),
    minecraftBehaviorHarvestFarmBlock: MinecraftBehaviorFleeSunClass.fromJson(json["minecraft:behavior.harvest_farm_block"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:behavior.share_items": minecraftBehaviorShareItems.toJson(),
    "minecraft:behavior.harvest_farm_block": minecraftBehaviorHarvestFarmBlock.toJson(),
  };
}

class MinecraftBehaviorFleeSunClass {
  int priority;
  double speedMultiplier;

  MinecraftBehaviorFleeSunClass({
    this.priority,
    this.speedMultiplier,
  });

  factory MinecraftBehaviorFleeSunClass.fromJson(Map<String, dynamic> json) => new MinecraftBehaviorFleeSunClass(
    priority: json["priority"],
    speedMultiplier: json["speed_multiplier"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "speed_multiplier": speedMultiplier,
  };
}

class BehaviorPeasantMinecraftBehaviorShareItems {
  int priority;
  MinecraftBehaviorShareItemsFilters filters;
  List<TargetEntityItem> targetEntityItems;
  List<FluffyItemsFilter> itemsFilter;

  BehaviorPeasantMinecraftBehaviorShareItems({
    this.priority,
    this.filters,
    this.targetEntityItems,
    this.itemsFilter,
  });

  factory BehaviorPeasantMinecraftBehaviorShareItems.fromJson(Map<String, dynamic> json) => new BehaviorPeasantMinecraftBehaviorShareItems(
    priority: json["priority"],
    filters: MinecraftBehaviorShareItemsFilters.fromJson(json["filters"]),
    targetEntityItems: new List<TargetEntityItem>.from(json["target_entity_items"].map((x) => TargetEntityItem.fromJson(x))),
    itemsFilter: new List<FluffyItemsFilter>.from(json["items_filter"].map((x) => FluffyItemsFilter.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "filters": filters.toJson(),
    "target_entity_items": new List<dynamic>.from(targetEntityItems.map((x) => x.toJson())),
    "items_filter": new List<dynamic>.from(itemsFilter.map((x) => x.toJson())),
  };
}

class FluffyItemsFilter {
  int minCount;
  String item;
  String craftInto;

  FluffyItemsFilter({
    this.minCount,
    this.item,
    this.craftInto,
  });

  factory FluffyItemsFilter.fromJson(Map<String, dynamic> json) => new FluffyItemsFilter(
    minCount: json["min_count"],
    item: json["item"],
    craftInto: json["craft_into"] == null ? null : json["craft_into"],
  );

  Map<String, dynamic> toJson() => {
    "min_count": minCount,
    "item": item,
    "craft_into": craftInto == null ? null : craftInto,
  };
}

class PortoCamel {
  MinecraftFlyingSpeed minecraftVariant;

  PortoCamel({
    this.minecraftVariant,
  });

  factory PortoCamel.fromJson(Map<String, dynamic> json) => new PortoCamel(
    minecraftVariant: MinecraftFlyingSpeed.fromJson(json["minecraft:variant"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:variant": minecraftVariant.toJson(),
  };
}

class DragonDeath {
  SantiagoDeCaliRaven minecraftBehaviorDragondeath;

  DragonDeath({
    this.minecraftBehaviorDragondeath,
  });

  factory DragonDeath.fromJson(Map<String, dynamic> json) => new DragonDeath(
    minecraftBehaviorDragondeath: SantiagoDeCaliRaven.fromJson(json["minecraft:behavior.dragondeath"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:behavior.dragondeath": minecraftBehaviorDragondeath.toJson(),
  };
}

class SantiagoDeCaliRaven {
  int priority;

  SantiagoDeCaliRaven({
    this.priority,
  });

  factory SantiagoDeCaliRaven.fromJson(Map<String, dynamic> json) => new SantiagoDeCaliRaven(
    priority: json["priority"],
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
  };
}

class DragonFlying {
  SantiagoDeCaliRaven minecraftBehaviorDragontakeoff;
  SantiagoDeCaliRaven minecraftBehaviorDragonchargeplayer;
  SantiagoDeCaliRaven minecraftBehaviorDragonstrafeplayer;
  SantiagoDeCaliRaven minecraftBehaviorDragonholdingpattern;
  DragonFlyingMinecraftShooter minecraftShooter;

  DragonFlying({
    this.minecraftBehaviorDragontakeoff,
    this.minecraftBehaviorDragonchargeplayer,
    this.minecraftBehaviorDragonstrafeplayer,
    this.minecraftBehaviorDragonholdingpattern,
    this.minecraftShooter,
  });

  factory DragonFlying.fromJson(Map<String, dynamic> json) => new DragonFlying(
    minecraftBehaviorDragontakeoff: SantiagoDeCaliRaven.fromJson(json["minecraft:behavior.dragontakeoff"]),
    minecraftBehaviorDragonchargeplayer: SantiagoDeCaliRaven.fromJson(json["minecraft:behavior.dragonchargeplayer"]),
    minecraftBehaviorDragonstrafeplayer: SantiagoDeCaliRaven.fromJson(json["minecraft:behavior.dragonstrafeplayer"]),
    minecraftBehaviorDragonholdingpattern: SantiagoDeCaliRaven.fromJson(json["minecraft:behavior.dragonholdingpattern"]),
    minecraftShooter: DragonFlyingMinecraftShooter.fromJson(json["minecraft:shooter"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:behavior.dragontakeoff": minecraftBehaviorDragontakeoff.toJson(),
    "minecraft:behavior.dragonchargeplayer": minecraftBehaviorDragonchargeplayer.toJson(),
    "minecraft:behavior.dragonstrafeplayer": minecraftBehaviorDragonstrafeplayer.toJson(),
    "minecraft:behavior.dragonholdingpattern": minecraftBehaviorDragonholdingpattern.toJson(),
    "minecraft:shooter": minecraftShooter.toJson(),
  };
}

class DragonFlyingMinecraftShooter {
  String type;
  String def;

  DragonFlyingMinecraftShooter({
    this.type,
    this.def,
  });

  factory DragonFlyingMinecraftShooter.fromJson(Map<String, dynamic> json) => new DragonFlyingMinecraftShooter(
    type: json["type"],
    def: json["def"],
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "def": def,
  };
}

class DragonSitting {
  SantiagoDeCaliRaven minecraftBehaviorDragonlanding;
  SantiagoDeCaliRaven minecraftBehaviorDragonflaming;
  SantiagoDeCaliRaven minecraftBehaviorDragonscanning;

  DragonSitting({
    this.minecraftBehaviorDragonlanding,
    this.minecraftBehaviorDragonflaming,
    this.minecraftBehaviorDragonscanning,
  });

  factory DragonSitting.fromJson(Map<String, dynamic> json) => new DragonSitting(
    minecraftBehaviorDragonlanding: SantiagoDeCaliRaven.fromJson(json["minecraft:behavior.dragonlanding"]),
    minecraftBehaviorDragonflaming: SantiagoDeCaliRaven.fromJson(json["minecraft:behavior.dragonflaming"]),
    minecraftBehaviorDragonscanning: SantiagoDeCaliRaven.fromJson(json["minecraft:behavior.dragonscanning"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:behavior.dragonlanding": minecraftBehaviorDragonlanding.toJson(),
    "minecraft:behavior.dragonflaming": minecraftBehaviorDragonflaming.toJson(),
    "minecraft:behavior.dragonscanning": minecraftBehaviorDragonscanning.toJson(),
  };
}

class MinecraftAdult {
  MinecraftEquipment minecraftLoot;
  MinecraftBehaviorFleeSunClass minecraftBehaviorRunAroundLikeCrazy;
  MinecraftAttackDamageClass minecraftScale;
  PurpleMinecraftBehavior minecraftBehaviorBreed;
  MinecraftAdultMinecraftBreedable minecraftBreedable;
  MinecraftCollisionBox minecraftCollisionBox;
  MinecraftTypeFamily minecraftTypeFamily;
  MinecraftFlyingSpeed minecraftUnderwaterMovement;
  FluffyMinecraftBehavior minecraftBehaviorMoveToLand;
  MinecraftBehaviorRandomStroll minecraftBehaviorRandomStroll;
  SantiagoDeCaliRaven minecraftBehaviorMakeLove;
  SantiagoDeCaliRaven minecraftBehaviorReceiveLove;
  MinecraftAttackDamageClass minecraftMovement;
  DibrugarhFerrets minecraftBurnsInDaylight;
  MinecraftAdultMinecraftRideable minecraftRideable;

  MinecraftAdult({
    this.minecraftLoot,
    this.minecraftBehaviorRunAroundLikeCrazy,
    this.minecraftScale,
    this.minecraftBehaviorBreed,
    this.minecraftBreedable,
    this.minecraftCollisionBox,
    this.minecraftTypeFamily,
    this.minecraftUnderwaterMovement,
    this.minecraftBehaviorMoveToLand,
    this.minecraftBehaviorRandomStroll,
    this.minecraftBehaviorMakeLove,
    this.minecraftBehaviorReceiveLove,
    this.minecraftMovement,
    this.minecraftBurnsInDaylight,
    this.minecraftRideable,
  });

  factory MinecraftAdult.fromJson(Map<String, dynamic> json) => new MinecraftAdult(
    minecraftLoot: json["minecraft:loot"] == null ? null : MinecraftEquipment.fromJson(json["minecraft:loot"]),
    minecraftBehaviorRunAroundLikeCrazy: json["minecraft:behavior.run_around_like_crazy"] == null ? null : MinecraftBehaviorFleeSunClass.fromJson(json["minecraft:behavior.run_around_like_crazy"]),
    minecraftScale: json["minecraft:scale"] == null ? null : MinecraftAttackDamageClass.fromJson(json["minecraft:scale"]),
    minecraftBehaviorBreed: json["minecraft:behavior.breed"] == null ? null : PurpleMinecraftBehavior.fromJson(json["minecraft:behavior.breed"]),
    minecraftBreedable: json["minecraft:breedable"] == null ? null : MinecraftAdultMinecraftBreedable.fromJson(json["minecraft:breedable"]),
    minecraftCollisionBox: json["minecraft:collision_box"] == null ? null : MinecraftCollisionBox.fromJson(json["minecraft:collision_box"]),
    minecraftTypeFamily: json["minecraft:type_family"] == null ? null : MinecraftTypeFamily.fromJson(json["minecraft:type_family"]),
    minecraftUnderwaterMovement: json["minecraft:underwater_movement"] == null ? null : MinecraftFlyingSpeed.fromJson(json["minecraft:underwater_movement"]),
    minecraftBehaviorMoveToLand: json["minecraft:behavior.move_to_land"] == null ? null : FluffyMinecraftBehavior.fromJson(json["minecraft:behavior.move_to_land"]),
    minecraftBehaviorRandomStroll: json["minecraft:behavior.random_stroll"] == null ? null : MinecraftBehaviorRandomStroll.fromJson(json["minecraft:behavior.random_stroll"]),
    minecraftBehaviorMakeLove: json["minecraft:behavior.make_love"] == null ? null : SantiagoDeCaliRaven.fromJson(json["minecraft:behavior.make_love"]),
    minecraftBehaviorReceiveLove: json["minecraft:behavior.receive_love"] == null ? null : SantiagoDeCaliRaven.fromJson(json["minecraft:behavior.receive_love"]),
    minecraftMovement: json["minecraft:movement"] == null ? null : MinecraftAttackDamageClass.fromJson(json["minecraft:movement"]),
    minecraftBurnsInDaylight: json["minecraft:burns_in_daylight"] == null ? null : DibrugarhFerrets.fromJson(json["minecraft:burns_in_daylight"]),
    minecraftRideable: json["minecraft:rideable"] == null ? null : MinecraftAdultMinecraftRideable.fromJson(json["minecraft:rideable"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:loot": minecraftLoot == null ? null : minecraftLoot.toJson(),
    "minecraft:behavior.run_around_like_crazy": minecraftBehaviorRunAroundLikeCrazy == null ? null : minecraftBehaviorRunAroundLikeCrazy.toJson(),
    "minecraft:scale": minecraftScale == null ? null : minecraftScale.toJson(),
    "minecraft:behavior.breed": minecraftBehaviorBreed == null ? null : minecraftBehaviorBreed.toJson(),
    "minecraft:breedable": minecraftBreedable == null ? null : minecraftBreedable.toJson(),
    "minecraft:collision_box": minecraftCollisionBox == null ? null : minecraftCollisionBox.toJson(),
    "minecraft:type_family": minecraftTypeFamily == null ? null : minecraftTypeFamily.toJson(),
    "minecraft:underwater_movement": minecraftUnderwaterMovement == null ? null : minecraftUnderwaterMovement.toJson(),
    "minecraft:behavior.move_to_land": minecraftBehaviorMoveToLand == null ? null : minecraftBehaviorMoveToLand.toJson(),
    "minecraft:behavior.random_stroll": minecraftBehaviorRandomStroll == null ? null : minecraftBehaviorRandomStroll.toJson(),
    "minecraft:behavior.make_love": minecraftBehaviorMakeLove == null ? null : minecraftBehaviorMakeLove.toJson(),
    "minecraft:behavior.receive_love": minecraftBehaviorReceiveLove == null ? null : minecraftBehaviorReceiveLove.toJson(),
    "minecraft:movement": minecraftMovement == null ? null : minecraftMovement.toJson(),
    "minecraft:burns_in_daylight": minecraftBurnsInDaylight == null ? null : minecraftBurnsInDaylight.toJson(),
    "minecraft:rideable": minecraftRideable == null ? null : minecraftRideable.toJson(),
  };
}

class PurpleMinecraftBehavior {
  int priority;
  double speedMultiplier;
  double speedModifier;

  PurpleMinecraftBehavior({
    this.priority,
    this.speedMultiplier,
    this.speedModifier,
  });

  factory PurpleMinecraftBehavior.fromJson(Map<String, dynamic> json) => new PurpleMinecraftBehavior(
    priority: json["priority"],
    speedMultiplier: json["speed_multiplier"] == null ? null : json["speed_multiplier"].toDouble(),
    speedModifier: json["speed_modifier"] == null ? null : json["speed_modifier"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "speed_multiplier": speedMultiplier == null ? null : speedMultiplier,
    "speed_modifier": speedModifier == null ? null : speedModifier,
  };
}

class FluffyMinecraftBehavior {
  int priority;
  int searchRange;
  int searchHeight;
  double goalRadius;
  int searchCount;
  List<String> blocks;

  FluffyMinecraftBehavior({
    this.priority,
    this.searchRange,
    this.searchHeight,
    this.goalRadius,
    this.searchCount,
    this.blocks,
  });

  factory FluffyMinecraftBehavior.fromJson(Map<String, dynamic> json) => new FluffyMinecraftBehavior(
    priority: json["priority"],
    searchRange: json["search_range"],
    searchHeight: json["search_height"] == null ? null : json["search_height"],
    goalRadius: json["goal_radius"] == null ? null : json["goal_radius"].toDouble(),
    searchCount: json["search_count"] == null ? null : json["search_count"],
    blocks: json["blocks"] == null ? null : new List<String>.from(json["blocks"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "search_range": searchRange,
    "search_height": searchHeight == null ? null : searchHeight,
    "goal_radius": goalRadius == null ? null : goalRadius,
    "search_count": searchCount == null ? null : searchCount,
    "blocks": blocks == null ? null : new List<dynamic>.from(blocks.map((x) => x)),
  };
}

class MinecraftBehaviorRandomStroll {
  int priority;
  int interval;

  MinecraftBehaviorRandomStroll({
    this.priority,
    this.interval,
  });

  factory MinecraftBehaviorRandomStroll.fromJson(Map<String, dynamic> json) => new MinecraftBehaviorRandomStroll(
    priority: json["priority"],
    interval: json["interval"],
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "interval": interval,
  };
}

class MinecraftAdultMinecraftBreedable {
  bool requireTame;
  List<BreedsWith> breedsWith;
  List<String> breedItems;
  MutationFactor mutationFactor;
  bool causesPregnancy;

  MinecraftAdultMinecraftBreedable({
    this.requireTame,
    this.breedsWith,
    this.breedItems,
    this.mutationFactor,
    this.causesPregnancy,
  });

  factory MinecraftAdultMinecraftBreedable.fromJson(Map<String, dynamic> json) => new MinecraftAdultMinecraftBreedable(
    requireTame: json["requireTame"],
    breedsWith: new List<BreedsWith>.from(json["breedsWith"].map((x) => BreedsWith.fromJson(x))),
    breedItems: new List<String>.from(json["breedItems"].map((x) => x)),
    mutationFactor: json["mutation_factor"] == null ? null : MutationFactor.fromJson(json["mutation_factor"]),
    causesPregnancy: json["causes_pregnancy"] == null ? null : json["causes_pregnancy"],
  );

  Map<String, dynamic> toJson() => {
    "requireTame": requireTame,
    "breedsWith": new List<dynamic>.from(breedsWith.map((x) => x.toJson())),
    "breedItems": new List<dynamic>.from(breedItems.map((x) => x)),
    "mutation_factor": mutationFactor == null ? null : mutationFactor.toJson(),
    "causes_pregnancy": causesPregnancy == null ? null : causesPregnancy,
  };
}

class BreedsWith {
  String mateType;
  String babyType;
  NordSugarGliders breedEvent;

  BreedsWith({
    this.mateType,
    this.babyType,
    this.breedEvent,
  });

  factory BreedsWith.fromJson(Map<String, dynamic> json) => new BreedsWith(
    mateType: json["mateType"],
    babyType: json["babyType"],
    breedEvent: json["breed_event"] == null ? null : NordSugarGliders.fromJson(json["breed_event"]),
  );

  Map<String, dynamic> toJson() => {
    "mateType": mateType,
    "babyType": babyType,
    "breed_event": breedEvent == null ? null : breedEvent.toJson(),
  };
}

class NordSugarGliders {
  String event;
  Target target;

  NordSugarGliders({
    this.event,
    this.target,
  });

  factory NordSugarGliders.fromJson(Map<String, dynamic> json) => new NordSugarGliders(
    event: json["event"],
    target: targetValues.map[json["target"]],
  );

  Map<String, dynamic> toJson() => {
    "event": event,
    "target": targetValues.reverse[target],
  };
}

enum Target { BABY, SELF }

final targetValues = new EnumValues({
  "baby": Target.BABY,
  "self": Target.SELF
});

class MutationFactor {
  double variant;

  MutationFactor({
    this.variant,
  });

  factory MutationFactor.fromJson(Map<String, dynamic> json) => new MutationFactor(
    variant: json["variant"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "variant": variant,
  };
}

class DibrugarhFerrets {
  DibrugarhFerrets();

  factory DibrugarhFerrets.fromJson(Map<String, dynamic> json) => new DibrugarhFerrets(
  );

  Map<String, dynamic> toJson() => {
  };
}

class MinecraftCollisionBox {
  double width;
  double height;

  MinecraftCollisionBox({
    this.width,
    this.height,
  });

  factory MinecraftCollisionBox.fromJson(Map<String, dynamic> json) => new MinecraftCollisionBox(
    width: json["width"].toDouble(),
    height: json["height"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "width": width,
    "height": height,
  };
}

class MinecraftEquipment {
  String table;

  MinecraftEquipment({
    this.table,
  });

  factory MinecraftEquipment.fromJson(Map<String, dynamic> json) => new MinecraftEquipment(
    table: json["table"],
  );

  Map<String, dynamic> toJson() => {
    "table": table,
  };
}

class MinecraftAttackDamageClass {
  double value;
  double max;

  MinecraftAttackDamageClass({
    this.value,
    this.max,
  });

  factory MinecraftAttackDamageClass.fromJson(Map<String, dynamic> json) => new MinecraftAttackDamageClass(
    value: json["value"].toDouble(),
    max: json["max"] == null ? null : json["max"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "value": value,
    "max": max == null ? null : max,
  };
}

class MinecraftAdultMinecraftRideable {
  int seatCount;
  List<String> familyTypes;
  List<PurpleSeat> seats;

  MinecraftAdultMinecraftRideable({
    this.seatCount,
    this.familyTypes,
    this.seats,
  });

  factory MinecraftAdultMinecraftRideable.fromJson(Map<String, dynamic> json) => new MinecraftAdultMinecraftRideable(
    seatCount: json["seat_count"],
    familyTypes: new List<String>.from(json["family_types"].map((x) => x)),
    seats: new List<PurpleSeat>.from(json["seats"].map((x) => PurpleSeat.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "seat_count": seatCount,
    "family_types": new List<dynamic>.from(familyTypes.map((x) => x)),
    "seats": new List<dynamic>.from(seats.map((x) => x.toJson())),
  };
}

class PurpleSeat {
  List<double> position;
  int lockRiderRotation;

  PurpleSeat({
    this.position,
    this.lockRiderRotation,
  });

  factory PurpleSeat.fromJson(Map<String, dynamic> json) => new PurpleSeat(
    position: new List<double>.from(json["position"].map((x) => x.toDouble())),
    lockRiderRotation: json["lock_rider_rotation"],
  );

  Map<String, dynamic> toJson() => {
    "position": new List<dynamic>.from(position.map((x) => x)),
    "lock_rider_rotation": lockRiderRotation,
  };
}

class MinecraftAdultDrownedClass {
  MinecraftEquipment minecraftLoot;

  MinecraftAdultDrownedClass({
    this.minecraftLoot,
  });

  factory MinecraftAdultDrownedClass.fromJson(Map<String, dynamic> json) => new MinecraftAdultDrownedClass(
    minecraftLoot: MinecraftEquipment.fromJson(json["minecraft:loot"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:loot": minecraftLoot.toJson(),
  };
}

class MinecraftAdultHostile {
  MinecraftAdultHostileMinecraftAttack minecraftAttack;
  MinecraftAdultHostileMinecraftAngry minecraftAngry;
  MinecraftBehaviorAttack minecraftBehaviorStompAttack;

  MinecraftAdultHostile({
    this.minecraftAttack,
    this.minecraftAngry,
    this.minecraftBehaviorStompAttack,
  });

  factory MinecraftAdultHostile.fromJson(Map<String, dynamic> json) => new MinecraftAdultHostile(
    minecraftAttack: MinecraftAdultHostileMinecraftAttack.fromJson(json["minecraft:attack"]),
    minecraftAngry: MinecraftAdultHostileMinecraftAngry.fromJson(json["minecraft:angry"]),
    minecraftBehaviorStompAttack: MinecraftBehaviorAttack.fromJson(json["minecraft:behavior.stomp_attack"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:attack": minecraftAttack.toJson(),
    "minecraft:angry": minecraftAngry.toJson(),
    "minecraft:behavior.stomp_attack": minecraftBehaviorStompAttack.toJson(),
  };
}

class MinecraftAdultHostileMinecraftAngry {
  int duration;
  bool broadcastAnger;
  int broadcastRange;
  NordSugarGliders calmEvent;

  MinecraftAdultHostileMinecraftAngry({
    this.duration,
    this.broadcastAnger,
    this.broadcastRange,
    this.calmEvent,
  });

  factory MinecraftAdultHostileMinecraftAngry.fromJson(Map<String, dynamic> json) => new MinecraftAdultHostileMinecraftAngry(
    duration: json["duration"],
    broadcastAnger: json["broadcastAnger"],
    broadcastRange: json["broadcastRange"] == null ? null : json["broadcastRange"],
    calmEvent: NordSugarGliders.fromJson(json["calm_event"]),
  );

  Map<String, dynamic> toJson() => {
    "duration": duration,
    "broadcastAnger": broadcastAnger,
    "broadcastRange": broadcastRange == null ? null : broadcastRange,
    "calm_event": calmEvent.toJson(),
  };
}

class MinecraftAdultHostileMinecraftAttack {
  int damage;

  MinecraftAdultHostileMinecraftAttack({
    this.damage,
  });

  factory MinecraftAdultHostileMinecraftAttack.fromJson(Map<String, dynamic> json) => new MinecraftAdultHostileMinecraftAttack(
    damage: json["damage"],
  );

  Map<String, dynamic> toJson() => {
    "damage": damage,
  };
}

class MinecraftBehaviorAttack {
  int priority;
  bool trackTarget;

  MinecraftBehaviorAttack({
    this.priority,
    this.trackTarget,
  });

  factory MinecraftBehaviorAttack.fromJson(Map<String, dynamic> json) => new MinecraftBehaviorAttack(
    priority: json["priority"],
    trackTarget: json["track_target"],
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "track_target": trackTarget,
  };
}

class MinecraftAdultWild {
  NordSugarGliders minecraftOnTargetAcquired;
  NordSugarGliders minecraftOnHurtByPlayer;
  NordSugarGliders minecraftOnFriendlyAnger;

  MinecraftAdultWild({
    this.minecraftOnTargetAcquired,
    this.minecraftOnHurtByPlayer,
    this.minecraftOnFriendlyAnger,
  });

  factory MinecraftAdultWild.fromJson(Map<String, dynamic> json) => new MinecraftAdultWild(
    minecraftOnTargetAcquired: NordSugarGliders.fromJson(json["minecraft:on_target_acquired"]),
    minecraftOnHurtByPlayer: NordSugarGliders.fromJson(json["minecraft:on_hurt_by_player"]),
    minecraftOnFriendlyAnger: NordSugarGliders.fromJson(json["minecraft:on_friendly_anger"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:on_target_acquired": minecraftOnTargetAcquired.toJson(),
    "minecraft:on_hurt_by_player": minecraftOnHurtByPlayer.toJson(),
    "minecraft:on_friendly_anger": minecraftOnFriendlyAnger.toJson(),
  };
}

class ComponentGroupsMinecraftAngry {
  MinecraftAdultHostileMinecraftAngry minecraftAngry;
  MinecraftAngryMinecraftBehaviorMeleeAttack minecraftBehaviorMeleeAttack;
  SantiagoDeCaliRaven minecraftBehaviorSilverfishWakeUpFriends;
  MinecraftAngryMinecraftBehaviorNearestAttackableTarget minecraftBehaviorNearestAttackableTarget;
  MinecraftAngryMinecraftBehaviorLeapAtTarget minecraftBehaviorLeapAtTarget;
  DibrugarhFerrets minecraftOnTargetAcquired;

  ComponentGroupsMinecraftAngry({
    this.minecraftAngry,
    this.minecraftBehaviorMeleeAttack,
    this.minecraftBehaviorSilverfishWakeUpFriends,
    this.minecraftBehaviorNearestAttackableTarget,
    this.minecraftBehaviorLeapAtTarget,
    this.minecraftOnTargetAcquired,
  });

  factory ComponentGroupsMinecraftAngry.fromJson(Map<String, dynamic> json) => new ComponentGroupsMinecraftAngry(
    minecraftAngry: MinecraftAdultHostileMinecraftAngry.fromJson(json["minecraft:angry"]),
    minecraftBehaviorMeleeAttack: json["minecraft:behavior.melee_attack"] == null ? null : MinecraftAngryMinecraftBehaviorMeleeAttack.fromJson(json["minecraft:behavior.melee_attack"]),
    minecraftBehaviorSilverfishWakeUpFriends: json["minecraft:behavior.silverfish_wake_up_friends"] == null ? null : SantiagoDeCaliRaven.fromJson(json["minecraft:behavior.silverfish_wake_up_friends"]),
    minecraftBehaviorNearestAttackableTarget: json["minecraft:behavior.nearest_attackable_target"] == null ? null : MinecraftAngryMinecraftBehaviorNearestAttackableTarget.fromJson(json["minecraft:behavior.nearest_attackable_target"]),
    minecraftBehaviorLeapAtTarget: json["minecraft:behavior.leap_at_target"] == null ? null : MinecraftAngryMinecraftBehaviorLeapAtTarget.fromJson(json["minecraft:behavior.leap_at_target"]),
    minecraftOnTargetAcquired: json["minecraft:on_target_acquired"] == null ? null : DibrugarhFerrets.fromJson(json["minecraft:on_target_acquired"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:angry": minecraftAngry.toJson(),
    "minecraft:behavior.melee_attack": minecraftBehaviorMeleeAttack == null ? null : minecraftBehaviorMeleeAttack.toJson(),
    "minecraft:behavior.silverfish_wake_up_friends": minecraftBehaviorSilverfishWakeUpFriends == null ? null : minecraftBehaviorSilverfishWakeUpFriends.toJson(),
    "minecraft:behavior.nearest_attackable_target": minecraftBehaviorNearestAttackableTarget == null ? null : minecraftBehaviorNearestAttackableTarget.toJson(),
    "minecraft:behavior.leap_at_target": minecraftBehaviorLeapAtTarget == null ? null : minecraftBehaviorLeapAtTarget.toJson(),
    "minecraft:on_target_acquired": minecraftOnTargetAcquired == null ? null : minecraftOnTargetAcquired.toJson(),
  };
}

class MinecraftAngryMinecraftBehaviorLeapAtTarget {
  int priority;
  double yd;
  bool mustBeOnGround;

  MinecraftAngryMinecraftBehaviorLeapAtTarget({
    this.priority,
    this.yd,
    this.mustBeOnGround,
  });

  factory MinecraftAngryMinecraftBehaviorLeapAtTarget.fromJson(Map<String, dynamic> json) => new MinecraftAngryMinecraftBehaviorLeapAtTarget(
    priority: json["priority"],
    yd: json["yd"].toDouble(),
    mustBeOnGround: json["must_be_on_ground"],
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "yd": yd,
    "must_be_on_ground": mustBeOnGround,
  };
}

class MinecraftAngryMinecraftBehaviorMeleeAttack {
  int priority;
  int speedMultiplier;
  bool trackTarget;
  int randomStopInterval;
  double reachMultiplier;

  MinecraftAngryMinecraftBehaviorMeleeAttack({
    this.priority,
    this.speedMultiplier,
    this.trackTarget,
    this.randomStopInterval,
    this.reachMultiplier,
  });

  factory MinecraftAngryMinecraftBehaviorMeleeAttack.fromJson(Map<String, dynamic> json) => new MinecraftAngryMinecraftBehaviorMeleeAttack(
    priority: json["priority"],
    speedMultiplier: json["speed_multiplier"],
    trackTarget: json["track_target"],
    randomStopInterval: json["random_stop_interval"] == null ? null : json["random_stop_interval"],
    reachMultiplier: json["reach_multiplier"] == null ? null : json["reach_multiplier"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "speed_multiplier": speedMultiplier,
    "track_target": trackTarget,
    "random_stop_interval": randomStopInterval == null ? null : randomStopInterval,
    "reach_multiplier": reachMultiplier == null ? null : reachMultiplier,
  };
}

class MinecraftAngryMinecraftBehaviorNearestAttackableTarget {
  int priority;
  List<PurpleEntityType> entityTypes;
  int attackInterval;
  bool mustSee;
  int attackIntervalMin;

  MinecraftAngryMinecraftBehaviorNearestAttackableTarget({
    this.priority,
    this.entityTypes,
    this.attackInterval,
    this.mustSee,
    this.attackIntervalMin,
  });

  factory MinecraftAngryMinecraftBehaviorNearestAttackableTarget.fromJson(Map<String, dynamic> json) => new MinecraftAngryMinecraftBehaviorNearestAttackableTarget(
    priority: json["priority"],
    entityTypes: new List<PurpleEntityType>.from(json["entity_types"].map((x) => PurpleEntityType.fromJson(x))),
    attackInterval: json["attack_interval"] == null ? null : json["attack_interval"],
    mustSee: json["must_see"] == null ? null : json["must_see"],
    attackIntervalMin: json["attack_interval_min"] == null ? null : json["attack_interval_min"],
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "entity_types": new List<dynamic>.from(entityTypes.map((x) => x.toJson())),
    "attack_interval": attackInterval == null ? null : attackInterval,
    "must_see": mustSee == null ? null : mustSee,
    "attack_interval_min": attackIntervalMin == null ? null : attackIntervalMin,
  };
}

class PurpleEntityType {
  MinecraftBehaviorShareItemsFilters filters;
  int maxDist;

  PurpleEntityType({
    this.filters,
    this.maxDist,
  });

  factory PurpleEntityType.fromJson(Map<String, dynamic> json) => new PurpleEntityType(
    filters: MinecraftBehaviorShareItemsFilters.fromJson(json["filters"]),
    maxDist: json["max_dist"],
  );

  Map<String, dynamic> toJson() => {
    "filters": filters.toJson(),
    "max_dist": maxDist,
  };
}

class MinecraftBaby {
  DibrugarhFerrets minecraftIsBaby;
  MinecraftScaleByAge minecraftScaleByAge;
  MinecraftBabyMinecraftAgeable minecraftAgeable;
  PurpleMinecraftBehavior minecraftBehaviorFollowParent;
  MinecraftAttackDamageClass minecraftScale;
  MinecraftTypeFamily minecraftTypeFamily;
  MinecraftCollisionBox minecraftCollisionBox;
  MinecraftFlyingSpeed minecraftUnderwaterMovement;
  FluffyMinecraftBehavior minecraftBehaviorMoveToWater;
  SantiagoDeCaliRaven minecraftBehaviorTakeFlower;
  MinecraftBehaviorFleeSunClass minecraftBehaviorPlay;
  MinecraftAttackDamageClass minecraftMovement;

  MinecraftBaby({
    this.minecraftIsBaby,
    this.minecraftScaleByAge,
    this.minecraftAgeable,
    this.minecraftBehaviorFollowParent,
    this.minecraftScale,
    this.minecraftTypeFamily,
    this.minecraftCollisionBox,
    this.minecraftUnderwaterMovement,
    this.minecraftBehaviorMoveToWater,
    this.minecraftBehaviorTakeFlower,
    this.minecraftBehaviorPlay,
    this.minecraftMovement,
  });

  factory MinecraftBaby.fromJson(Map<String, dynamic> json) => new MinecraftBaby(
    minecraftIsBaby: DibrugarhFerrets.fromJson(json["minecraft:is_baby"]),
    minecraftScaleByAge: json["minecraft:scale_by_age"] == null ? null : MinecraftScaleByAge.fromJson(json["minecraft:scale_by_age"]),
    minecraftAgeable: json["minecraft:ageable"] == null ? null : MinecraftBabyMinecraftAgeable.fromJson(json["minecraft:ageable"]),
    minecraftBehaviorFollowParent: json["minecraft:behavior.follow_parent"] == null ? null : PurpleMinecraftBehavior.fromJson(json["minecraft:behavior.follow_parent"]),
    minecraftScale: json["minecraft:scale"] == null ? null : MinecraftAttackDamageClass.fromJson(json["minecraft:scale"]),
    minecraftTypeFamily: json["minecraft:type_family"] == null ? null : MinecraftTypeFamily.fromJson(json["minecraft:type_family"]),
    minecraftCollisionBox: json["minecraft:collision_box"] == null ? null : MinecraftCollisionBox.fromJson(json["minecraft:collision_box"]),
    minecraftUnderwaterMovement: json["minecraft:underwater_movement"] == null ? null : MinecraftFlyingSpeed.fromJson(json["minecraft:underwater_movement"]),
    minecraftBehaviorMoveToWater: json["minecraft:behavior.move_to_water"] == null ? null : FluffyMinecraftBehavior.fromJson(json["minecraft:behavior.move_to_water"]),
    minecraftBehaviorTakeFlower: json["minecraft:behavior.take_flower"] == null ? null : SantiagoDeCaliRaven.fromJson(json["minecraft:behavior.take_flower"]),
    minecraftBehaviorPlay: json["minecraft:behavior.play"] == null ? null : MinecraftBehaviorFleeSunClass.fromJson(json["minecraft:behavior.play"]),
    minecraftMovement: json["minecraft:movement"] == null ? null : MinecraftAttackDamageClass.fromJson(json["minecraft:movement"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:is_baby": minecraftIsBaby.toJson(),
    "minecraft:scale_by_age": minecraftScaleByAge == null ? null : minecraftScaleByAge.toJson(),
    "minecraft:ageable": minecraftAgeable == null ? null : minecraftAgeable.toJson(),
    "minecraft:behavior.follow_parent": minecraftBehaviorFollowParent == null ? null : minecraftBehaviorFollowParent.toJson(),
    "minecraft:scale": minecraftScale == null ? null : minecraftScale.toJson(),
    "minecraft:type_family": minecraftTypeFamily == null ? null : minecraftTypeFamily.toJson(),
    "minecraft:collision_box": minecraftCollisionBox == null ? null : minecraftCollisionBox.toJson(),
    "minecraft:underwater_movement": minecraftUnderwaterMovement == null ? null : minecraftUnderwaterMovement.toJson(),
    "minecraft:behavior.move_to_water": minecraftBehaviorMoveToWater == null ? null : minecraftBehaviorMoveToWater.toJson(),
    "minecraft:behavior.take_flower": minecraftBehaviorTakeFlower == null ? null : minecraftBehaviorTakeFlower.toJson(),
    "minecraft:behavior.play": minecraftBehaviorPlay == null ? null : minecraftBehaviorPlay.toJson(),
    "minecraft:movement": minecraftMovement == null ? null : minecraftMovement.toJson(),
  };
}

class MinecraftBabyMinecraftAgeable {
  int duration;
  List<MinecraftAgeableFeedItem> feedItems;
  NordSugarGliders growUp;
  List<Item> dropItems;
  int threshold;
  Event event;

  MinecraftBabyMinecraftAgeable({
    this.duration,
    this.feedItems,
    this.growUp,
    this.dropItems,
    this.threshold,
    this.event,
  });

  factory MinecraftBabyMinecraftAgeable.fromJson(Map<String, dynamic> json) => new MinecraftBabyMinecraftAgeable(
    duration: json["duration"] == null ? null : json["duration"],
    feedItems: json["feedItems"] == null ? null : new List<MinecraftAgeableFeedItem>.from(json["feedItems"].map((x) => MinecraftAgeableFeedItem.fromJson(x))),
    growUp: json["grow_up"] == null ? null : NordSugarGliders.fromJson(json["grow_up"]),
    dropItems: json["drop_items"] == null ? null : new List<Item>.from(json["drop_items"].map((x) => Item.fromJson(x))),
    threshold: json["threshold"] == null ? null : json["threshold"],
    event: json["event"] == null ? null : Event.fromJson(json["event"]),
  );

  Map<String, dynamic> toJson() => {
    "duration": duration == null ? null : duration,
    "feedItems": feedItems == null ? null : new List<dynamic>.from(feedItems.map((x) => x.toJson())),
    "grow_up": growUp == null ? null : growUp.toJson(),
    "drop_items": dropItems == null ? null : new List<dynamic>.from(dropItems.map((x) => x.toJson())),
    "threshold": threshold == null ? null : threshold,
    "event": event == null ? null : event.toJson(),
  };
}

class Item {
  String item;

  Item({
    this.item,
  });

  factory Item.fromJson(Map<String, dynamic> json) => new Item(
    item: json["item"],
  );

  Map<String, dynamic> toJson() => {
    "item": item,
  };
}

class Event {
  String type;
  Target target;

  Event({
    this.type,
    this.target,
  });

  factory Event.fromJson(Map<String, dynamic> json) => new Event(
    type: json["type"],
    target: targetValues.map[json["target"]],
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "target": targetValues.reverse[target],
  };
}

class MinecraftAgeableFeedItem {
  String item;
  double growth;

  MinecraftAgeableFeedItem({
    this.item,
    this.growth,
  });

  factory MinecraftAgeableFeedItem.fromJson(Map<String, dynamic> json) => new MinecraftAgeableFeedItem(
    item: json["item"],
    growth: json["growth"] == null ? null : json["growth"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "item": item,
    "growth": growth == null ? null : growth,
  };
}

class MinecraftScaleByAge {
  double startScale;
  int endScale;

  MinecraftScaleByAge({
    this.startScale,
    this.endScale,
  });

  factory MinecraftScaleByAge.fromJson(Map<String, dynamic> json) => new MinecraftScaleByAge(
    startScale: json["start_scale"].toDouble(),
    endScale: json["end_scale"],
  );

  Map<String, dynamic> toJson() => {
    "start_scale": startScale,
    "end_scale": endScale,
  };
}

class MinecraftBabyDrownedClass {
  DibrugarhFerrets minecraftIsBaby;
  MinecraftFlyingSpeed minecraftScale;
  MinecraftFlyingSpeed minecraftMovement;
  MinecraftFlyingSpeed minecraftUnderwaterMovement;

  MinecraftBabyDrownedClass({
    this.minecraftIsBaby,
    this.minecraftScale,
    this.minecraftMovement,
    this.minecraftUnderwaterMovement,
  });

  factory MinecraftBabyDrownedClass.fromJson(Map<String, dynamic> json) => new MinecraftBabyDrownedClass(
    minecraftIsBaby: DibrugarhFerrets.fromJson(json["minecraft:is_baby"]),
    minecraftScale: MinecraftFlyingSpeed.fromJson(json["minecraft:scale"]),
    minecraftMovement: MinecraftFlyingSpeed.fromJson(json["minecraft:movement"]),
    minecraftUnderwaterMovement: json["minecraft:underwater_movement"] == null ? null : MinecraftFlyingSpeed.fromJson(json["minecraft:underwater_movement"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:is_baby": minecraftIsBaby.toJson(),
    "minecraft:scale": minecraftScale.toJson(),
    "minecraft:movement": minecraftMovement.toJson(),
    "minecraft:underwater_movement": minecraftUnderwaterMovement == null ? null : minecraftUnderwaterMovement.toJson(),
  };
}

class MinecraftBabyScaredClass {
  MinecraftAdultHostileMinecraftAngry minecraftAngry;

  MinecraftBabyScaredClass({
    this.minecraftAngry,
  });

  factory MinecraftBabyScaredClass.fromJson(Map<String, dynamic> json) => new MinecraftBabyScaredClass(
    minecraftAngry: MinecraftAdultHostileMinecraftAngry.fromJson(json["minecraft:angry"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:angry": minecraftAngry.toJson(),
  };
}

class MinecraftBabyWild {
  NordSugarGliders minecraftOnTargetAcquired;
  NordSugarGliders minecraftOnHurtByPlayer;
  MinecraftBehaviorFleeSunClass minecraftBehaviorPanic;
  MinecraftAngryMinecraftBehaviorNearestAttackableTarget minecraftBehaviorNearestAttackableTarget;

  MinecraftBabyWild({
    this.minecraftOnTargetAcquired,
    this.minecraftOnHurtByPlayer,
    this.minecraftBehaviorPanic,
    this.minecraftBehaviorNearestAttackableTarget,
  });

  factory MinecraftBabyWild.fromJson(Map<String, dynamic> json) => new MinecraftBabyWild(
    minecraftOnTargetAcquired: NordSugarGliders.fromJson(json["minecraft:on_target_acquired"]),
    minecraftOnHurtByPlayer: NordSugarGliders.fromJson(json["minecraft:on_hurt_by_player"]),
    minecraftBehaviorPanic: MinecraftBehaviorFleeSunClass.fromJson(json["minecraft:behavior.panic"]),
    minecraftBehaviorNearestAttackableTarget: MinecraftAngryMinecraftBehaviorNearestAttackableTarget.fromJson(json["minecraft:behavior.nearest_attackable_target"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:on_target_acquired": minecraftOnTargetAcquired.toJson(),
    "minecraft:on_hurt_by_player": minecraftOnHurtByPlayer.toJson(),
    "minecraft:behavior.panic": minecraftBehaviorPanic.toJson(),
    "minecraft:behavior.nearest_attackable_target": minecraftBehaviorNearestAttackableTarget.toJson(),
  };
}

class MinecraftCalm {
  NordSugarGliders minecraftOnTargetAcquired;

  MinecraftCalm({
    this.minecraftOnTargetAcquired,
  });

  factory MinecraftCalm.fromJson(Map<String, dynamic> json) => new MinecraftCalm(
    minecraftOnTargetAcquired: NordSugarGliders.fromJson(json["minecraft:on_target_acquired"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:on_target_acquired": minecraftOnTargetAcquired.toJson(),
  };
}

class MinecraftChargedCreeper {
  DibrugarhFerrets minecraftIsCharged;

  MinecraftChargedCreeper({
    this.minecraftIsCharged,
  });

  factory MinecraftChargedCreeper.fromJson(Map<String, dynamic> json) => new MinecraftChargedCreeper(
    minecraftIsCharged: DibrugarhFerrets.fromJson(json["minecraft:is_charged"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:is_charged": minecraftIsCharged.toJson(),
  };
}

class MinecraftExploding {
  MinecraftExplode minecraftExplode;

  MinecraftExploding({
    this.minecraftExplode,
  });

  factory MinecraftExploding.fromJson(Map<String, dynamic> json) => new MinecraftExploding(
    minecraftExplode: MinecraftExplode.fromJson(json["minecraft:explode"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:explode": minecraftExplode.toJson(),
  };
}

class MinecraftExplode {
  double fuseLength;
  bool fuseLit;
  int power;
  bool causesFire;
  bool destroyAffectedByGriefing;

  MinecraftExplode({
    this.fuseLength,
    this.fuseLit,
    this.power,
    this.causesFire,
    this.destroyAffectedByGriefing,
  });

  factory MinecraftExplode.fromJson(Map<String, dynamic> json) => new MinecraftExplode(
    fuseLength: json["fuseLength"].toDouble(),
    fuseLit: json["fuseLit"],
    power: json["power"],
    causesFire: json["causesFire"],
    destroyAffectedByGriefing: json["destroyAffectedByGriefing"],
  );

  Map<String, dynamic> toJson() => {
    "fuseLength": fuseLength,
    "fuseLit": fuseLit,
    "power": power,
    "causesFire": causesFire,
    "destroyAffectedByGriefing": destroyAffectedByGriefing,
  };
}

class MinecraftChickenAdult {
  MinecraftEquipment minecraftLoot;
  MinecraftChickenAdultMinecraftBreedable minecraftBreedable;
  MinecraftBehaviorFleeSunClass minecraftBehaviorBreed;
  MinecraftChickenAdultMinecraftRideable minecraftRideable;
  MinecraftSpawnEntity minecraftSpawnEntity;

  MinecraftChickenAdult({
    this.minecraftLoot,
    this.minecraftBreedable,
    this.minecraftBehaviorBreed,
    this.minecraftRideable,
    this.minecraftSpawnEntity,
  });

  factory MinecraftChickenAdult.fromJson(Map<String, dynamic> json) => new MinecraftChickenAdult(
    minecraftLoot: MinecraftEquipment.fromJson(json["minecraft:loot"]),
    minecraftBreedable: MinecraftChickenAdultMinecraftBreedable.fromJson(json["minecraft:breedable"]),
    minecraftBehaviorBreed: MinecraftBehaviorFleeSunClass.fromJson(json["minecraft:behavior.breed"]),
    minecraftRideable: MinecraftChickenAdultMinecraftRideable.fromJson(json["minecraft:rideable"]),
    minecraftSpawnEntity: MinecraftSpawnEntity.fromJson(json["minecraft:spawn_entity"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:loot": minecraftLoot.toJson(),
    "minecraft:breedable": minecraftBreedable.toJson(),
    "minecraft:behavior.breed": minecraftBehaviorBreed.toJson(),
    "minecraft:rideable": minecraftRideable.toJson(),
    "minecraft:spawn_entity": minecraftSpawnEntity.toJson(),
  };
}

class MinecraftChickenAdultMinecraftBreedable {
  bool requireTame;
  List<BreedsWith> breedsWith;
  List<String> breedItems;
  bool inheritTamed;

  MinecraftChickenAdultMinecraftBreedable({
    this.requireTame,
    this.breedsWith,
    this.breedItems,
    this.inheritTamed,
  });

  factory MinecraftChickenAdultMinecraftBreedable.fromJson(Map<String, dynamic> json) => new MinecraftChickenAdultMinecraftBreedable(
    requireTame: json["requireTame"],
    breedsWith: new List<BreedsWith>.from(json["breedsWith"].map((x) => BreedsWith.fromJson(x))),
    breedItems: new List<String>.from(json["breedItems"].map((x) => x)),
    inheritTamed: json["inheritTamed"] == null ? null : json["inheritTamed"],
  );

  Map<String, dynamic> toJson() => {
    "requireTame": requireTame,
    "breedsWith": new List<dynamic>.from(breedsWith.map((x) => x.toJson())),
    "breedItems": new List<dynamic>.from(breedItems.map((x) => x)),
    "inheritTamed": inheritTamed == null ? null : inheritTamed,
  };
}

class MinecraftChickenAdultMinecraftRideable {
  int seatCount;
  List<String> familyTypes;
  SeatsSeats seats;
  String interactText;

  MinecraftChickenAdultMinecraftRideable({
    this.seatCount,
    this.familyTypes,
    this.seats,
    this.interactText,
  });

  factory MinecraftChickenAdultMinecraftRideable.fromJson(Map<String, dynamic> json) => new MinecraftChickenAdultMinecraftRideable(
    seatCount: json["seat_count"],
    familyTypes: new List<String>.from(json["family_types"].map((x) => x)),
    seats: SeatsSeats.fromJson(json["seats"]),
    interactText: json["interact_text"] == null ? null : json["interact_text"],
  );

  Map<String, dynamic> toJson() => {
    "seat_count": seatCount,
    "family_types": new List<dynamic>.from(familyTypes.map((x) => x)),
    "seats": seats.toJson(),
    "interact_text": interactText == null ? null : interactText,
  };
}

class SeatsSeats {
  List<double> position;

  SeatsSeats({
    this.position,
  });

  factory SeatsSeats.fromJson(Map<String, dynamic> json) => new SeatsSeats(
    position: new List<double>.from(json["position"].map((x) => x.toDouble())),
  );

  Map<String, dynamic> toJson() => {
    "position": new List<dynamic>.from(position.map((x) => x)),
  };
}

class MinecraftSpawnEntity {
  int minWaitTime;
  int maxWaitTime;
  String spawnSound;
  String spawnItem;

  MinecraftSpawnEntity({
    this.minWaitTime,
    this.maxWaitTime,
    this.spawnSound,
    this.spawnItem,
  });

  factory MinecraftSpawnEntity.fromJson(Map<String, dynamic> json) => new MinecraftSpawnEntity(
    minWaitTime: json["min_wait_time"],
    maxWaitTime: json["max_wait_time"],
    spawnSound: json["spawn_sound"],
    spawnItem: json["spawn_item"],
  );

  Map<String, dynamic> toJson() => {
    "min_wait_time": minWaitTime,
    "max_wait_time": maxWaitTime,
    "spawn_sound": spawnSound,
    "spawn_item": spawnItem,
  };
}

class MinecraftNBaby {
  DibrugarhFerrets minecraftIsBaby;
  MinecraftFlyingSpeed minecraftScale;
  MinecraftChickenBabyMinecraftAgeable minecraftAgeable;
  MinecraftBehaviorFleeSunClass minecraftBehaviorFollowParent;
  MinecraftBehaviorFleeSunClass minecraftBehaviorPanic;

  MinecraftNBaby({
    this.minecraftIsBaby,
    this.minecraftScale,
    this.minecraftAgeable,
    this.minecraftBehaviorFollowParent,
    this.minecraftBehaviorPanic,
  });

  factory MinecraftNBaby.fromJson(Map<String, dynamic> json) => new MinecraftNBaby(
    minecraftIsBaby: DibrugarhFerrets.fromJson(json["minecraft:is_baby"]),
    minecraftScale: MinecraftFlyingSpeed.fromJson(json["minecraft:scale"]),
    minecraftAgeable: MinecraftChickenBabyMinecraftAgeable.fromJson(json["minecraft:ageable"]),
    minecraftBehaviorFollowParent: MinecraftBehaviorFleeSunClass.fromJson(json["minecraft:behavior.follow_parent"]),
    minecraftBehaviorPanic: json["minecraft:behavior.panic"] == null ? null : MinecraftBehaviorFleeSunClass.fromJson(json["minecraft:behavior.panic"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:is_baby": minecraftIsBaby.toJson(),
    "minecraft:scale": minecraftScale.toJson(),
    "minecraft:ageable": minecraftAgeable.toJson(),
    "minecraft:behavior.follow_parent": minecraftBehaviorFollowParent.toJson(),
    "minecraft:behavior.panic": minecraftBehaviorPanic == null ? null : minecraftBehaviorPanic.toJson(),
  };
}

class MinecraftChickenBabyMinecraftAgeable {
  int duration;
  List<String> feedItems;
  NordSugarGliders growUp;

  MinecraftChickenBabyMinecraftAgeable({
    this.duration,
    this.feedItems,
    this.growUp,
  });

  factory MinecraftChickenBabyMinecraftAgeable.fromJson(Map<String, dynamic> json) => new MinecraftChickenBabyMinecraftAgeable(
    duration: json["duration"],
    feedItems: new List<String>.from(json["feedItems"].map((x) => x)),
    growUp: NordSugarGliders.fromJson(json["grow_up"]),
  );

  Map<String, dynamic> toJson() => {
    "duration": duration,
    "feedItems": new List<dynamic>.from(feedItems.map((x) => x)),
    "grow_up": growUp.toJson(),
  };
}

class MinecraftLeashed {
  MinecraftBehaviorFleeSunClass minecraftBehaviorMoveTowardsRestriction;

  MinecraftLeashed({
    this.minecraftBehaviorMoveTowardsRestriction,
  });

  factory MinecraftLeashed.fromJson(Map<String, dynamic> json) => new MinecraftLeashed(
    minecraftBehaviorMoveTowardsRestriction: MinecraftBehaviorFleeSunClass.fromJson(json["minecraft:behavior.move_towards_restriction"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:behavior.move_towards_restriction": minecraftBehaviorMoveTowardsRestriction.toJson(),
  };
}

class MinecraftCowAdult {
  MinecraftEquipment minecraftLoot;
  MinecraftBehaviorFleeSunClass minecraftBehaviorBreed;
  MinecraftChickenAdultMinecraftBreedable minecraftBreedable;
  List<MinecraftCowAdultMinecraftInteract> minecraftInteract;

  MinecraftCowAdult({
    this.minecraftLoot,
    this.minecraftBehaviorBreed,
    this.minecraftBreedable,
    this.minecraftInteract,
  });

  factory MinecraftCowAdult.fromJson(Map<String, dynamic> json) => new MinecraftCowAdult(
    minecraftLoot: MinecraftEquipment.fromJson(json["minecraft:loot"]),
    minecraftBehaviorBreed: MinecraftBehaviorFleeSunClass.fromJson(json["minecraft:behavior.breed"]),
    minecraftBreedable: MinecraftChickenAdultMinecraftBreedable.fromJson(json["minecraft:breedable"]),
    minecraftInteract: new List<MinecraftCowAdultMinecraftInteract>.from(json["minecraft:interact"].map((x) => MinecraftCowAdultMinecraftInteract.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:loot": minecraftLoot.toJson(),
    "minecraft:behavior.breed": minecraftBehaviorBreed.toJson(),
    "minecraft:breedable": minecraftBreedable.toJson(),
    "minecraft:interact": new List<dynamic>.from(minecraftInteract.map((x) => x.toJson())),
  };
}

class MinecraftCowAdultMinecraftInteract {
  PurpleOnInteract onInteract;
  bool useItem;
  String transformToItem;
  String playSounds;
  String interactText;
  int hurtItem;
  MinecraftEquipment spawnItems;

  MinecraftCowAdultMinecraftInteract({
    this.onInteract,
    this.useItem,
    this.transformToItem,
    this.playSounds,
    this.interactText,
    this.hurtItem,
    this.spawnItems,
  });

  factory MinecraftCowAdultMinecraftInteract.fromJson(Map<String, dynamic> json) => new MinecraftCowAdultMinecraftInteract(
    onInteract: PurpleOnInteract.fromJson(json["on_interact"]),
    useItem: json["use_item"],
    transformToItem: json["transform_to_item"] == null ? null : json["transform_to_item"],
    playSounds: json["play_sounds"] == null ? null : json["play_sounds"],
    interactText: json["interact_text"],
    hurtItem: json["hurt_item"] == null ? null : json["hurt_item"],
    spawnItems: json["spawn_items"] == null ? null : MinecraftEquipment.fromJson(json["spawn_items"]),
  );

  Map<String, dynamic> toJson() => {
    "on_interact": onInteract.toJson(),
    "use_item": useItem,
    "transform_to_item": transformToItem == null ? null : transformToItem,
    "play_sounds": playSounds == null ? null : playSounds,
    "interact_text": interactText,
    "hurt_item": hurtItem == null ? null : hurtItem,
    "spawn_items": spawnItems == null ? null : spawnItems.toJson(),
  };
}

class PurpleOnInteract {
  PurpleFilters filters;
  String event;
  Target target;

  PurpleOnInteract({
    this.filters,
    this.event,
    this.target,
  });

  factory PurpleOnInteract.fromJson(Map<String, dynamic> json) => new PurpleOnInteract(
    filters: PurpleFilters.fromJson(json["filters"]),
    event: json["event"] == null ? null : json["event"],
    target: json["target"] == null ? null : targetValues.map[json["target"]],
  );

  Map<String, dynamic> toJson() => {
    "filters": filters.toJson(),
    "event": event == null ? null : event,
    "target": target == null ? null : targetValues.reverse[target],
  };
}

class PurpleFilters {
  dynamic otherWithItem;
  List<OtherWithFamilies> otherWithFamilies;
  String withoutComponents;

  PurpleFilters({
    this.otherWithItem,
    this.otherWithFamilies,
    this.withoutComponents,
  });

  factory PurpleFilters.fromJson(Map<String, dynamic> json) => new PurpleFilters(
    otherWithItem: json["other_with_item"],
    otherWithFamilies: json["other_with_families"] == null ? null : new List<OtherWithFamilies>.from(json["other_with_families"].map((x) => otherWithFamiliesValues.map[x])),
    withoutComponents: json["without_components"] == null ? null : json["without_components"],
  );

  Map<String, dynamic> toJson() => {
    "other_with_item": otherWithItem,
    "other_with_families": otherWithFamilies == null ? null : new List<dynamic>.from(otherWithFamilies.map((x) => otherWithFamiliesValues.reverse[x])),
    "without_components": withoutComponents == null ? null : withoutComponents,
  };
}

enum OtherWithFamilies { PLAYER }

final otherWithFamiliesValues = new EnumValues({
  "player": OtherWithFamilies.PLAYER
});

class MinecraftCowBaby {
  DibrugarhFerrets minecraftIsBaby;
  MinecraftFlyingSpeed minecraftScale;
  MinecraftCowBabyMinecraftAgeable minecraftAgeable;
  MinecraftBehaviorFleeSunClass minecraftBehaviorFollowParent;

  MinecraftCowBaby({
    this.minecraftIsBaby,
    this.minecraftScale,
    this.minecraftAgeable,
    this.minecraftBehaviorFollowParent,
  });

  factory MinecraftCowBaby.fromJson(Map<String, dynamic> json) => new MinecraftCowBaby(
    minecraftIsBaby: DibrugarhFerrets.fromJson(json["minecraft:is_baby"]),
    minecraftScale: MinecraftFlyingSpeed.fromJson(json["minecraft:scale"]),
    minecraftAgeable: MinecraftCowBabyMinecraftAgeable.fromJson(json["minecraft:ageable"]),
    minecraftBehaviorFollowParent: MinecraftBehaviorFleeSunClass.fromJson(json["minecraft:behavior.follow_parent"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:is_baby": minecraftIsBaby.toJson(),
    "minecraft:scale": minecraftScale.toJson(),
    "minecraft:ageable": minecraftAgeable.toJson(),
    "minecraft:behavior.follow_parent": minecraftBehaviorFollowParent.toJson(),
  };
}

class MinecraftCowBabyMinecraftAgeable {
  int duration;
  String feedItems;
  NordSugarGliders growUp;
  int threshold;

  MinecraftCowBabyMinecraftAgeable({
    this.duration,
    this.feedItems,
    this.growUp,
    this.threshold,
  });

  factory MinecraftCowBabyMinecraftAgeable.fromJson(Map<String, dynamic> json) => new MinecraftCowBabyMinecraftAgeable(
    duration: json["duration"] == null ? null : json["duration"],
    feedItems: json["feedItems"],
    growUp: NordSugarGliders.fromJson(json["grow_up"]),
    threshold: json["threshold"] == null ? null : json["threshold"],
  );

  Map<String, dynamic> toJson() => {
    "duration": duration == null ? null : duration,
    "feedItems": feedItems,
    "grow_up": growUp.toJson(),
    "threshold": threshold == null ? null : threshold,
  };
}

class MinecraftDolphinAdult {
  MinecraftEquipment minecraftLoot;
  MinecraftBribeable minecraftBribeable;
  MinecraftBehaviorAttack minecraftBehaviorMeleeAttack;

  MinecraftDolphinAdult({
    this.minecraftLoot,
    this.minecraftBribeable,
    this.minecraftBehaviorMeleeAttack,
  });

  factory MinecraftDolphinAdult.fromJson(Map<String, dynamic> json) => new MinecraftDolphinAdult(
    minecraftLoot: MinecraftEquipment.fromJson(json["minecraft:loot"]),
    minecraftBribeable: MinecraftBribeable.fromJson(json["minecraft:bribeable"]),
    minecraftBehaviorMeleeAttack: MinecraftBehaviorAttack.fromJson(json["minecraft:behavior.melee_attack"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:loot": minecraftLoot.toJson(),
    "minecraft:bribeable": minecraftBribeable.toJson(),
    "minecraft:behavior.melee_attack": minecraftBehaviorMeleeAttack.toJson(),
  };
}

class MinecraftBribeable {
  List<String> bribeItems;

  MinecraftBribeable({
    this.bribeItems,
  });

  factory MinecraftBribeable.fromJson(Map<String, dynamic> json) => new MinecraftBribeable(
    bribeItems: new List<String>.from(json["bribe_items"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "bribe_items": new List<dynamic>.from(bribeItems.map((x) => x)),
  };
}

class MinecraftDolphinAngry {
  MinecraftAdultHostileMinecraftAngry minecraftAngry;
  DibrugarhFerrets minecraftOnTargetAcquired;

  MinecraftDolphinAngry({
    this.minecraftAngry,
    this.minecraftOnTargetAcquired,
  });

  factory MinecraftDolphinAngry.fromJson(Map<String, dynamic> json) => new MinecraftDolphinAngry(
    minecraftAngry: MinecraftAdultHostileMinecraftAngry.fromJson(json["minecraft:angry"]),
    minecraftOnTargetAcquired: DibrugarhFerrets.fromJson(json["minecraft:on_target_acquired"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:angry": minecraftAngry.toJson(),
    "minecraft:on_target_acquired": minecraftOnTargetAcquired.toJson(),
  };
}

class MinecraftDolphinDried {
  MinecraftDamageOverTime minecraftDamageOverTime;

  MinecraftDolphinDried({
    this.minecraftDamageOverTime,
  });

  factory MinecraftDolphinDried.fromJson(Map<String, dynamic> json) => new MinecraftDolphinDried(
    minecraftDamageOverTime: MinecraftDamageOverTime.fromJson(json["minecraft:damage_over_time"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:damage_over_time": minecraftDamageOverTime.toJson(),
  };
}

class MinecraftDamageOverTime {
  int damagePerHurt;
  int timeBetweenHurt;

  MinecraftDamageOverTime({
    this.damagePerHurt,
    this.timeBetweenHurt,
  });

  factory MinecraftDamageOverTime.fromJson(Map<String, dynamic> json) => new MinecraftDamageOverTime(
    damagePerHurt: json["damagePerHurt"],
    timeBetweenHurt: json["timeBetweenHurt"],
  );

  Map<String, dynamic> toJson() => {
    "damagePerHurt": damagePerHurt,
    "timeBetweenHurt": timeBetweenHurt,
  };
}

class MinecraftDolphinOnLand {
  MinecraftDolphinOnLandMinecraftNavigationGeneric minecraftNavigationGeneric;
  MinecraftDolphinOnLandMinecraftTimer minecraftTimer;
  List<MinecraftDolphinOnLandMinecraftEnvironmentSensor> minecraftEnvironmentSensor;

  MinecraftDolphinOnLand({
    this.minecraftNavigationGeneric,
    this.minecraftTimer,
    this.minecraftEnvironmentSensor,
  });

  factory MinecraftDolphinOnLand.fromJson(Map<String, dynamic> json) => new MinecraftDolphinOnLand(
    minecraftNavigationGeneric: MinecraftDolphinOnLandMinecraftNavigationGeneric.fromJson(json["minecraft:navigation.generic"]),
    minecraftTimer: MinecraftDolphinOnLandMinecraftTimer.fromJson(json["minecraft:timer"]),
    minecraftEnvironmentSensor: new List<MinecraftDolphinOnLandMinecraftEnvironmentSensor>.from(json["minecraft:environment_sensor"].map((x) => MinecraftDolphinOnLandMinecraftEnvironmentSensor.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:navigation.generic": minecraftNavigationGeneric.toJson(),
    "minecraft:timer": minecraftTimer.toJson(),
    "minecraft:environment_sensor": new List<dynamic>.from(minecraftEnvironmentSensor.map((x) => x.toJson())),
  };
}

class MinecraftDolphinOnLandMinecraftEnvironmentSensor {
  AllOfElement filters;
  String event;

  MinecraftDolphinOnLandMinecraftEnvironmentSensor({
    this.filters,
    this.event,
  });

  factory MinecraftDolphinOnLandMinecraftEnvironmentSensor.fromJson(Map<String, dynamic> json) => new MinecraftDolphinOnLandMinecraftEnvironmentSensor(
    filters: AllOfElement.fromJson(json["filters"]),
    event: json["event"],
  );

  Map<String, dynamic> toJson() => {
    "filters": filters.toJson(),
    "event": event,
  };
}

class AllOfElement {
  String test;
  String filtersOperator;
  bool value;

  AllOfElement({
    this.test,
    this.filtersOperator,
    this.value,
  });

  factory AllOfElement.fromJson(Map<String, dynamic> json) => new AllOfElement(
    test: json["test"],
    filtersOperator: json["operator"],
    value: json["value"],
  );

  Map<String, dynamic> toJson() => {
    "test": test,
    "operator": filtersOperator,
    "value": value,
  };
}

class MinecraftDolphinOnLandMinecraftNavigationGeneric {
  bool isAmphibious;
  bool canFloat;
  bool canSwim;
  bool canWalk;
  bool canBreach;
  bool canJump;
  bool canSink;

  MinecraftDolphinOnLandMinecraftNavigationGeneric({
    this.isAmphibious,
    this.canFloat,
    this.canSwim,
    this.canWalk,
    this.canBreach,
    this.canJump,
    this.canSink,
  });

  factory MinecraftDolphinOnLandMinecraftNavigationGeneric.fromJson(Map<String, dynamic> json) => new MinecraftDolphinOnLandMinecraftNavigationGeneric(
    isAmphibious: json["is_amphibious"],
    canFloat: json["can_float"],
    canSwim: json["can_swim"],
    canWalk: json["can_walk"],
    canBreach: json["can_breach"],
    canJump: json["can_jump"] == null ? null : json["can_jump"],
    canSink: json["can_sink"] == null ? null : json["can_sink"],
  );

  Map<String, dynamic> toJson() => {
    "is_amphibious": isAmphibious,
    "can_float": canFloat,
    "can_swim": canSwim,
    "can_walk": canWalk,
    "can_breach": canBreach,
    "can_jump": canJump == null ? null : canJump,
    "can_sink": canSink == null ? null : canSink,
  };
}

class MinecraftDolphinOnLandMinecraftTimer {
  bool looping;
  int time;
  OnClose timeDownEvent;

  MinecraftDolphinOnLandMinecraftTimer({
    this.looping,
    this.time,
    this.timeDownEvent,
  });

  factory MinecraftDolphinOnLandMinecraftTimer.fromJson(Map<String, dynamic> json) => new MinecraftDolphinOnLandMinecraftTimer(
    looping: json["looping"],
    time: json["time"],
    timeDownEvent: OnClose.fromJson(json["time_down_event"]),
  );

  Map<String, dynamic> toJson() => {
    "looping": looping,
    "time": time,
    "time_down_event": timeDownEvent.toJson(),
  };
}

class OnClose {
  String event;

  OnClose({
    this.event,
  });

  factory OnClose.fromJson(Map<String, dynamic> json) => new OnClose(
    event: json["event"],
  );

  Map<String, dynamic> toJson() => {
    "event": event,
  };
}

class MinecraftDolphinOnLandInRain {
  MinecraftDolphinOnLandMinecraftNavigationGeneric minecraftNavigationGeneric;
  List<MinecraftDolphinOnLandMinecraftEnvironmentSensor> minecraftEnvironmentSensor;

  MinecraftDolphinOnLandInRain({
    this.minecraftNavigationGeneric,
    this.minecraftEnvironmentSensor,
  });

  factory MinecraftDolphinOnLandInRain.fromJson(Map<String, dynamic> json) => new MinecraftDolphinOnLandInRain(
    minecraftNavigationGeneric: MinecraftDolphinOnLandMinecraftNavigationGeneric.fromJson(json["minecraft:navigation.generic"]),
    minecraftEnvironmentSensor: new List<MinecraftDolphinOnLandMinecraftEnvironmentSensor>.from(json["minecraft:environment_sensor"].map((x) => MinecraftDolphinOnLandMinecraftEnvironmentSensor.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:navigation.generic": minecraftNavigationGeneric.toJson(),
    "minecraft:environment_sensor": new List<dynamic>.from(minecraftEnvironmentSensor.map((x) => x.toJson())),
  };
}

class MinecraftDolphinSwimmingNavigation {
  MinecraftBehaviorRandomLookAroundClass minecraftBehaviorLookAtPlayer;
  MinecraftDolphinOnLandMinecraftNavigationGeneric minecraftNavigationGeneric;
  List<MinecraftDolphinSwimmingNavigationMinecraftEnvironmentSensor> minecraftEnvironmentSensor;

  MinecraftDolphinSwimmingNavigation({
    this.minecraftBehaviorLookAtPlayer,
    this.minecraftNavigationGeneric,
    this.minecraftEnvironmentSensor,
  });

  factory MinecraftDolphinSwimmingNavigation.fromJson(Map<String, dynamic> json) => new MinecraftDolphinSwimmingNavigation(
    minecraftBehaviorLookAtPlayer: MinecraftBehaviorRandomLookAroundClass.fromJson(json["minecraft:behavior.look_at_player"]),
    minecraftNavigationGeneric: MinecraftDolphinOnLandMinecraftNavigationGeneric.fromJson(json["minecraft:navigation.generic"]),
    minecraftEnvironmentSensor: new List<MinecraftDolphinSwimmingNavigationMinecraftEnvironmentSensor>.from(json["minecraft:environment_sensor"].map((x) => MinecraftDolphinSwimmingNavigationMinecraftEnvironmentSensor.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:behavior.look_at_player": minecraftBehaviorLookAtPlayer.toJson(),
    "minecraft:navigation.generic": minecraftNavigationGeneric.toJson(),
    "minecraft:environment_sensor": new List<dynamic>.from(minecraftEnvironmentSensor.map((x) => x.toJson())),
  };
}

class MinecraftBehaviorRandomLookAroundClass {
  int priority;
  int lookDistance;

  MinecraftBehaviorRandomLookAroundClass({
    this.priority,
    this.lookDistance,
  });

  factory MinecraftBehaviorRandomLookAroundClass.fromJson(Map<String, dynamic> json) => new MinecraftBehaviorRandomLookAroundClass(
    priority: json["priority"],
    lookDistance: json["look_distance"] == null ? null : json["look_distance"],
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "look_distance": lookDistance == null ? null : lookDistance,
  };
}

class MinecraftDolphinSwimmingNavigationMinecraftEnvironmentSensor {
  FluffyFilters filters;
  String event;

  MinecraftDolphinSwimmingNavigationMinecraftEnvironmentSensor({
    this.filters,
    this.event,
  });

  factory MinecraftDolphinSwimmingNavigationMinecraftEnvironmentSensor.fromJson(Map<String, dynamic> json) => new MinecraftDolphinSwimmingNavigationMinecraftEnvironmentSensor(
    filters: FluffyFilters.fromJson(json["filters"]),
    event: json["event"],
  );

  Map<String, dynamic> toJson() => {
    "filters": filters.toJson(),
    "event": event,
  };
}

class FluffyFilters {
  List<AllOfElement> allOf;

  FluffyFilters({
    this.allOf,
  });

  factory FluffyFilters.fromJson(Map<String, dynamic> json) => new FluffyFilters(
    allOf: new List<AllOfElement>.from(json["all_of"].map((x) => AllOfElement.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "all_of": new List<dynamic>.from(allOf.map((x) => x.toJson())),
  };
}

class MinecraftDonkeyAdultClass {
  MinecraftEquipment minecraftLoot;
  MinecraftBehaviorFleeSunClass minecraftBehaviorRunAroundLikeCrazy;
  MinecraftBehaviorFleeSunClass minecraftBehaviorBreed;

  MinecraftDonkeyAdultClass({
    this.minecraftLoot,
    this.minecraftBehaviorRunAroundLikeCrazy,
    this.minecraftBehaviorBreed,
  });

  factory MinecraftDonkeyAdultClass.fromJson(Map<String, dynamic> json) => new MinecraftDonkeyAdultClass(
    minecraftLoot: MinecraftEquipment.fromJson(json["minecraft:loot"]),
    minecraftBehaviorRunAroundLikeCrazy: MinecraftBehaviorFleeSunClass.fromJson(json["minecraft:behavior.run_around_like_crazy"]),
    minecraftBehaviorBreed: MinecraftBehaviorFleeSunClass.fromJson(json["minecraft:behavior.breed"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:loot": minecraftLoot.toJson(),
    "minecraft:behavior.run_around_like_crazy": minecraftBehaviorRunAroundLikeCrazy.toJson(),
    "minecraft:behavior.breed": minecraftBehaviorBreed.toJson(),
  };
}

class MinecraftDonkeyBabyClass {
  DibrugarhFerrets minecraftIsBaby;
  MinecraftScaleByAge minecraftScaleByAge;
  MinecraftDonkeyBabyMinecraftAgeable minecraftAgeable;
  MinecraftBehaviorFleeSunClass minecraftBehaviorFollowParent;
  MinecraftFlyingSpeed minecraftScale;

  MinecraftDonkeyBabyClass({
    this.minecraftIsBaby,
    this.minecraftScaleByAge,
    this.minecraftAgeable,
    this.minecraftBehaviorFollowParent,
    this.minecraftScale,
  });

  factory MinecraftDonkeyBabyClass.fromJson(Map<String, dynamic> json) => new MinecraftDonkeyBabyClass(
    minecraftIsBaby: DibrugarhFerrets.fromJson(json["minecraft:is_baby"]),
    minecraftScaleByAge: json["minecraft:scale_by_age"] == null ? null : MinecraftScaleByAge.fromJson(json["minecraft:scale_by_age"]),
    minecraftAgeable: MinecraftDonkeyBabyMinecraftAgeable.fromJson(json["minecraft:ageable"]),
    minecraftBehaviorFollowParent: MinecraftBehaviorFleeSunClass.fromJson(json["minecraft:behavior.follow_parent"]),
    minecraftScale: json["minecraft:scale"] == null ? null : MinecraftFlyingSpeed.fromJson(json["minecraft:scale"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:is_baby": minecraftIsBaby.toJson(),
    "minecraft:scale_by_age": minecraftScaleByAge == null ? null : minecraftScaleByAge.toJson(),
    "minecraft:ageable": minecraftAgeable.toJson(),
    "minecraft:behavior.follow_parent": minecraftBehaviorFollowParent.toJson(),
    "minecraft:scale": minecraftScale == null ? null : minecraftScale.toJson(),
  };
}

class MinecraftDonkeyBabyMinecraftAgeable {
  int duration;
  List<MinecraftAgeableFeedItem> feedItems;
  NordSugarGliders growUp;

  MinecraftDonkeyBabyMinecraftAgeable({
    this.duration,
    this.feedItems,
    this.growUp,
  });

  factory MinecraftDonkeyBabyMinecraftAgeable.fromJson(Map<String, dynamic> json) => new MinecraftDonkeyBabyMinecraftAgeable(
    duration: json["duration"],
    feedItems: new List<MinecraftAgeableFeedItem>.from(json["feedItems"].map((x) => MinecraftAgeableFeedItem.fromJson(x))),
    growUp: NordSugarGliders.fromJson(json["grow_up"]),
  );

  Map<String, dynamic> toJson() => {
    "duration": duration,
    "feedItems": new List<dynamic>.from(feedItems.map((x) => x.toJson())),
    "grow_up": growUp.toJson(),
  };
}

class MinecraftChested {
  DibrugarhFerrets minecraftIsChested;

  MinecraftChested({
    this.minecraftIsChested,
  });

  factory MinecraftChested.fromJson(Map<String, dynamic> json) => new MinecraftChested(
    minecraftIsChested: DibrugarhFerrets.fromJson(json["minecraft:is_chested"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:is_chested": minecraftIsChested.toJson(),
  };
}

class MinecraftSaddled {
  DibrugarhFerrets minecraftIsSaddled;
  DibrugarhFerrets minecraftInputGroundControlled;
  DibrugarhFerrets minecraftCanPowerJump;
  DibrugarhFerrets minecraftBehaviorPlayerRideTamed;

  MinecraftSaddled({
    this.minecraftIsSaddled,
    this.minecraftInputGroundControlled,
    this.minecraftCanPowerJump,
    this.minecraftBehaviorPlayerRideTamed,
  });

  factory MinecraftSaddled.fromJson(Map<String, dynamic> json) => new MinecraftSaddled(
    minecraftIsSaddled: DibrugarhFerrets.fromJson(json["minecraft:is_saddled"]),
    minecraftInputGroundControlled: DibrugarhFerrets.fromJson(json["minecraft:input_ground_controlled"]),
    minecraftCanPowerJump: DibrugarhFerrets.fromJson(json["minecraft:can_power_jump"]),
    minecraftBehaviorPlayerRideTamed: json["minecraft:behavior.player_ride_tamed"] == null ? null : DibrugarhFerrets.fromJson(json["minecraft:behavior.player_ride_tamed"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:is_saddled": minecraftIsSaddled.toJson(),
    "minecraft:input_ground_controlled": minecraftInputGroundControlled.toJson(),
    "minecraft:can_power_jump": minecraftCanPowerJump.toJson(),
    "minecraft:behavior.player_ride_tamed": minecraftBehaviorPlayerRideTamed == null ? null : minecraftBehaviorPlayerRideTamed.toJson(),
  };
}

class MinecraftDonkeyTamed {
  DibrugarhFerrets minecraftIsTamed;
  MinecraftDonkeyTamedMinecraftEquippable minecraftEquippable;
  MinecraftDonkeyTamedMinecraftRideable minecraftRideable;
  DibrugarhFerrets minecraftBehaviorPlayerRideTamed;
  MinecraftDonkeyTamedMinecraftInventory minecraftInventory;
  MinecraftChickenAdultMinecraftBreedable minecraftBreedable;
  MinecraftDonkeyTamedMinecraftBehaviorTempt minecraftBehaviorTempt;

  MinecraftDonkeyTamed({
    this.minecraftIsTamed,
    this.minecraftEquippable,
    this.minecraftRideable,
    this.minecraftBehaviorPlayerRideTamed,
    this.minecraftInventory,
    this.minecraftBreedable,
    this.minecraftBehaviorTempt,
  });

  factory MinecraftDonkeyTamed.fromJson(Map<String, dynamic> json) => new MinecraftDonkeyTamed(
    minecraftIsTamed: DibrugarhFerrets.fromJson(json["minecraft:is_tamed"]),
    minecraftEquippable: MinecraftDonkeyTamedMinecraftEquippable.fromJson(json["minecraft:equippable"]),
    minecraftRideable: MinecraftDonkeyTamedMinecraftRideable.fromJson(json["minecraft:rideable"]),
    minecraftBehaviorPlayerRideTamed: DibrugarhFerrets.fromJson(json["minecraft:behavior.player_ride_tamed"]),
    minecraftInventory: MinecraftDonkeyTamedMinecraftInventory.fromJson(json["minecraft:inventory"]),
    minecraftBreedable: MinecraftChickenAdultMinecraftBreedable.fromJson(json["minecraft:breedable"]),
    minecraftBehaviorTempt: MinecraftDonkeyTamedMinecraftBehaviorTempt.fromJson(json["minecraft:behavior.tempt"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:is_tamed": minecraftIsTamed.toJson(),
    "minecraft:equippable": minecraftEquippable.toJson(),
    "minecraft:rideable": minecraftRideable.toJson(),
    "minecraft:behavior.player_ride_tamed": minecraftBehaviorPlayerRideTamed.toJson(),
    "minecraft:inventory": minecraftInventory.toJson(),
    "minecraft:breedable": minecraftBreedable.toJson(),
    "minecraft:behavior.tempt": minecraftBehaviorTempt.toJson(),
  };
}

class MinecraftDonkeyTamedMinecraftBehaviorTempt {
  int priority;
  double speedMultiplier;
  List<String> items;

  MinecraftDonkeyTamedMinecraftBehaviorTempt({
    this.priority,
    this.speedMultiplier,
    this.items,
  });

  factory MinecraftDonkeyTamedMinecraftBehaviorTempt.fromJson(Map<String, dynamic> json) => new MinecraftDonkeyTamedMinecraftBehaviorTempt(
    priority: json["priority"],
    speedMultiplier: json["speed_multiplier"].toDouble(),
    items: new List<String>.from(json["items"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "speed_multiplier": speedMultiplier,
    "items": new List<dynamic>.from(items.map((x) => x)),
  };
}

class MinecraftDonkeyTamedMinecraftEquippable {
  List<PurpleSlot> slots;

  MinecraftDonkeyTamedMinecraftEquippable({
    this.slots,
  });

  factory MinecraftDonkeyTamedMinecraftEquippable.fromJson(Map<String, dynamic> json) => new MinecraftDonkeyTamedMinecraftEquippable(
    slots: new List<PurpleSlot>.from(json["slots"].map((x) => PurpleSlot.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "slots": new List<dynamic>.from(slots.map((x) => x.toJson())),
  };
}

class PurpleSlot {
  int slot;
  String item;
  List<String> acceptedItems;
  OnClose onEquip;
  OnClose onUnequip;

  PurpleSlot({
    this.slot,
    this.item,
    this.acceptedItems,
    this.onEquip,
    this.onUnequip,
  });

  factory PurpleSlot.fromJson(Map<String, dynamic> json) => new PurpleSlot(
    slot: json["slot"],
    item: json["item"],
    acceptedItems: new List<String>.from(json["accepted_items"].map((x) => x)),
    onEquip: json["on_equip"] == null ? null : OnClose.fromJson(json["on_equip"]),
    onUnequip: json["on_unequip"] == null ? null : OnClose.fromJson(json["on_unequip"]),
  );

  Map<String, dynamic> toJson() => {
    "slot": slot,
    "item": item,
    "accepted_items": new List<dynamic>.from(acceptedItems.map((x) => x)),
    "on_equip": onEquip == null ? null : onEquip.toJson(),
    "on_unequip": onUnequip == null ? null : onUnequip.toJson(),
  };
}

class MinecraftDonkeyTamedMinecraftInventory {
  int inventorySize;
  String containerType;

  MinecraftDonkeyTamedMinecraftInventory({
    this.inventorySize,
    this.containerType,
  });

  factory MinecraftDonkeyTamedMinecraftInventory.fromJson(Map<String, dynamic> json) => new MinecraftDonkeyTamedMinecraftInventory(
    inventorySize: json["inventory_size"],
    containerType: json["container_type"],
  );

  Map<String, dynamic> toJson() => {
    "inventory_size": inventorySize,
    "container_type": containerType,
  };
}

class MinecraftDonkeyTamedMinecraftRideable {
  int priority;
  int seatCount;
  bool crouchingSkipInteract;
  String interactText;
  SeatsSeats seats;
  List<OtherWithFamilies> familyTypes;

  MinecraftDonkeyTamedMinecraftRideable({
    this.priority,
    this.seatCount,
    this.crouchingSkipInteract,
    this.interactText,
    this.seats,
    this.familyTypes,
  });

  factory MinecraftDonkeyTamedMinecraftRideable.fromJson(Map<String, dynamic> json) => new MinecraftDonkeyTamedMinecraftRideable(
    priority: json["priority"],
    seatCount: json["seat_count"],
    crouchingSkipInteract: json["crouching_skip_interact"],
    interactText: json["interact_text"],
    seats: SeatsSeats.fromJson(json["seats"]),
    familyTypes: json["family_types"] == null ? null : new List<OtherWithFamilies>.from(json["family_types"].map((x) => otherWithFamiliesValues.map[x])),
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "seat_count": seatCount,
    "crouching_skip_interact": crouchingSkipInteract,
    "interact_text": interactText,
    "seats": seats.toJson(),
    "family_types": familyTypes == null ? null : new List<dynamic>.from(familyTypes.map((x) => otherWithFamiliesValues.reverse[x])),
  };
}

class MinecraftUnchested {
  List<MinecraftDonkeyUnchestedMinecraftInteract> minecraftInteract;

  MinecraftUnchested({
    this.minecraftInteract,
  });

  factory MinecraftUnchested.fromJson(Map<String, dynamic> json) => new MinecraftUnchested(
    minecraftInteract: new List<MinecraftDonkeyUnchestedMinecraftInteract>.from(json["minecraft:interact"].map((x) => MinecraftDonkeyUnchestedMinecraftInteract.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:interact": new List<dynamic>.from(minecraftInteract.map((x) => x.toJson())),
  };
}

class MinecraftDonkeyUnchestedMinecraftInteract {
  FluffyOnInteract onInteract;
  bool useItem;
  String interactText;

  MinecraftDonkeyUnchestedMinecraftInteract({
    this.onInteract,
    this.useItem,
    this.interactText,
  });

  factory MinecraftDonkeyUnchestedMinecraftInteract.fromJson(Map<String, dynamic> json) => new MinecraftDonkeyUnchestedMinecraftInteract(
    onInteract: FluffyOnInteract.fromJson(json["on_interact"]),
    useItem: json["use_item"],
    interactText: json["interact_text"],
  );

  Map<String, dynamic> toJson() => {
    "on_interact": onInteract.toJson(),
    "use_item": useItem,
    "interact_text": interactText,
  };
}

class FluffyOnInteract {
  TentacledFilters filters;
  String event;
  Target target;

  FluffyOnInteract({
    this.filters,
    this.event,
    this.target,
  });

  factory FluffyOnInteract.fromJson(Map<String, dynamic> json) => new FluffyOnInteract(
    filters: TentacledFilters.fromJson(json["filters"]),
    event: json["event"],
    target: targetValues.map[json["target"]],
  );

  Map<String, dynamic> toJson() => {
    "filters": filters.toJson(),
    "event": event,
    "target": targetValues.reverse[target],
  };
}

class TentacledFilters {
  List<String> otherWithItem;
  List<OtherWithFamilies> otherWithFamilies;

  TentacledFilters({
    this.otherWithItem,
    this.otherWithFamilies,
  });

  factory TentacledFilters.fromJson(Map<String, dynamic> json) => new TentacledFilters(
    otherWithItem: new List<String>.from(json["other_with_item"].map((x) => x)),
    otherWithFamilies: new List<OtherWithFamilies>.from(json["other_with_families"].map((x) => otherWithFamiliesValues.map[x])),
  );

  Map<String, dynamic> toJson() => {
    "other_with_item": new List<dynamic>.from(otherWithItem.map((x) => x)),
    "other_with_families": new List<dynamic>.from(otherWithFamilies.map((x) => otherWithFamiliesValues.reverse[x])),
  };
}

class MinecraftWild {
  MinecraftChickenAdultMinecraftRideable minecraftRideable;
  MinecraftBehaviorM minecraftBehaviorMountPathing;
  MinecraftTamemount minecraftTamemount;

  MinecraftWild({
    this.minecraftRideable,
    this.minecraftBehaviorMountPathing,
    this.minecraftTamemount,
  });

  factory MinecraftWild.fromJson(Map<String, dynamic> json) => new MinecraftWild(
    minecraftRideable: MinecraftChickenAdultMinecraftRideable.fromJson(json["minecraft:rideable"]),
    minecraftBehaviorMountPathing: MinecraftBehaviorM.fromJson(json["minecraft:behavior.mount_pathing"]),
    minecraftTamemount: MinecraftTamemount.fromJson(json["minecraft:tamemount"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:rideable": minecraftRideable.toJson(),
    "minecraft:behavior.mount_pathing": minecraftBehaviorMountPathing.toJson(),
    "minecraft:tamemount": minecraftTamemount.toJson(),
  };
}

class MinecraftBehaviorM {
  int priority;
  double speedMultiplier;
  int targetDist;
  bool trackTarget;

  MinecraftBehaviorM({
    this.priority,
    this.speedMultiplier,
    this.targetDist,
    this.trackTarget,
  });

  factory MinecraftBehaviorM.fromJson(Map<String, dynamic> json) => new MinecraftBehaviorM(
    priority: json["priority"],
    speedMultiplier: json["speed_multiplier"].toDouble(),
    targetDist: json["target_dist"] == null ? null : json["target_dist"],
    trackTarget: json["track_target"],
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "speed_multiplier": speedMultiplier,
    "target_dist": targetDist == null ? null : targetDist,
    "track_target": trackTarget,
  };
}

class MinecraftTamemount {
  int minTemper;
  int maxTemper;
  String feedText;
  String rideText;
  List<MinecraftTamemountFeedItem> feedItems;
  List<Item> autoRejectItems;
  NordSugarGliders tameEvent;

  MinecraftTamemount({
    this.minTemper,
    this.maxTemper,
    this.feedText,
    this.rideText,
    this.feedItems,
    this.autoRejectItems,
    this.tameEvent,
  });

  factory MinecraftTamemount.fromJson(Map<String, dynamic> json) => new MinecraftTamemount(
    minTemper: json["minTemper"],
    maxTemper: json["maxTemper"],
    feedText: json["feed_text"],
    rideText: json["ride_text"],
    feedItems: new List<MinecraftTamemountFeedItem>.from(json["feedItems"].map((x) => MinecraftTamemountFeedItem.fromJson(x))),
    autoRejectItems: new List<Item>.from(json["autoRejectItems"].map((x) => Item.fromJson(x))),
    tameEvent: NordSugarGliders.fromJson(json["tame_event"]),
  );

  Map<String, dynamic> toJson() => {
    "minTemper": minTemper,
    "maxTemper": maxTemper,
    "feed_text": feedText,
    "ride_text": rideText,
    "feedItems": new List<dynamic>.from(feedItems.map((x) => x.toJson())),
    "autoRejectItems": new List<dynamic>.from(autoRejectItems.map((x) => x.toJson())),
    "tame_event": tameEvent.toJson(),
  };
}

class MinecraftTamemountFeedItem {
  String item;
  int temperMod;

  MinecraftTamemountFeedItem({
    this.item,
    this.temperMod,
  });

  factory MinecraftTamemountFeedItem.fromJson(Map<String, dynamic> json) => new MinecraftTamemountFeedItem(
    item: json["item"],
    temperMod: json["temperMod"],
  );

  Map<String, dynamic> toJson() => {
    "item": item,
    "temperMod": temperMod,
  };
}

class MinecraftDyeable {
  DibrugarhFerrets minecraftIsDyeable;

  MinecraftDyeable({
    this.minecraftIsDyeable,
  });

  factory MinecraftDyeable.fromJson(Map<String, dynamic> json) => new MinecraftDyeable(
    minecraftIsDyeable: DibrugarhFerrets.fromJson(json["minecraft:is_dyeable"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:is_dyeable": minecraftIsDyeable.toJson(),
  };
}

class MinecraftEndermanAngry {
  MinecraftEndermanAngryMinecraftAngry minecraftAngry;
  MinecraftFlyingSpeed minecraftMovement;
  MinecraftBehaviorM minecraftBehaviorMeleeAttack;

  MinecraftEndermanAngry({
    this.minecraftAngry,
    this.minecraftMovement,
    this.minecraftBehaviorMeleeAttack,
  });

  factory MinecraftEndermanAngry.fromJson(Map<String, dynamic> json) => new MinecraftEndermanAngry(
    minecraftAngry: MinecraftEndermanAngryMinecraftAngry.fromJson(json["minecraft:angry"]),
    minecraftMovement: MinecraftFlyingSpeed.fromJson(json["minecraft:movement"]),
    minecraftBehaviorMeleeAttack: MinecraftBehaviorM.fromJson(json["minecraft:behavior.melee_attack"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:angry": minecraftAngry.toJson(),
    "minecraft:movement": minecraftMovement.toJson(),
    "minecraft:behavior.melee_attack": minecraftBehaviorMeleeAttack.toJson(),
  };
}

class MinecraftEndermanAngryMinecraftAngry {
  int duration;
  NordSugarGliders calmEvent;

  MinecraftEndermanAngryMinecraftAngry({
    this.duration,
    this.calmEvent,
  });

  factory MinecraftEndermanAngryMinecraftAngry.fromJson(Map<String, dynamic> json) => new MinecraftEndermanAngryMinecraftAngry(
    duration: json["duration"],
    calmEvent: NordSugarGliders.fromJson(json["calm_event"]),
  );

  Map<String, dynamic> toJson() => {
    "duration": duration,
    "calm_event": calmEvent.toJson(),
  };
}

class MinecraftEndermanCalm {
  NordSugarGliders minecraftOnTargetAcquired;
  MinecraftFlyingSpeed minecraftMovement;

  MinecraftEndermanCalm({
    this.minecraftOnTargetAcquired,
    this.minecraftMovement,
  });

  factory MinecraftEndermanCalm.fromJson(Map<String, dynamic> json) => new MinecraftEndermanCalm(
    minecraftOnTargetAcquired: NordSugarGliders.fromJson(json["minecraft:on_target_acquired"]),
    minecraftMovement: MinecraftFlyingSpeed.fromJson(json["minecraft:movement"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:on_target_acquired": minecraftOnTargetAcquired.toJson(),
    "minecraft:movement": minecraftMovement.toJson(),
  };
}

class MinecraftGuardianAggressive {
  MinecraftAngryMinecraftBehaviorNearestAttackableTarget minecraftBehaviorNearestAttackableTarget;
  MinecraftTargetNearbySensor minecraftTargetNearbySensor;
  SantiagoDeCaliRaven minecraftBehaviorGuardianAttack;

  MinecraftGuardianAggressive({
    this.minecraftBehaviorNearestAttackableTarget,
    this.minecraftTargetNearbySensor,
    this.minecraftBehaviorGuardianAttack,
  });

  factory MinecraftGuardianAggressive.fromJson(Map<String, dynamic> json) => new MinecraftGuardianAggressive(
    minecraftBehaviorNearestAttackableTarget: MinecraftAngryMinecraftBehaviorNearestAttackableTarget.fromJson(json["minecraft:behavior.nearest_attackable_target"]),
    minecraftTargetNearbySensor: MinecraftTargetNearbySensor.fromJson(json["minecraft:target_nearby_sensor"]),
    minecraftBehaviorGuardianAttack: SantiagoDeCaliRaven.fromJson(json["minecraft:behavior.guardian_attack"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:behavior.nearest_attackable_target": minecraftBehaviorNearestAttackableTarget.toJson(),
    "minecraft:target_nearby_sensor": minecraftTargetNearbySensor.toJson(),
    "minecraft:behavior.guardian_attack": minecraftBehaviorGuardianAttack.toJson(),
  };
}

class MinecraftTargetNearbySensor {
  int insideRange;
  int outsideRange;
  NordSugarGliders onInsideRange;
  NordSugarGliders onOutsideRange;

  MinecraftTargetNearbySensor({
    this.insideRange,
    this.outsideRange,
    this.onInsideRange,
    this.onOutsideRange,
  });

  factory MinecraftTargetNearbySensor.fromJson(Map<String, dynamic> json) => new MinecraftTargetNearbySensor(
    insideRange: json["inside_range"],
    outsideRange: json["outside_range"],
    onInsideRange: NordSugarGliders.fromJson(json["on_inside_range"]),
    onOutsideRange: json["on_outside_range"] == null ? null : NordSugarGliders.fromJson(json["on_outside_range"]),
  );

  Map<String, dynamic> toJson() => {
    "inside_range": insideRange,
    "outside_range": outsideRange,
    "on_inside_range": onInsideRange.toJson(),
    "on_outside_range": onOutsideRange == null ? null : onOutsideRange.toJson(),
  };
}

class MinecraftGuardianPassive {
  MinecraftGuardianPassiveMinecraftTimer minecraftTimer;
  MinecraftGuardianPassiveMinecraftBehaviorAvoidMobType minecraftBehaviorAvoidMobType;

  MinecraftGuardianPassive({
    this.minecraftTimer,
    this.minecraftBehaviorAvoidMobType,
  });

  factory MinecraftGuardianPassive.fromJson(Map<String, dynamic> json) => new MinecraftGuardianPassive(
    minecraftTimer: MinecraftGuardianPassiveMinecraftTimer.fromJson(json["minecraft:timer"]),
    minecraftBehaviorAvoidMobType: MinecraftGuardianPassiveMinecraftBehaviorAvoidMobType.fromJson(json["minecraft:behavior.avoid_mob_type"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:timer": minecraftTimer.toJson(),
    "minecraft:behavior.avoid_mob_type": minecraftBehaviorAvoidMobType.toJson(),
  };
}

class MinecraftGuardianPassiveMinecraftBehaviorAvoidMobType {
  int priority;
  List<FluffyEntityType> entityTypes;

  MinecraftGuardianPassiveMinecraftBehaviorAvoidMobType({
    this.priority,
    this.entityTypes,
  });

  factory MinecraftGuardianPassiveMinecraftBehaviorAvoidMobType.fromJson(Map<String, dynamic> json) => new MinecraftGuardianPassiveMinecraftBehaviorAvoidMobType(
    priority: json["priority"],
    entityTypes: new List<FluffyEntityType>.from(json["entity_types"].map((x) => FluffyEntityType.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "entity_types": new List<dynamic>.from(entityTypes.map((x) => x.toJson())),
  };
}

class FluffyEntityType {
  MinecraftBehaviorShareItemsFilters filters;
  int maxDist;
  double walkSpeedMultiplier;
  double sprintSpeedMultiplier;

  FluffyEntityType({
    this.filters,
    this.maxDist,
    this.walkSpeedMultiplier,
    this.sprintSpeedMultiplier,
  });

  factory FluffyEntityType.fromJson(Map<String, dynamic> json) => new FluffyEntityType(
    filters: MinecraftBehaviorShareItemsFilters.fromJson(json["filters"]),
    maxDist: json["max_dist"],
    walkSpeedMultiplier: json["walk_speed_multiplier"].toDouble(),
    sprintSpeedMultiplier: json["sprint_speed_multiplier"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "filters": filters.toJson(),
    "max_dist": maxDist,
    "walk_speed_multiplier": walkSpeedMultiplier,
    "sprint_speed_multiplier": sprintSpeedMultiplier,
  };
}

class MinecraftGuardianPassiveMinecraftTimer {
  List<int> time;
  bool looping;
  NordSugarGliders timeDownEvent;

  MinecraftGuardianPassiveMinecraftTimer({
    this.time,
    this.looping,
    this.timeDownEvent,
  });

  factory MinecraftGuardianPassiveMinecraftTimer.fromJson(Map<String, dynamic> json) => new MinecraftGuardianPassiveMinecraftTimer(
    time: new List<int>.from(json["time"].map((x) => x)),
    looping: json["looping"],
    timeDownEvent: NordSugarGliders.fromJson(json["time_down_event"]),
  );

  Map<String, dynamic> toJson() => {
    "time": new List<dynamic>.from(time.map((x) => x)),
    "looping": looping,
    "time_down_event": timeDownEvent.toJson(),
  };
}

class MinecraftHorseTamed {
  DibrugarhFerrets minecraftIsTamed;
  MinecraftDonkeyTamedMinecraftRideable minecraftRideable;
  MinecraftDonkeyTamedMinecraftInventory minecraftInventory;
  MinecraftChickenAdultMinecraftBreedable minecraftBreedable;
  MinecraftDonkeyTamedMinecraftBehaviorTempt minecraftBehaviorTempt;

  MinecraftHorseTamed({
    this.minecraftIsTamed,
    this.minecraftRideable,
    this.minecraftInventory,
    this.minecraftBreedable,
    this.minecraftBehaviorTempt,
  });

  factory MinecraftHorseTamed.fromJson(Map<String, dynamic> json) => new MinecraftHorseTamed(
    minecraftIsTamed: DibrugarhFerrets.fromJson(json["minecraft:is_tamed"]),
    minecraftRideable: MinecraftDonkeyTamedMinecraftRideable.fromJson(json["minecraft:rideable"]),
    minecraftInventory: MinecraftDonkeyTamedMinecraftInventory.fromJson(json["minecraft:inventory"]),
    minecraftBreedable: MinecraftChickenAdultMinecraftBreedable.fromJson(json["minecraft:breedable"]),
    minecraftBehaviorTempt: MinecraftDonkeyTamedMinecraftBehaviorTempt.fromJson(json["minecraft:behavior.tempt"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:is_tamed": minecraftIsTamed.toJson(),
    "minecraft:rideable": minecraftRideable.toJson(),
    "minecraft:inventory": minecraftInventory.toJson(),
    "minecraft:breedable": minecraftBreedable.toJson(),
    "minecraft:behavior.tempt": minecraftBehaviorTempt.toJson(),
  };
}

class MinecraftHostileClass {
  MinecraftHostileMinecraftEnvironmentSensor minecraftEnvironmentSensor;
  MinecraftAngryMinecraftBehaviorNearestAttackableTarget minecraftBehaviorNearestAttackableTarget;
  MinecraftAngryMinecraftBehaviorLeapAtTarget minecraftBehaviorLeapAtTarget;
  MinecraftAngryMinecraftBehaviorMeleeAttack minecraftBehaviorMeleeAttack;
  MinecraftEndermanAngryMinecraftAngry minecraftAngry;

  MinecraftHostileClass({
    this.minecraftEnvironmentSensor,
    this.minecraftBehaviorNearestAttackableTarget,
    this.minecraftBehaviorLeapAtTarget,
    this.minecraftBehaviorMeleeAttack,
    this.minecraftAngry,
  });

  factory MinecraftHostileClass.fromJson(Map<String, dynamic> json) => new MinecraftHostileClass(
    minecraftEnvironmentSensor: json["minecraft:environment_sensor"] == null ? null : MinecraftHostileMinecraftEnvironmentSensor.fromJson(json["minecraft:environment_sensor"]),
    minecraftBehaviorNearestAttackableTarget: MinecraftAngryMinecraftBehaviorNearestAttackableTarget.fromJson(json["minecraft:behavior.nearest_attackable_target"]),
    minecraftBehaviorLeapAtTarget: MinecraftAngryMinecraftBehaviorLeapAtTarget.fromJson(json["minecraft:behavior.leap_at_target"]),
    minecraftBehaviorMeleeAttack: MinecraftAngryMinecraftBehaviorMeleeAttack.fromJson(json["minecraft:behavior.melee_attack"]),
    minecraftAngry: json["minecraft:angry"] == null ? null : MinecraftEndermanAngryMinecraftAngry.fromJson(json["minecraft:angry"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:environment_sensor": minecraftEnvironmentSensor == null ? null : minecraftEnvironmentSensor.toJson(),
    "minecraft:behavior.nearest_attackable_target": minecraftBehaviorNearestAttackableTarget.toJson(),
    "minecraft:behavior.leap_at_target": minecraftBehaviorLeapAtTarget.toJson(),
    "minecraft:behavior.melee_attack": minecraftBehaviorMeleeAttack.toJson(),
    "minecraft:angry": minecraftAngry == null ? null : minecraftAngry.toJson(),
  };
}

class MinecraftHostileMinecraftEnvironmentSensor {
  PurpleOnEnvironment onEnvironment;

  MinecraftHostileMinecraftEnvironmentSensor({
    this.onEnvironment,
  });

  factory MinecraftHostileMinecraftEnvironmentSensor.fromJson(Map<String, dynamic> json) => new MinecraftHostileMinecraftEnvironmentSensor(
    onEnvironment: PurpleOnEnvironment.fromJson(json["on_environment"]),
  );

  Map<String, dynamic> toJson() => {
    "on_environment": onEnvironment.toJson(),
  };
}

class PurpleOnEnvironment {
  StickyFilters filters;
  String event;

  PurpleOnEnvironment({
    this.filters,
    this.event,
  });

  factory PurpleOnEnvironment.fromJson(Map<String, dynamic> json) => new PurpleOnEnvironment(
    filters: StickyFilters.fromJson(json["filters"]),
    event: json["event"],
  );

  Map<String, dynamic> toJson() => {
    "filters": filters.toJson(),
    "event": event,
  };
}

class StickyFilters {
  dynamic withEnvironmentAny;

  StickyFilters({
    this.withEnvironmentAny,
  });

  factory StickyFilters.fromJson(Map<String, dynamic> json) => new StickyFilters(
    withEnvironmentAny: json["with_environment_any"],
  );

  Map<String, dynamic> toJson() => {
    "with_environment_any": withEnvironmentAny,
  };
}

class MinecraftErMode {
  MinecraftHunterModeMinecraftNavigationGeneric minecraftNavigationGeneric;

  MinecraftErMode({
    this.minecraftNavigationGeneric,
  });

  factory MinecraftErMode.fromJson(Map<String, dynamic> json) => new MinecraftErMode(
    minecraftNavigationGeneric: MinecraftHunterModeMinecraftNavigationGeneric.fromJson(json["minecraft:navigation.generic"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:navigation.generic": minecraftNavigationGeneric.toJson(),
  };
}

class MinecraftHunterModeMinecraftNavigationGeneric {
  bool isAmphibious;
  bool canPathOverWater;
  bool canSwim;
  bool canWalk;
  bool avoidSun;

  MinecraftHunterModeMinecraftNavigationGeneric({
    this.isAmphibious,
    this.canPathOverWater,
    this.canSwim,
    this.canWalk,
    this.avoidSun,
  });

  factory MinecraftHunterModeMinecraftNavigationGeneric.fromJson(Map<String, dynamic> json) => new MinecraftHunterModeMinecraftNavigationGeneric(
    isAmphibious: json["is_amphibious"],
    canPathOverWater: json["can_path_over_water"],
    canSwim: json["can_swim"],
    canWalk: json["can_walk"],
    avoidSun: json["avoid_sun"],
  );

  Map<String, dynamic> toJson() => {
    "is_amphibious": isAmphibious,
    "can_path_over_water": canPathOverWater,
    "can_swim": canSwim,
    "can_walk": canWalk,
    "avoid_sun": avoidSun,
  };
}

class MinecraftInCaravan {
  List<MinecraftInCaravanMinecraftDamageSensor> minecraftDamageSensor;

  MinecraftInCaravan({
    this.minecraftDamageSensor,
  });

  factory MinecraftInCaravan.fromJson(Map<String, dynamic> json) => new MinecraftInCaravan(
    minecraftDamageSensor: new List<MinecraftInCaravanMinecraftDamageSensor>.from(json["minecraft:damage_sensor"].map((x) => MinecraftInCaravanMinecraftDamageSensor.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:damage_sensor": new List<dynamic>.from(minecraftDamageSensor.map((x) => x.toJson())),
  };
}

class MinecraftInCaravanMinecraftDamageSensor {
  String cause;
  bool dealsDamage;

  MinecraftInCaravanMinecraftDamageSensor({
    this.cause,
    this.dealsDamage,
  });

  factory MinecraftInCaravanMinecraftDamageSensor.fromJson(Map<String, dynamic> json) => new MinecraftInCaravanMinecraftDamageSensor(
    cause: json["cause"],
    dealsDamage: json["deals_damage"],
  );

  Map<String, dynamic> toJson() => {
    "cause": cause,
    "deals_damage": dealsDamage,
  };
}

class MinecraftJockey {
  MinecraftAddrider minecraftAddrider;
  MinecraftJockeyMinecraftRideable minecraftRideable;
  MinecraftJockeyMinecraftEnvironmentSensor minecraftEnvironmentSensor;
  OnClose minecraftOnTargetAcquired;
  MinecraftJockeyMinecraftBehaviorFindMount minecraftBehaviorFindMount;

  MinecraftJockey({
    this.minecraftAddrider,
    this.minecraftRideable,
    this.minecraftEnvironmentSensor,
    this.minecraftOnTargetAcquired,
    this.minecraftBehaviorFindMount,
  });

  factory MinecraftJockey.fromJson(Map<String, dynamic> json) => new MinecraftJockey(
    minecraftAddrider: json["minecraft:addrider"] == null ? null : MinecraftAddrider.fromJson(json["minecraft:addrider"]),
    minecraftRideable: json["minecraft:rideable"] == null ? null : MinecraftJockeyMinecraftRideable.fromJson(json["minecraft:rideable"]),
    minecraftEnvironmentSensor: json["minecraft:environment_sensor"] == null ? null : MinecraftJockeyMinecraftEnvironmentSensor.fromJson(json["minecraft:environment_sensor"]),
    minecraftOnTargetAcquired: json["minecraft:on_target_acquired"] == null ? null : OnClose.fromJson(json["minecraft:on_target_acquired"]),
    minecraftBehaviorFindMount: json["minecraft:behavior.find_mount"] == null ? null : MinecraftJockeyMinecraftBehaviorFindMount.fromJson(json["minecraft:behavior.find_mount"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:addrider": minecraftAddrider == null ? null : minecraftAddrider.toJson(),
    "minecraft:rideable": minecraftRideable == null ? null : minecraftRideable.toJson(),
    "minecraft:environment_sensor": minecraftEnvironmentSensor == null ? null : minecraftEnvironmentSensor.toJson(),
    "minecraft:on_target_acquired": minecraftOnTargetAcquired == null ? null : minecraftOnTargetAcquired.toJson(),
    "minecraft:behavior.find_mount": minecraftBehaviorFindMount == null ? null : minecraftBehaviorFindMount.toJson(),
  };
}

class MinecraftAddrider {
  String entityType;

  MinecraftAddrider({
    this.entityType,
  });

  factory MinecraftAddrider.fromJson(Map<String, dynamic> json) => new MinecraftAddrider(
    entityType: json["entity_type"],
  );

  Map<String, dynamic> toJson() => {
    "entity_type": entityType,
  };
}

class MinecraftJockeyMinecraftBehaviorFindMount {
  int priority;
  int withinRadius;

  MinecraftJockeyMinecraftBehaviorFindMount({
    this.priority,
    this.withinRadius,
  });

  factory MinecraftJockeyMinecraftBehaviorFindMount.fromJson(Map<String, dynamic> json) => new MinecraftJockeyMinecraftBehaviorFindMount(
    priority: json["priority"],
    withinRadius: json["within_radius"],
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "within_radius": withinRadius,
  };
}

class MinecraftJockeyMinecraftEnvironmentSensor {
  FluffyOnEnvironment onEnvironment;

  MinecraftJockeyMinecraftEnvironmentSensor({
    this.onEnvironment,
  });

  factory MinecraftJockeyMinecraftEnvironmentSensor.fromJson(Map<String, dynamic> json) => new MinecraftJockeyMinecraftEnvironmentSensor(
    onEnvironment: FluffyOnEnvironment.fromJson(json["on_environment"]),
  );

  Map<String, dynamic> toJson() => {
    "on_environment": onEnvironment.toJson(),
  };
}

class FluffyOnEnvironment {
  IndigoFilters filters;
  String event;

  FluffyOnEnvironment({
    this.filters,
    this.event,
  });

  factory FluffyOnEnvironment.fromJson(Map<String, dynamic> json) => new FluffyOnEnvironment(
    filters: IndigoFilters.fromJson(json["filters"]),
    event: json["event"],
  );

  Map<String, dynamic> toJson() => {
    "filters": filters.toJson(),
    "event": event,
  };
}

class IndigoFilters {
  List<String> withEnvironmentAny;

  IndigoFilters({
    this.withEnvironmentAny,
  });

  factory IndigoFilters.fromJson(Map<String, dynamic> json) => new IndigoFilters(
    withEnvironmentAny: new List<String>.from(json["with_environment_any"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "with_environment_any": new List<dynamic>.from(withEnvironmentAny.map((x) => x)),
  };
}

class MinecraftJockeyMinecraftRideable {
  int seatCount;
  List<String> familyTypes;
  List<SeatsSeats> seats;

  MinecraftJockeyMinecraftRideable({
    this.seatCount,
    this.familyTypes,
    this.seats,
  });

  factory MinecraftJockeyMinecraftRideable.fromJson(Map<String, dynamic> json) => new MinecraftJockeyMinecraftRideable(
    seatCount: json["seat_count"],
    familyTypes: new List<String>.from(json["family_types"].map((x) => x)),
    seats: new List<SeatsSeats>.from(json["seats"].map((x) => SeatsSeats.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "seat_count": seatCount,
    "family_types": new List<dynamic>.from(familyTypes.map((x) => x)),
    "seats": new List<dynamic>.from(seats.map((x) => x.toJson())),
  };
}

class MinecraftLeashedClass {
  PurpleMinecraftBehavior minecraftBehaviorMoveTowardsRestriction;

  MinecraftLeashedClass({
    this.minecraftBehaviorMoveTowardsRestriction,
  });

  factory MinecraftLeashedClass.fromJson(Map<String, dynamic> json) => new MinecraftLeashedClass(
    minecraftBehaviorMoveTowardsRestriction: PurpleMinecraftBehavior.fromJson(json["minecraft:behavior.move_towards_restriction"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:behavior.move_towards_restriction": minecraftBehaviorMoveTowardsRestriction.toJson(),
  };
}

class MinecraftLlamaAdult {
  MinecraftEquipment minecraftLoot;
  MinecraftCollisionBox minecraftCollisionBox;
  MinecraftBehaviorFleeSunClass minecraftBehaviorBreed;
  MinecraftChickenAdultMinecraftBreedable minecraftBreedable;

  MinecraftLlamaAdult({
    this.minecraftLoot,
    this.minecraftCollisionBox,
    this.minecraftBehaviorBreed,
    this.minecraftBreedable,
  });

  factory MinecraftLlamaAdult.fromJson(Map<String, dynamic> json) => new MinecraftLlamaAdult(
    minecraftLoot: MinecraftEquipment.fromJson(json["minecraft:loot"]),
    minecraftCollisionBox: MinecraftCollisionBox.fromJson(json["minecraft:collision_box"]),
    minecraftBehaviorBreed: MinecraftBehaviorFleeSunClass.fromJson(json["minecraft:behavior.breed"]),
    minecraftBreedable: MinecraftChickenAdultMinecraftBreedable.fromJson(json["minecraft:breedable"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:loot": minecraftLoot.toJson(),
    "minecraft:collision_box": minecraftCollisionBox.toJson(),
    "minecraft:behavior.breed": minecraftBehaviorBreed.toJson(),
    "minecraft:breedable": minecraftBreedable.toJson(),
  };
}

class MinecraftLlamaAngry {
  MinecraftAdultHostileMinecraftAngry minecraftAngry;
  MinecraftLlamaAngryMinecraftBehaviorRangedAttack minecraftBehaviorRangedAttack;

  MinecraftLlamaAngry({
    this.minecraftAngry,
    this.minecraftBehaviorRangedAttack,
  });

  factory MinecraftLlamaAngry.fromJson(Map<String, dynamic> json) => new MinecraftLlamaAngry(
    minecraftAngry: MinecraftAdultHostileMinecraftAngry.fromJson(json["minecraft:angry"]),
    minecraftBehaviorRangedAttack: MinecraftLlamaAngryMinecraftBehaviorRangedAttack.fromJson(json["minecraft:behavior.ranged_attack"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:angry": minecraftAngry.toJson(),
    "minecraft:behavior.ranged_attack": minecraftBehaviorRangedAttack.toJson(),
  };
}

class MinecraftLlamaAngryMinecraftBehaviorRangedAttack {
  int priority;
  int attackRadius;
  int chargeShootTrigger;
  int chargeChargedTrigger;

  MinecraftLlamaAngryMinecraftBehaviorRangedAttack({
    this.priority,
    this.attackRadius,
    this.chargeShootTrigger,
    this.chargeChargedTrigger,
  });

  factory MinecraftLlamaAngryMinecraftBehaviorRangedAttack.fromJson(Map<String, dynamic> json) => new MinecraftLlamaAngryMinecraftBehaviorRangedAttack(
    priority: json["priority"],
    attackRadius: json["attack_radius"],
    chargeShootTrigger: json["charge_shoot_trigger"],
    chargeChargedTrigger: json["charge_charged_trigger"],
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "attack_radius": attackRadius,
    "charge_shoot_trigger": chargeShootTrigger,
    "charge_charged_trigger": chargeChargedTrigger,
  };
}

class MinecraftLlamaTamed {
  DibrugarhFerrets minecraftIsTamed;
  MinecraftDonkeyTamedMinecraftRideable minecraftRideable;
  MinecraftLlamaTamedMinecraftInventory minecraftInventory;
  MinecraftLlamaTamedMinecraftEquippable minecraftEquippable;

  MinecraftLlamaTamed({
    this.minecraftIsTamed,
    this.minecraftRideable,
    this.minecraftInventory,
    this.minecraftEquippable,
  });

  factory MinecraftLlamaTamed.fromJson(Map<String, dynamic> json) => new MinecraftLlamaTamed(
    minecraftIsTamed: DibrugarhFerrets.fromJson(json["minecraft:is_tamed"]),
    minecraftRideable: MinecraftDonkeyTamedMinecraftRideable.fromJson(json["minecraft:rideable"]),
    minecraftInventory: MinecraftLlamaTamedMinecraftInventory.fromJson(json["minecraft:inventory"]),
    minecraftEquippable: MinecraftLlamaTamedMinecraftEquippable.fromJson(json["minecraft:equippable"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:is_tamed": minecraftIsTamed.toJson(),
    "minecraft:rideable": minecraftRideable.toJson(),
    "minecraft:inventory": minecraftInventory.toJson(),
    "minecraft:equippable": minecraftEquippable.toJson(),
  };
}

class MinecraftLlamaTamedMinecraftEquippable {
  List<FluffySlot> slots;

  MinecraftLlamaTamedMinecraftEquippable({
    this.slots,
  });

  factory MinecraftLlamaTamedMinecraftEquippable.fromJson(Map<String, dynamic> json) => new MinecraftLlamaTamedMinecraftEquippable(
    slots: new List<FluffySlot>.from(json["slots"].map((x) => FluffySlot.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "slots": new List<dynamic>.from(slots.map((x) => x.toJson())),
  };
}

class FluffySlot {
  int slot;
  String item;
  List<String> acceptedItems;

  FluffySlot({
    this.slot,
    this.item,
    this.acceptedItems,
  });

  factory FluffySlot.fromJson(Map<String, dynamic> json) => new FluffySlot(
    slot: json["slot"],
    item: json["item"],
    acceptedItems: new List<String>.from(json["accepted_items"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "slot": slot,
    "item": item,
    "accepted_items": new List<dynamic>.from(acceptedItems.map((x) => x)),
  };
}

class MinecraftLlamaTamedMinecraftInventory {
  int inventorySize;
  String containerType;
  int additionalSlotsPerStrength;

  MinecraftLlamaTamedMinecraftInventory({
    this.inventorySize,
    this.containerType,
    this.additionalSlotsPerStrength,
  });

  factory MinecraftLlamaTamedMinecraftInventory.fromJson(Map<String, dynamic> json) => new MinecraftLlamaTamedMinecraftInventory(
    inventorySize: json["inventory_size"],
    containerType: json["container_type"],
    additionalSlotsPerStrength: json["additional_slots_per_strength"],
  );

  Map<String, dynamic> toJson() => {
    "inventory_size": inventorySize,
    "container_type": containerType,
    "additional_slots_per_strength": additionalSlotsPerStrength,
  };
}

class MinecraftLlamaWild {
  MinecraftChickenAdultMinecraftRideable minecraftRideable;
  MinecraftTamemount minecraftTamemount;

  MinecraftLlamaWild({
    this.minecraftRideable,
    this.minecraftTamemount,
  });

  factory MinecraftLlamaWild.fromJson(Map<String, dynamic> json) => new MinecraftLlamaWild(
    minecraftRideable: MinecraftChickenAdultMinecraftRideable.fromJson(json["minecraft:rideable"]),
    minecraftTamemount: MinecraftTamemount.fromJson(json["minecraft:tamemount"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:rideable": minecraftRideable.toJson(),
    "minecraft:tamemount": minecraftTamemount.toJson(),
  };
}

class MinecraftMeleeMode {
  MinecraftAdultHostileMinecraftAttack minecraftAttack;
  MinecraftBehaviorM minecraftBehaviorMeleeAttack;
  MinecraftMeleeModeMinecraftEquipment minecraftEquipment;

  MinecraftMeleeMode({
    this.minecraftAttack,
    this.minecraftBehaviorMeleeAttack,
    this.minecraftEquipment,
  });

  factory MinecraftMeleeMode.fromJson(Map<String, dynamic> json) => new MinecraftMeleeMode(
    minecraftAttack: MinecraftAdultHostileMinecraftAttack.fromJson(json["minecraft:attack"]),
    minecraftBehaviorMeleeAttack: MinecraftBehaviorM.fromJson(json["minecraft:behavior.melee_attack"]),
    minecraftEquipment: MinecraftMeleeModeMinecraftEquipment.fromJson(json["minecraft:equipment"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:attack": minecraftAttack.toJson(),
    "minecraft:behavior.melee_attack": minecraftBehaviorMeleeAttack.toJson(),
    "minecraft:equipment": minecraftEquipment.toJson(),
  };
}

class MinecraftMeleeModeMinecraftEquipment {
  String table;
  List<SlotDropChance> slotDropChance;

  MinecraftMeleeModeMinecraftEquipment({
    this.table,
    this.slotDropChance,
  });

  factory MinecraftMeleeModeMinecraftEquipment.fromJson(Map<String, dynamic> json) => new MinecraftMeleeModeMinecraftEquipment(
    table: json["table"],
    slotDropChance: new List<SlotDropChance>.from(json["slot_drop_chance"].map((x) => SlotDropChance.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "table": table,
    "slot_drop_chance": new List<dynamic>.from(slotDropChance.map((x) => x.toJson())),
  };
}

class SlotDropChance {
  String slot;
  int dropChance;

  SlotDropChance({
    this.slot,
    this.dropChance,
  });

  factory SlotDropChance.fromJson(Map<String, dynamic> json) => new SlotDropChance(
    slot: json["slot"],
    dropChance: json["drop_chance"],
  );

  Map<String, dynamic> toJson() => {
    "slot": slot,
    "drop_chance": dropChance,
  };
}

class MinecraftModeSwitcher {
  MinecraftTargetNearbySensor minecraftTargetNearbySensor;
  MinecraftMeleeModeMinecraftEquipment minecraftEquipment;

  MinecraftModeSwitcher({
    this.minecraftTargetNearbySensor,
    this.minecraftEquipment,
  });

  factory MinecraftModeSwitcher.fromJson(Map<String, dynamic> json) => new MinecraftModeSwitcher(
    minecraftTargetNearbySensor: MinecraftTargetNearbySensor.fromJson(json["minecraft:target_nearby_sensor"]),
    minecraftEquipment: MinecraftMeleeModeMinecraftEquipment.fromJson(json["minecraft:equipment"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:target_nearby_sensor": minecraftTargetNearbySensor.toJson(),
    "minecraft:equipment": minecraftEquipment.toJson(),
  };
}

class MinecraftMuleTamed {
  MinecraftDonkeyTamedMinecraftRideable minecraftRideable;
  DibrugarhFerrets minecraftBehaviorPlayerRideTamed;
  MinecraftDonkeyTamedMinecraftInventory minecraftInventory;

  MinecraftMuleTamed({
    this.minecraftRideable,
    this.minecraftBehaviorPlayerRideTamed,
    this.minecraftInventory,
  });

  factory MinecraftMuleTamed.fromJson(Map<String, dynamic> json) => new MinecraftMuleTamed(
    minecraftRideable: MinecraftDonkeyTamedMinecraftRideable.fromJson(json["minecraft:rideable"]),
    minecraftBehaviorPlayerRideTamed: DibrugarhFerrets.fromJson(json["minecraft:behavior.player_ride_tamed"]),
    minecraftInventory: MinecraftDonkeyTamedMinecraftInventory.fromJson(json["minecraft:inventory"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:rideable": minecraftRideable.toJson(),
    "minecraft:behavior.player_ride_tamed": minecraftBehaviorPlayerRideTamed.toJson(),
    "minecraft:inventory": minecraftInventory.toJson(),
  };
}

class MinecraftMuleUnchested {
  List<MinecraftMuleUnchestedMinecraftInteract> minecraftInteract;

  MinecraftMuleUnchested({
    this.minecraftInteract,
  });

  factory MinecraftMuleUnchested.fromJson(Map<String, dynamic> json) => new MinecraftMuleUnchested(
    minecraftInteract: new List<MinecraftMuleUnchestedMinecraftInteract>.from(json["minecraft:interact"].map((x) => MinecraftMuleUnchestedMinecraftInteract.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:interact": new List<dynamic>.from(minecraftInteract.map((x) => x.toJson())),
  };
}

class MinecraftMuleUnchestedMinecraftInteract {
  TentacledOnInteract onInteract;
  String useItem;
  String interactText;

  MinecraftMuleUnchestedMinecraftInteract({
    this.onInteract,
    this.useItem,
    this.interactText,
  });

  factory MinecraftMuleUnchestedMinecraftInteract.fromJson(Map<String, dynamic> json) => new MinecraftMuleUnchestedMinecraftInteract(
    onInteract: TentacledOnInteract.fromJson(json["on_interact"]),
    useItem: json["use_item"],
    interactText: json["interact_text"],
  );

  Map<String, dynamic> toJson() => {
    "on_interact": onInteract.toJson(),
    "use_item": useItem,
    "interact_text": interactText,
  };
}

class TentacledOnInteract {
  IndecentFilters filters;
  String event;
  Target target;

  TentacledOnInteract({
    this.filters,
    this.event,
    this.target,
  });

  factory TentacledOnInteract.fromJson(Map<String, dynamic> json) => new TentacledOnInteract(
    filters: IndecentFilters.fromJson(json["filters"]),
    event: json["event"],
    target: targetValues.map[json["target"]],
  );

  Map<String, dynamic> toJson() => {
    "filters": filters.toJson(),
    "event": event,
    "target": targetValues.reverse[target],
  };
}

class IndecentFilters {
  String otherWithItem;
  OtherWithFamilies otherWithFamilies;

  IndecentFilters({
    this.otherWithItem,
    this.otherWithFamilies,
  });

  factory IndecentFilters.fromJson(Map<String, dynamic> json) => new IndecentFilters(
    otherWithItem: json["other_with_item"],
    otherWithFamilies: otherWithFamiliesValues.map[json["other_with_families"]],
  );

  Map<String, dynamic> toJson() => {
    "other_with_item": otherWithItem,
    "other_with_families": otherWithFamiliesValues.reverse[otherWithFamilies],
  };
}

class MinecraftNeutral {
  MinecraftJockeyMinecraftEnvironmentSensor minecraftEnvironmentSensor;
  OnClose minecraftOnTargetAcquired;

  MinecraftNeutral({
    this.minecraftEnvironmentSensor,
    this.minecraftOnTargetAcquired,
  });

  factory MinecraftNeutral.fromJson(Map<String, dynamic> json) => new MinecraftNeutral(
    minecraftEnvironmentSensor: MinecraftJockeyMinecraftEnvironmentSensor.fromJson(json["minecraft:environment_sensor"]),
    minecraftOnTargetAcquired: OnClose.fromJson(json["minecraft:on_target_acquired"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:environment_sensor": minecraftEnvironmentSensor.toJson(),
    "minecraft:on_target_acquired": minecraftOnTargetAcquired.toJson(),
  };
}

class MinecraftParrotTame {
  MinecraftTypeFamily minecraftTypeFamily;
  DibrugarhFerrets minecraftIsTamed;
  MinecraftBehaviorFindUnderwaterTreasureClass minecraftBehaviorFollowOwner;
  DibrugarhFerrets minecraftSittable;
  SantiagoDeCaliRaven minecraftBehaviorStayWhileSitting;
  MinecraftParrotTameMinecraftBehaviorFindMount minecraftBehaviorFindMount;

  MinecraftParrotTame({
    this.minecraftTypeFamily,
    this.minecraftIsTamed,
    this.minecraftBehaviorFollowOwner,
    this.minecraftSittable,
    this.minecraftBehaviorStayWhileSitting,
    this.minecraftBehaviorFindMount,
  });

  factory MinecraftParrotTame.fromJson(Map<String, dynamic> json) => new MinecraftParrotTame(
    minecraftTypeFamily: MinecraftTypeFamily.fromJson(json["minecraft:type_family"]),
    minecraftIsTamed: DibrugarhFerrets.fromJson(json["minecraft:is_tamed"]),
    minecraftBehaviorFollowOwner: MinecraftBehaviorFindUnderwaterTreasureClass.fromJson(json["minecraft:behavior.follow_owner"]),
    minecraftSittable: DibrugarhFerrets.fromJson(json["minecraft:sittable"]),
    minecraftBehaviorStayWhileSitting: SantiagoDeCaliRaven.fromJson(json["minecraft:behavior.stay_while_sitting"]),
    minecraftBehaviorFindMount: MinecraftParrotTameMinecraftBehaviorFindMount.fromJson(json["minecraft:behavior.find_mount"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:type_family": minecraftTypeFamily.toJson(),
    "minecraft:is_tamed": minecraftIsTamed.toJson(),
    "minecraft:behavior.follow_owner": minecraftBehaviorFollowOwner.toJson(),
    "minecraft:sittable": minecraftSittable.toJson(),
    "minecraft:behavior.stay_while_sitting": minecraftBehaviorStayWhileSitting.toJson(),
    "minecraft:behavior.find_mount": minecraftBehaviorFindMount.toJson(),
  };
}

class MinecraftParrotTameMinecraftBehaviorFindMount {
  int priority;
  int withinRadius;
  bool avoidWater;
  int startDelay;
  bool targetNeeded;
  int mountDistance;

  MinecraftParrotTameMinecraftBehaviorFindMount({
    this.priority,
    this.withinRadius,
    this.avoidWater,
    this.startDelay,
    this.targetNeeded,
    this.mountDistance,
  });

  factory MinecraftParrotTameMinecraftBehaviorFindMount.fromJson(Map<String, dynamic> json) => new MinecraftParrotTameMinecraftBehaviorFindMount(
    priority: json["priority"],
    withinRadius: json["within_radius"],
    avoidWater: json["avoid_water"],
    startDelay: json["start_delay"],
    targetNeeded: json["target_needed"],
    mountDistance: json["mount_distance"],
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "within_radius": withinRadius,
    "avoid_water": avoidWater,
    "start_delay": startDelay,
    "target_needed": targetNeeded,
    "mount_distance": mountDistance,
  };
}

class MinecraftBehaviorFindUnderwaterTreasureClass {
  int priority;
  int speedMultiplier;
  int startDistance;
  int stopDistance;
  int searchRange;

  MinecraftBehaviorFindUnderwaterTreasureClass({
    this.priority,
    this.speedMultiplier,
    this.startDistance,
    this.stopDistance,
    this.searchRange,
  });

  factory MinecraftBehaviorFindUnderwaterTreasureClass.fromJson(Map<String, dynamic> json) => new MinecraftBehaviorFindUnderwaterTreasureClass(
    priority: json["priority"],
    speedMultiplier: json["speed_multiplier"] == null ? null : json["speed_multiplier"],
    startDistance: json["start_distance"] == null ? null : json["start_distance"],
    stopDistance: json["stop_distance"],
    searchRange: json["search_range"] == null ? null : json["search_range"],
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "speed_multiplier": speedMultiplier == null ? null : speedMultiplier,
    "start_distance": startDistance == null ? null : startDistance,
    "stop_distance": stopDistance,
    "search_range": searchRange == null ? null : searchRange,
  };
}

class MinecraftParrotWild {
  MinecraftTypeFamily minecraftTypeFamily;
  MinecraftTameable minecraftTameable;
  MinecraftBehaviorRandomFly minecraftBehaviorRandomFly;
  MinecraftBehaviorFindUnderwaterTreasureClass minecraftBehaviorFollowMob;

  MinecraftParrotWild({
    this.minecraftTypeFamily,
    this.minecraftTameable,
    this.minecraftBehaviorRandomFly,
    this.minecraftBehaviorFollowMob,
  });

  factory MinecraftParrotWild.fromJson(Map<String, dynamic> json) => new MinecraftParrotWild(
    minecraftTypeFamily: MinecraftTypeFamily.fromJson(json["minecraft:type_family"]),
    minecraftTameable: MinecraftTameable.fromJson(json["minecraft:tameable"]),
    minecraftBehaviorRandomFly: MinecraftBehaviorRandomFly.fromJson(json["minecraft:behavior.random_fly"]),
    minecraftBehaviorFollowMob: MinecraftBehaviorFindUnderwaterTreasureClass.fromJson(json["minecraft:behavior.follow_mob"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:type_family": minecraftTypeFamily.toJson(),
    "minecraft:tameable": minecraftTameable.toJson(),
    "minecraft:behavior.random_fly": minecraftBehaviorRandomFly.toJson(),
    "minecraft:behavior.follow_mob": minecraftBehaviorFollowMob.toJson(),
  };
}

class MinecraftBehaviorRandomFly {
  int priority;
  int xzDist;
  int yDist;
  int yOffset;
  int speedMultiplier;
  bool canLandOnTrees;
  bool avoidDamageBlocks;

  MinecraftBehaviorRandomFly({
    this.priority,
    this.xzDist,
    this.yDist,
    this.yOffset,
    this.speedMultiplier,
    this.canLandOnTrees,
    this.avoidDamageBlocks,
  });

  factory MinecraftBehaviorRandomFly.fromJson(Map<String, dynamic> json) => new MinecraftBehaviorRandomFly(
    priority: json["priority"],
    xzDist: json["xz_dist"],
    yDist: json["y_dist"],
    yOffset: json["y_offset"],
    speedMultiplier: json["speed_multiplier"],
    canLandOnTrees: json["can_land_on_trees"],
    avoidDamageBlocks: json["avoid_damage_blocks"],
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "xz_dist": xzDist,
    "y_dist": yDist,
    "y_offset": yOffset,
    "speed_multiplier": speedMultiplier,
    "can_land_on_trees": canLandOnTrees,
    "avoid_damage_blocks": avoidDamageBlocks,
  };
}

class MinecraftTameable {
  double probability;
  List<String> tameItems;
  NordSugarGliders tameEvent;

  MinecraftTameable({
    this.probability,
    this.tameItems,
    this.tameEvent,
  });

  factory MinecraftTameable.fromJson(Map<String, dynamic> json) => new MinecraftTameable(
    probability: json["probability"].toDouble(),
    tameItems: new List<String>.from(json["tameItems"].map((x) => x)),
    tameEvent: NordSugarGliders.fromJson(json["tame_event"]),
  );

  Map<String, dynamic> toJson() => {
    "probability": probability,
    "tameItems": new List<dynamic>.from(tameItems.map((x) => x)),
    "tame_event": tameEvent.toJson(),
  };
}

class MinecraftPlayerCreated {
  MinecraftPlayerCreatedMinecraftBehaviorHurtByTarget minecraftBehaviorHurtByTarget;

  MinecraftPlayerCreated({
    this.minecraftBehaviorHurtByTarget,
  });

  factory MinecraftPlayerCreated.fromJson(Map<String, dynamic> json) => new MinecraftPlayerCreated(
    minecraftBehaviorHurtByTarget: MinecraftPlayerCreatedMinecraftBehaviorHurtByTarget.fromJson(json["minecraft:behavior.hurt_by_target"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:behavior.hurt_by_target": minecraftBehaviorHurtByTarget.toJson(),
  };
}

class MinecraftPlayerCreatedMinecraftBehaviorHurtByTarget {
  int priority;
  List<String> notEntityTypes;

  MinecraftPlayerCreatedMinecraftBehaviorHurtByTarget({
    this.priority,
    this.notEntityTypes,
  });

  factory MinecraftPlayerCreatedMinecraftBehaviorHurtByTarget.fromJson(Map<String, dynamic> json) => new MinecraftPlayerCreatedMinecraftBehaviorHurtByTarget(
    priority: json["priority"],
    notEntityTypes: new List<String>.from(json["not_entity_types"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "not_entity_types": new List<dynamic>.from(notEntityTypes.map((x) => x)),
  };
}

class MinecraftPregnant {
  MinecraftBehaviorGoHome minecraftBehaviorGoHome;

  MinecraftPregnant({
    this.minecraftBehaviorGoHome,
  });

  factory MinecraftPregnant.fromJson(Map<String, dynamic> json) => new MinecraftPregnant(
    minecraftBehaviorGoHome: MinecraftBehaviorGoHome.fromJson(json["minecraft:behavior.go_home"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:behavior.go_home": minecraftBehaviorGoHome.toJson(),
  };
}

class MinecraftBehaviorGoHome {
  int priority;
  int speedMultiplier;
  int interval;
  int goalRadius;
  NordSugarGliders onHome;

  MinecraftBehaviorGoHome({
    this.priority,
    this.speedMultiplier,
    this.interval,
    this.goalRadius,
    this.onHome,
  });

  factory MinecraftBehaviorGoHome.fromJson(Map<String, dynamic> json) => new MinecraftBehaviorGoHome(
    priority: json["priority"],
    speedMultiplier: json["speed_multiplier"],
    interval: json["interval"],
    goalRadius: json["goal_radius"],
    onHome: NordSugarGliders.fromJson(json["on_home"]),
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "speed_multiplier": speedMultiplier,
    "interval": interval,
    "goal_radius": goalRadius,
    "on_home": onHome.toJson(),
  };
}

class MinecraftPufferfish {
  MinecraftFlyingSpeed minecraftMovement;
  MinecraftFlyingSpeed minecraftUnderwaterMovement;

  MinecraftPufferfish({
    this.minecraftMovement,
    this.minecraftUnderwaterMovement,
  });

  factory MinecraftPufferfish.fromJson(Map<String, dynamic> json) => new MinecraftPufferfish(
    minecraftMovement: MinecraftFlyingSpeed.fromJson(json["minecraft:movement"]),
    minecraftUnderwaterMovement: MinecraftFlyingSpeed.fromJson(json["minecraft:underwater_movement"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:movement": minecraftMovement.toJson(),
    "minecraft:underwater_movement": minecraftUnderwaterMovement.toJson(),
  };
}

class MinecraftRangedMode {
  MinecraftRangedModeMinecraftShooter minecraftShooter;
  MinecraftRangedModeMinecraftBehaviorRangedAttack minecraftBehaviorRangedAttack;

  MinecraftRangedMode({
    this.minecraftShooter,
    this.minecraftBehaviorRangedAttack,
  });

  factory MinecraftRangedMode.fromJson(Map<String, dynamic> json) => new MinecraftRangedMode(
    minecraftShooter: MinecraftRangedModeMinecraftShooter.fromJson(json["minecraft:shooter"]),
    minecraftBehaviorRangedAttack: MinecraftRangedModeMinecraftBehaviorRangedAttack.fromJson(json["minecraft:behavior.ranged_attack"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:shooter": minecraftShooter.toJson(),
    "minecraft:behavior.ranged_attack": minecraftBehaviorRangedAttack.toJson(),
  };
}

class MinecraftRangedModeMinecraftBehaviorRangedAttack {
  int priority;
  int attackIntervalMin;
  int attackIntervalMax;
  int attackRadius;

  MinecraftRangedModeMinecraftBehaviorRangedAttack({
    this.priority,
    this.attackIntervalMin,
    this.attackIntervalMax,
    this.attackRadius,
  });

  factory MinecraftRangedModeMinecraftBehaviorRangedAttack.fromJson(Map<String, dynamic> json) => new MinecraftRangedModeMinecraftBehaviorRangedAttack(
    priority: json["priority"],
    attackIntervalMin: json["attack_interval_min"],
    attackIntervalMax: json["attack_interval_max"],
    attackRadius: json["attack_radius"],
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "attack_interval_min": attackIntervalMin,
    "attack_interval_max": attackIntervalMax,
    "attack_radius": attackRadius,
  };
}

class MinecraftRangedModeMinecraftShooter {
  String def;

  MinecraftRangedModeMinecraftShooter({
    this.def,
  });

  factory MinecraftRangedModeMinecraftShooter.fromJson(Map<String, dynamic> json) => new MinecraftRangedModeMinecraftShooter(
    def: json["def"],
  );

  Map<String, dynamic> toJson() => {
    "def": def,
  };
}

class MinecraftRevertToSkeletonClass {
  MinecraftRevertToSkeletonMinecraftTransformation minecraftTransformation;

  MinecraftRevertToSkeletonClass({
    this.minecraftTransformation,
  });

  factory MinecraftRevertToSkeletonClass.fromJson(Map<String, dynamic> json) => new MinecraftRevertToSkeletonClass(
    minecraftTransformation: MinecraftRevertToSkeletonMinecraftTransformation.fromJson(json["minecraft:transformation"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:transformation": minecraftTransformation.toJson(),
  };
}

class MinecraftRevertToSkeletonMinecraftTransformation {
  String into;
  MinecraftFlyingSpeed delay;

  MinecraftRevertToSkeletonMinecraftTransformation({
    this.into,
    this.delay,
  });

  factory MinecraftRevertToSkeletonMinecraftTransformation.fromJson(Map<String, dynamic> json) => new MinecraftRevertToSkeletonMinecraftTransformation(
    into: json["into"],
    delay: MinecraftFlyingSpeed.fromJson(json["delay"]),
  );

  Map<String, dynamic> toJson() => {
    "into": into,
    "delay": delay.toJson(),
  };
}

class MinecraftRideableShearedClass {
  MinecraftJockeyMinecraftRideable minecraftRideable;

  MinecraftRideableShearedClass({
    this.minecraftRideable,
  });

  factory MinecraftRideableShearedClass.fromJson(Map<String, dynamic> json) => new MinecraftRideableShearedClass(
    minecraftRideable: MinecraftJockeyMinecraftRideable.fromJson(json["minecraft:rideable"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:rideable": minecraftRideable.toJson(),
  };
}

class MinecraftSaddledClass {
  DibrugarhFerrets minecraftIsSaddled;
  MinecraftEquipment minecraftLoot;
  MinecraftBoostable minecraftBoostable;
  MinecraftSaddledMinecraftRideable minecraftRideable;
  MinecraftItemControllable minecraftItemControllable;
  SantiagoDeCaliRaven minecraftBehaviorControlledByPlayer;

  MinecraftSaddledClass({
    this.minecraftIsSaddled,
    this.minecraftLoot,
    this.minecraftBoostable,
    this.minecraftRideable,
    this.minecraftItemControllable,
    this.minecraftBehaviorControlledByPlayer,
  });

  factory MinecraftSaddledClass.fromJson(Map<String, dynamic> json) => new MinecraftSaddledClass(
    minecraftIsSaddled: DibrugarhFerrets.fromJson(json["minecraft:is_saddled"]),
    minecraftLoot: MinecraftEquipment.fromJson(json["minecraft:loot"]),
    minecraftBoostable: MinecraftBoostable.fromJson(json["minecraft:boostable"]),
    minecraftRideable: MinecraftSaddledMinecraftRideable.fromJson(json["minecraft:rideable"]),
    minecraftItemControllable: MinecraftItemControllable.fromJson(json["minecraft:item_controllable"]),
    minecraftBehaviorControlledByPlayer: SantiagoDeCaliRaven.fromJson(json["minecraft:behavior.controlled_by_player"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:is_saddled": minecraftIsSaddled.toJson(),
    "minecraft:loot": minecraftLoot.toJson(),
    "minecraft:boostable": minecraftBoostable.toJson(),
    "minecraft:rideable": minecraftRideable.toJson(),
    "minecraft:item_controllable": minecraftItemControllable.toJson(),
    "minecraft:behavior.controlled_by_player": minecraftBehaviorControlledByPlayer.toJson(),
  };
}

class MinecraftBoostable {
  int speedMultiplier;
  int duration;
  List<BoostItem> boostItems;

  MinecraftBoostable({
    this.speedMultiplier,
    this.duration,
    this.boostItems,
  });

  factory MinecraftBoostable.fromJson(Map<String, dynamic> json) => new MinecraftBoostable(
    speedMultiplier: json["speed_multiplier"],
    duration: json["duration"],
    boostItems: new List<BoostItem>.from(json["boost_items"].map((x) => BoostItem.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "speed_multiplier": speedMultiplier,
    "duration": duration,
    "boost_items": new List<dynamic>.from(boostItems.map((x) => x.toJson())),
  };
}

class BoostItem {
  String item;
  int itemDamage;
  String replaceItem;

  BoostItem({
    this.item,
    this.itemDamage,
    this.replaceItem,
  });

  factory BoostItem.fromJson(Map<String, dynamic> json) => new BoostItem(
    item: json["item"],
    itemDamage: json["item_damage"],
    replaceItem: json["replaceItem"],
  );

  Map<String, dynamic> toJson() => {
    "item": item,
    "item_damage": itemDamage,
    "replaceItem": replaceItem,
  };
}

class MinecraftItemControllable {
  String controlItems;

  MinecraftItemControllable({
    this.controlItems,
  });

  factory MinecraftItemControllable.fromJson(Map<String, dynamic> json) => new MinecraftItemControllable(
    controlItems: json["control_items"],
  );

  Map<String, dynamic> toJson() => {
    "control_items": controlItems,
  };
}

class MinecraftSaddledMinecraftRideable {
  int seatCount;
  String interactText;
  List<SeatsSeats> seats;
  List<String> familyTypes;

  MinecraftSaddledMinecraftRideable({
    this.seatCount,
    this.interactText,
    this.seats,
    this.familyTypes,
  });

  factory MinecraftSaddledMinecraftRideable.fromJson(Map<String, dynamic> json) => new MinecraftSaddledMinecraftRideable(
    seatCount: json["seat_count"],
    interactText: json["interact_text"] == null ? null : json["interact_text"],
    seats: new List<SeatsSeats>.from(json["seats"].map((x) => SeatsSeats.fromJson(x))),
    familyTypes: json["family_types"] == null ? null : new List<String>.from(json["family_types"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "seat_count": seatCount,
    "interact_text": interactText == null ? null : interactText,
    "seats": new List<dynamic>.from(seats.map((x) => x.toJson())),
    "family_types": familyTypes == null ? null : new List<dynamic>.from(familyTypes.map((x) => x)),
  };
}

class MinecraftSheared {
  DibrugarhFerrets minecraftIsSheared;

  MinecraftSheared({
    this.minecraftIsSheared,
  });

  factory MinecraftSheared.fromJson(Map<String, dynamic> json) => new MinecraftSheared(
    minecraftIsSheared: DibrugarhFerrets.fromJson(json["minecraft:is_sheared"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:is_sheared": minecraftIsSheared.toJson(),
  };
}

class MinecraftSheep {
  MinecraftFlyingSpeed minecraftColor;

  MinecraftSheep({
    this.minecraftColor,
  });

  factory MinecraftSheep.fromJson(Map<String, dynamic> json) => new MinecraftSheep(
    minecraftColor: MinecraftFlyingSpeed.fromJson(json["minecraft:color"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:color": minecraftColor.toJson(),
  };
}

class MinecraftSlime {
  MinecraftCollisionBox minecraftCollisionBox;
  MinecraftAttackDamageClass minecraftHealth;
  MinecraftAttackDamageClass minecraftMovement;
  MinecraftAttackDamageClass minecraftAttackDamage;

  MinecraftSlime({
    this.minecraftCollisionBox,
    this.minecraftHealth,
    this.minecraftMovement,
    this.minecraftAttackDamage,
  });

  factory MinecraftSlime.fromJson(Map<String, dynamic> json) => new MinecraftSlime(
    minecraftCollisionBox: MinecraftCollisionBox.fromJson(json["minecraft:collision_box"]),
    minecraftHealth: MinecraftAttackDamageClass.fromJson(json["minecraft:health"]),
    minecraftMovement: MinecraftAttackDamageClass.fromJson(json["minecraft:movement"]),
    minecraftAttackDamage: MinecraftAttackDamageClass.fromJson(json["minecraft:attack_damage"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:collision_box": minecraftCollisionBox.toJson(),
    "minecraft:health": minecraftHealth.toJson(),
    "minecraft:movement": minecraftMovement.toJson(),
    "minecraft:attack_damage": minecraftAttackDamage.toJson(),
  };
}

class MinecraftSpiderJockey {
  MinecraftAddrider minecraftAddrider;
  MinecraftChickenAdultMinecraftRideable minecraftRideable;

  MinecraftSpiderJockey({
    this.minecraftAddrider,
    this.minecraftRideable,
  });

  factory MinecraftSpiderJockey.fromJson(Map<String, dynamic> json) => new MinecraftSpiderJockey(
    minecraftAddrider: MinecraftAddrider.fromJson(json["minecraft:addrider"]),
    minecraftRideable: MinecraftChickenAdultMinecraftRideable.fromJson(json["minecraft:rideable"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:addrider": minecraftAddrider.toJson(),
    "minecraft:rideable": minecraftRideable.toJson(),
  };
}

class MinecraftSpiderNeutral {
  MinecraftSpiderNeutralMinecraftEnvironmentSensor minecraftEnvironmentSensor;
  OnClose minecraftOnTargetAcquired;

  MinecraftSpiderNeutral({
    this.minecraftEnvironmentSensor,
    this.minecraftOnTargetAcquired,
  });

  factory MinecraftSpiderNeutral.fromJson(Map<String, dynamic> json) => new MinecraftSpiderNeutral(
    minecraftEnvironmentSensor: MinecraftSpiderNeutralMinecraftEnvironmentSensor.fromJson(json["minecraft:environment_sensor"]),
    minecraftOnTargetAcquired: OnClose.fromJson(json["minecraft:on_target_acquired"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:environment_sensor": minecraftEnvironmentSensor.toJson(),
    "minecraft:on_target_acquired": minecraftOnTargetAcquired.toJson(),
  };
}

class MinecraftSpiderNeutralMinecraftEnvironmentSensor {
  TentacledOnEnvironment onEnvironment;

  MinecraftSpiderNeutralMinecraftEnvironmentSensor({
    this.onEnvironment,
  });

  factory MinecraftSpiderNeutralMinecraftEnvironmentSensor.fromJson(Map<String, dynamic> json) => new MinecraftSpiderNeutralMinecraftEnvironmentSensor(
    onEnvironment: TentacledOnEnvironment.fromJson(json["on_environment"]),
  );

  Map<String, dynamic> toJson() => {
    "on_environment": onEnvironment.toJson(),
  };
}

class TentacledOnEnvironment {
  HilariousFilters filters;
  String event;

  TentacledOnEnvironment({
    this.filters,
    this.event,
  });

  factory TentacledOnEnvironment.fromJson(Map<String, dynamic> json) => new TentacledOnEnvironment(
    filters: HilariousFilters.fromJson(json["filters"]),
    event: json["event"],
  );

  Map<String, dynamic> toJson() => {
    "filters": filters.toJson(),
    "event": event,
  };
}

class HilariousFilters {
  String withEnvironmentAny;

  HilariousFilters({
    this.withEnvironmentAny,
  });

  factory HilariousFilters.fromJson(Map<String, dynamic> json) => new HilariousFilters(
    withEnvironmentAny: json["with_environment_any"],
  );

  Map<String, dynamic> toJson() => {
    "with_environment_any": withEnvironmentAny,
  };
}

class MinecraftSpiderPoison {
  MinecraftSpiderPoisonEasyMinecraftAttack minecraftAttack;

  MinecraftSpiderPoison({
    this.minecraftAttack,
  });

  factory MinecraftSpiderPoison.fromJson(Map<String, dynamic> json) => new MinecraftSpiderPoison(
    minecraftAttack: MinecraftSpiderPoisonEasyMinecraftAttack.fromJson(json["minecraft:attack"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:attack": minecraftAttack.toJson(),
  };
}

class MinecraftSpiderPoisonEasyMinecraftAttack {
  int damage;
  String effectName;
  int effectDuration;

  MinecraftSpiderPoisonEasyMinecraftAttack({
    this.damage,
    this.effectName,
    this.effectDuration,
  });

  factory MinecraftSpiderPoisonEasyMinecraftAttack.fromJson(Map<String, dynamic> json) => new MinecraftSpiderPoisonEasyMinecraftAttack(
    damage: json["damage"],
    effectName: json["effect_name"] == null ? null : json["effect_name"],
    effectDuration: json["effect_duration"] == null ? null : json["effect_duration"],
  );

  Map<String, dynamic> toJson() => {
    "damage": damage,
    "effect_name": effectName == null ? null : effectName,
    "effect_duration": effectDuration == null ? null : effectDuration,
  };
}

class MinecraftStrength {
  MinecraftAttackDamageClass minecraftStrength;

  MinecraftStrength({
    this.minecraftStrength,
  });

  factory MinecraftStrength.fromJson(Map<String, dynamic> json) => new MinecraftStrength(
    minecraftStrength: MinecraftAttackDamageClass.fromJson(json["minecraft:strength"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:strength": minecraftStrength.toJson(),
  };
}

class MinecraftTamed {
  DibrugarhFerrets minecraftIsTamed;
  MinecraftAttackDamageClass minecraftHealth;
  DibrugarhFerrets minecraftSittable;
  MinecraftLeashable minecraftLeashable;
  MinecraftBehaviorFindUnderwaterTreasureClass minecraftBehaviorFollowOwner;
  SantiagoDeCaliRaven minecraftBehaviorStayWhileSitting;
  MinecraftBehaviorFleeSunClass minecraftBehaviorOcelotSitOnBlock;
  MinecraftFlyingSpeed minecraftColor;
  MinecraftAdultHostileMinecraftAttack minecraftAttack;
  SantiagoDeCaliRaven minecraftBehaviorBreed;
  SantiagoDeCaliRaven minecraftBehaviorOwnerHurtByTarget;
  SantiagoDeCaliRaven minecraftBehaviorOwnerHurtTarget;
  MinecraftAngryMinecraftBehaviorNearestAttackableTarget minecraftBehaviorNearestAttackableTarget;
  MinecraftIsDyeable minecraftIsDyeable;

  MinecraftTamed({
    this.minecraftIsTamed,
    this.minecraftHealth,
    this.minecraftSittable,
    this.minecraftLeashable,
    this.minecraftBehaviorFollowOwner,
    this.minecraftBehaviorStayWhileSitting,
    this.minecraftBehaviorOcelotSitOnBlock,
    this.minecraftColor,
    this.minecraftAttack,
    this.minecraftBehaviorBreed,
    this.minecraftBehaviorOwnerHurtByTarget,
    this.minecraftBehaviorOwnerHurtTarget,
    this.minecraftBehaviorNearestAttackableTarget,
    this.minecraftIsDyeable,
  });

  factory MinecraftTamed.fromJson(Map<String, dynamic> json) => new MinecraftTamed(
    minecraftIsTamed: DibrugarhFerrets.fromJson(json["minecraft:is_tamed"]),
    minecraftHealth: MinecraftAttackDamageClass.fromJson(json["minecraft:health"]),
    minecraftSittable: DibrugarhFerrets.fromJson(json["minecraft:sittable"]),
    minecraftLeashable: MinecraftLeashable.fromJson(json["minecraft:leashable"]),
    minecraftBehaviorFollowOwner: MinecraftBehaviorFindUnderwaterTreasureClass.fromJson(json["minecraft:behavior.follow_owner"]),
    minecraftBehaviorStayWhileSitting: json["minecraft:behavior.stay_while_sitting"] == null ? null : SantiagoDeCaliRaven.fromJson(json["minecraft:behavior.stay_while_sitting"]),
    minecraftBehaviorOcelotSitOnBlock: json["minecraft:behavior.ocelot_sit_on_block"] == null ? null : MinecraftBehaviorFleeSunClass.fromJson(json["minecraft:behavior.ocelot_sit_on_block"]),
    minecraftColor: json["minecraft:color"] == null ? null : MinecraftFlyingSpeed.fromJson(json["minecraft:color"]),
    minecraftAttack: json["minecraft:attack"] == null ? null : MinecraftAdultHostileMinecraftAttack.fromJson(json["minecraft:attack"]),
    minecraftBehaviorBreed: json["minecraft:behavior.breed"] == null ? null : SantiagoDeCaliRaven.fromJson(json["minecraft:behavior.breed"]),
    minecraftBehaviorOwnerHurtByTarget: json["minecraft:behavior.owner_hurt_by_target"] == null ? null : SantiagoDeCaliRaven.fromJson(json["minecraft:behavior.owner_hurt_by_target"]),
    minecraftBehaviorOwnerHurtTarget: json["minecraft:behavior.owner_hurt_target"] == null ? null : SantiagoDeCaliRaven.fromJson(json["minecraft:behavior.owner_hurt_target"]),
    minecraftBehaviorNearestAttackableTarget: json["minecraft:behavior.nearest_attackable_target"] == null ? null : MinecraftAngryMinecraftBehaviorNearestAttackableTarget.fromJson(json["minecraft:behavior.nearest_attackable_target"]),
    minecraftIsDyeable: json["minecraft:is_dyeable"] == null ? null : MinecraftIsDyeable.fromJson(json["minecraft:is_dyeable"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:is_tamed": minecraftIsTamed.toJson(),
    "minecraft:health": minecraftHealth.toJson(),
    "minecraft:sittable": minecraftSittable.toJson(),
    "minecraft:leashable": minecraftLeashable.toJson(),
    "minecraft:behavior.follow_owner": minecraftBehaviorFollowOwner.toJson(),
    "minecraft:behavior.stay_while_sitting": minecraftBehaviorStayWhileSitting == null ? null : minecraftBehaviorStayWhileSitting.toJson(),
    "minecraft:behavior.ocelot_sit_on_block": minecraftBehaviorOcelotSitOnBlock == null ? null : minecraftBehaviorOcelotSitOnBlock.toJson(),
    "minecraft:color": minecraftColor == null ? null : minecraftColor.toJson(),
    "minecraft:attack": minecraftAttack == null ? null : minecraftAttack.toJson(),
    "minecraft:behavior.breed": minecraftBehaviorBreed == null ? null : minecraftBehaviorBreed.toJson(),
    "minecraft:behavior.owner_hurt_by_target": minecraftBehaviorOwnerHurtByTarget == null ? null : minecraftBehaviorOwnerHurtByTarget.toJson(),
    "minecraft:behavior.owner_hurt_target": minecraftBehaviorOwnerHurtTarget == null ? null : minecraftBehaviorOwnerHurtTarget.toJson(),
    "minecraft:behavior.nearest_attackable_target": minecraftBehaviorNearestAttackableTarget == null ? null : minecraftBehaviorNearestAttackableTarget.toJson(),
    "minecraft:is_dyeable": minecraftIsDyeable == null ? null : minecraftIsDyeable.toJson(),
  };
}

class MinecraftIsDyeable {
  String interactText;

  MinecraftIsDyeable({
    this.interactText,
  });

  factory MinecraftIsDyeable.fromJson(Map<String, dynamic> json) => new MinecraftIsDyeable(
    interactText: json["interact_text"],
  );

  Map<String, dynamic> toJson() => {
    "interact_text": interactText,
  };
}

class MinecraftLeashable {
  int softDistance;
  int hardDistance;
  int maxDistance;
  NordSugarGliders onLeash;
  NordSugarGliders onUnleash;

  MinecraftLeashable({
    this.softDistance,
    this.hardDistance,
    this.maxDistance,
    this.onLeash,
    this.onUnleash,
  });

  factory MinecraftLeashable.fromJson(Map<String, dynamic> json) => new MinecraftLeashable(
    softDistance: json["soft_distance"],
    hardDistance: json["hard_distance"],
    maxDistance: json["max_distance"],
    onLeash: NordSugarGliders.fromJson(json["on_leash"]),
    onUnleash: NordSugarGliders.fromJson(json["on_unleash"]),
  );

  Map<String, dynamic> toJson() => {
    "soft_distance": softDistance,
    "hard_distance": hardDistance,
    "max_distance": maxDistance,
    "on_leash": onLeash.toJson(),
    "on_unleash": onUnleash.toJson(),
  };
}

class MinecraftUnsaddled {
  List<MinecraftUnsaddledMinecraftInteract> minecraftInteract;
  MinecraftJockeyMinecraftRideable minecraftRideable;

  MinecraftUnsaddled({
    this.minecraftInteract,
    this.minecraftRideable,
  });

  factory MinecraftUnsaddled.fromJson(Map<String, dynamic> json) => new MinecraftUnsaddled(
    minecraftInteract: new List<MinecraftUnsaddledMinecraftInteract>.from(json["minecraft:interact"].map((x) => MinecraftUnsaddledMinecraftInteract.fromJson(x))),
    minecraftRideable: MinecraftJockeyMinecraftRideable.fromJson(json["minecraft:rideable"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:interact": new List<dynamic>.from(minecraftInteract.map((x) => x.toJson())),
    "minecraft:rideable": minecraftRideable.toJson(),
  };
}

class MinecraftUnsaddledMinecraftInteract {
  StickyOnInteract onInteract;
  bool useItem;
  String interactText;

  MinecraftUnsaddledMinecraftInteract({
    this.onInteract,
    this.useItem,
    this.interactText,
  });

  factory MinecraftUnsaddledMinecraftInteract.fromJson(Map<String, dynamic> json) => new MinecraftUnsaddledMinecraftInteract(
    onInteract: StickyOnInteract.fromJson(json["on_interact"]),
    useItem: json["use_item"],
    interactText: json["interact_text"],
  );

  Map<String, dynamic> toJson() => {
    "on_interact": onInteract.toJson(),
    "use_item": useItem,
    "interact_text": interactText,
  };
}

class StickyOnInteract {
  AmbitiousFilters filters;
  String event;

  StickyOnInteract({
    this.filters,
    this.event,
  });

  factory StickyOnInteract.fromJson(Map<String, dynamic> json) => new StickyOnInteract(
    filters: AmbitiousFilters.fromJson(json["filters"]),
    event: json["event"],
  );

  Map<String, dynamic> toJson() => {
    "filters": filters.toJson(),
    "event": event,
  };
}

class AmbitiousFilters {
  List<String> otherWithItem;

  AmbitiousFilters({
    this.otherWithItem,
  });

  factory AmbitiousFilters.fromJson(Map<String, dynamic> json) => new AmbitiousFilters(
    otherWithItem: new List<String>.from(json["other_with_item"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "other_with_item": new List<dynamic>.from(otherWithItem.map((x) => x)),
  };
}

class MinecraftVillageCreated {
  SantiagoDeCaliRaven minecraftBehaviorDefendVillageTarget;

  MinecraftVillageCreated({
    this.minecraftBehaviorDefendVillageTarget,
  });

  factory MinecraftVillageCreated.fromJson(Map<String, dynamic> json) => new MinecraftVillageCreated(
    minecraftBehaviorDefendVillageTarget: SantiagoDeCaliRaven.fromJson(json["minecraft:behavior.defend_village_target"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:behavior.defend_village_target": minecraftBehaviorDefendVillageTarget.toJson(),
  };
}

class MinecraftVindicatorJohnny {
  MinecraftVindicatorJohnnyMinecraftBehaviorNearestAttackableTarget minecraftBehaviorNearestAttackableTarget;

  MinecraftVindicatorJohnny({
    this.minecraftBehaviorNearestAttackableTarget,
  });

  factory MinecraftVindicatorJohnny.fromJson(Map<String, dynamic> json) => new MinecraftVindicatorJohnny(
    minecraftBehaviorNearestAttackableTarget: MinecraftVindicatorJohnnyMinecraftBehaviorNearestAttackableTarget.fromJson(json["minecraft:behavior.nearest_attackable_target"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:behavior.nearest_attackable_target": minecraftBehaviorNearestAttackableTarget.toJson(),
  };
}

class MinecraftVindicatorJohnnyMinecraftBehaviorNearestAttackableTarget {
  int priority;
  int withinRadius;
  bool mustSee;
  List<TentacledEntityType> entityTypes;

  MinecraftVindicatorJohnnyMinecraftBehaviorNearestAttackableTarget({
    this.priority,
    this.withinRadius,
    this.mustSee,
    this.entityTypes,
  });

  factory MinecraftVindicatorJohnnyMinecraftBehaviorNearestAttackableTarget.fromJson(Map<String, dynamic> json) => new MinecraftVindicatorJohnnyMinecraftBehaviorNearestAttackableTarget(
    priority: json["priority"],
    withinRadius: json["within_radius"],
    mustSee: json["must_see"],
    entityTypes: new List<TentacledEntityType>.from(json["entity_types"].map((x) => TentacledEntityType.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "within_radius": withinRadius,
    "must_see": mustSee,
    "entity_types": new List<dynamic>.from(entityTypes.map((x) => x.toJson())),
  };
}

class TentacledEntityType {
  CunningFilters filters;
  int maxDist;

  TentacledEntityType({
    this.filters,
    this.maxDist,
  });

  factory TentacledEntityType.fromJson(Map<String, dynamic> json) => new TentacledEntityType(
    filters: CunningFilters.fromJson(json["filters"]),
    maxDist: json["max_dist"],
  );

  Map<String, dynamic> toJson() => {
    "filters": filters.toJson(),
    "max_dist": maxDist,
  };
}

class CunningFilters {
  List<String> otherWithoutFamilies;

  CunningFilters({
    this.otherWithoutFamilies,
  });

  factory CunningFilters.fromJson(Map<String, dynamic> json) => new CunningFilters(
    otherWithoutFamilies: new List<String>.from(json["other_without_families"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "other_without_families": new List<dynamic>.from(otherWithoutFamilies.map((x) => x)),
  };
}

class MinecraftWantsToLayEgg {
  MinecraftBehaviorEgg minecraftBehaviorLayEgg;

  MinecraftWantsToLayEgg({
    this.minecraftBehaviorLayEgg,
  });

  factory MinecraftWantsToLayEgg.fromJson(Map<String, dynamic> json) => new MinecraftWantsToLayEgg(
    minecraftBehaviorLayEgg: MinecraftBehaviorEgg.fromJson(json["minecraft:behavior.lay_egg"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:behavior.lay_egg": minecraftBehaviorLayEgg.toJson(),
  };
}

class MinecraftBehaviorEgg {
  int priority;
  int speedMultiplier;
  int searchRange;
  int searchHeight;
  double goalRadius;
  NordSugarGliders onLay;
  int interval;

  MinecraftBehaviorEgg({
    this.priority,
    this.speedMultiplier,
    this.searchRange,
    this.searchHeight,
    this.goalRadius,
    this.onLay,
    this.interval,
  });

  factory MinecraftBehaviorEgg.fromJson(Map<String, dynamic> json) => new MinecraftBehaviorEgg(
    priority: json["priority"],
    speedMultiplier: json["speed_multiplier"],
    searchRange: json["search_range"],
    searchHeight: json["search_height"],
    goalRadius: json["goal_radius"].toDouble(),
    onLay: json["on_lay"] == null ? null : NordSugarGliders.fromJson(json["on_lay"]),
    interval: json["interval"] == null ? null : json["interval"],
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "speed_multiplier": speedMultiplier,
    "search_range": searchRange,
    "search_height": searchHeight,
    "goal_radius": goalRadius,
    "on_lay": onLay == null ? null : onLay.toJson(),
    "interval": interval == null ? null : interval,
  };
}

class MinecraftWildClass {
  MinecraftSaddledMinecraftRideable minecraftRideable;
  MinecraftBehaviorM minecraftBehaviorMountPathing;
  MinecraftTamemount minecraftTamemount;
  MinecraftAttackDamageClass minecraftVariant;
  MinecraftTameable minecraftTameable;
  MinecraftGuardianPassiveMinecraftBehaviorAvoidMobType minecraftBehaviorAvoidMobType;
  MinecraftAngryMinecraftBehaviorNearestAttackableTarget minecraftBehaviorNearestAttackableTarget;
  NordSugarGliders minecraftOnTargetAcquired;

  MinecraftWildClass({
    this.minecraftRideable,
    this.minecraftBehaviorMountPathing,
    this.minecraftTamemount,
    this.minecraftVariant,
    this.minecraftTameable,
    this.minecraftBehaviorAvoidMobType,
    this.minecraftBehaviorNearestAttackableTarget,
    this.minecraftOnTargetAcquired,
  });

  factory MinecraftWildClass.fromJson(Map<String, dynamic> json) => new MinecraftWildClass(
    minecraftRideable: MinecraftSaddledMinecraftRideable.fromJson(json["minecraft:rideable"]),
    minecraftBehaviorMountPathing: json["minecraft:behavior.mount_pathing"] == null ? null : MinecraftBehaviorM.fromJson(json["minecraft:behavior.mount_pathing"]),
    minecraftTamemount: json["minecraft:tamemount"] == null ? null : MinecraftTamemount.fromJson(json["minecraft:tamemount"]),
    minecraftVariant: json["minecraft:variant"] == null ? null : MinecraftAttackDamageClass.fromJson(json["minecraft:variant"]),
    minecraftTameable: json["minecraft:tameable"] == null ? null : MinecraftTameable.fromJson(json["minecraft:tameable"]),
    minecraftBehaviorAvoidMobType: json["minecraft:behavior.avoid_mob_type"] == null ? null : MinecraftGuardianPassiveMinecraftBehaviorAvoidMobType.fromJson(json["minecraft:behavior.avoid_mob_type"]),
    minecraftBehaviorNearestAttackableTarget: json["minecraft:behavior.nearest_attackable_target"] == null ? null : MinecraftAngryMinecraftBehaviorNearestAttackableTarget.fromJson(json["minecraft:behavior.nearest_attackable_target"]),
    minecraftOnTargetAcquired: json["minecraft:on_target_acquired"] == null ? null : NordSugarGliders.fromJson(json["minecraft:on_target_acquired"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:rideable": minecraftRideable.toJson(),
    "minecraft:behavior.mount_pathing": minecraftBehaviorMountPathing == null ? null : minecraftBehaviorMountPathing.toJson(),
    "minecraft:tamemount": minecraftTamemount == null ? null : minecraftTamemount.toJson(),
    "minecraft:variant": minecraftVariant == null ? null : minecraftVariant.toJson(),
    "minecraft:tameable": minecraftTameable == null ? null : minecraftTameable.toJson(),
    "minecraft:behavior.avoid_mob_type": minecraftBehaviorAvoidMobType == null ? null : minecraftBehaviorAvoidMobType.toJson(),
    "minecraft:behavior.nearest_attackable_target": minecraftBehaviorNearestAttackableTarget == null ? null : minecraftBehaviorNearestAttackableTarget.toJson(),
    "minecraft:on_target_acquired": minecraftOnTargetAcquired == null ? null : minecraftOnTargetAcquired.toJson(),
  };
}

class MinecraftZombieHuskAdult {
  MinecraftFlyingSpeed minecraftMovement;
  MinecraftZombieHuskAdultMinecraftRideable minecraftRideable;
  MinecraftBehaviorM minecraftBehaviorMountPathing;
  MinecraftFlyingSpeed minecraftScale;

  MinecraftZombieHuskAdult({
    this.minecraftMovement,
    this.minecraftRideable,
    this.minecraftBehaviorMountPathing,
    this.minecraftScale,
  });

  factory MinecraftZombieHuskAdult.fromJson(Map<String, dynamic> json) => new MinecraftZombieHuskAdult(
    minecraftMovement: MinecraftFlyingSpeed.fromJson(json["minecraft:movement"]),
    minecraftRideable: MinecraftZombieHuskAdultMinecraftRideable.fromJson(json["minecraft:rideable"]),
    minecraftBehaviorMountPathing: MinecraftBehaviorM.fromJson(json["minecraft:behavior.mount_pathing"]),
    minecraftScale: MinecraftFlyingSpeed.fromJson(json["minecraft:scale"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:movement": minecraftMovement.toJson(),
    "minecraft:rideable": minecraftRideable.toJson(),
    "minecraft:behavior.mount_pathing": minecraftBehaviorMountPathing.toJson(),
    "minecraft:scale": minecraftScale.toJson(),
  };
}

class MinecraftZombieHuskAdultMinecraftRideable {
  int seatCount;
  List<String> familyTypes;
  PurpleSeat seats;

  MinecraftZombieHuskAdultMinecraftRideable({
    this.seatCount,
    this.familyTypes,
    this.seats,
  });

  factory MinecraftZombieHuskAdultMinecraftRideable.fromJson(Map<String, dynamic> json) => new MinecraftZombieHuskAdultMinecraftRideable(
    seatCount: json["seat_count"],
    familyTypes: new List<String>.from(json["family_types"].map((x) => x)),
    seats: PurpleSeat.fromJson(json["seats"]),
  );

  Map<String, dynamic> toJson() => {
    "seat_count": seatCount,
    "family_types": new List<dynamic>.from(familyTypes.map((x) => x)),
    "seats": seats.toJson(),
  };
}

class MinecraftZombieHuskJockey {
  MinecraftJockeyMinecraftBehaviorFindMount minecraftBehaviorFindMount;

  MinecraftZombieHuskJockey({
    this.minecraftBehaviorFindMount,
  });

  factory MinecraftZombieHuskJockey.fromJson(Map<String, dynamic> json) => new MinecraftZombieHuskJockey(
    minecraftBehaviorFindMount: MinecraftJockeyMinecraftBehaviorFindMount.fromJson(json["minecraft:behavior.find_mount"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:behavior.find_mount": minecraftBehaviorFindMount.toJson(),
  };
}

class Scale {
  MinecraftFlyingSpeed minecraftScale;
  MinecraftAttackDamageClass minecraftHealth;
  MinecraftEquipment minecraftLoot;

  Scale({
    this.minecraftScale,
    this.minecraftHealth,
    this.minecraftLoot,
  });

  factory Scale.fromJson(Map<String, dynamic> json) => new Scale(
    minecraftScale: MinecraftFlyingSpeed.fromJson(json["minecraft:scale"]),
    minecraftHealth: MinecraftAttackDamageClass.fromJson(json["minecraft:health"]),
    minecraftLoot: MinecraftEquipment.fromJson(json["minecraft:loot"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:scale": minecraftScale.toJson(),
    "minecraft:health": minecraftHealth.toJson(),
    "minecraft:loot": minecraftLoot.toJson(),
  };
}

class ToVillager {
  ToVillagerMinecraftTransformation minecraftTransformation;

  ToVillager({
    this.minecraftTransformation,
  });

  factory ToVillager.fromJson(Map<String, dynamic> json) => new ToVillager(
    minecraftTransformation: ToVillagerMinecraftTransformation.fromJson(json["minecraft:transformation"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:transformation": minecraftTransformation.toJson(),
  };
}

class ToVillagerMinecraftTransformation {
  String into;
  Delay delay;

  ToVillagerMinecraftTransformation({
    this.into,
    this.delay,
  });

  factory ToVillagerMinecraftTransformation.fromJson(Map<String, dynamic> json) => new ToVillagerMinecraftTransformation(
    into: json["into"],
    delay: Delay.fromJson(json["delay"]),
  );

  Map<String, dynamic> toJson() => {
    "into": into,
    "delay": delay.toJson(),
  };
}

class Delay {
  int value;
  double blockAssistChance;
  int blockRadius;
  double blockChance;
  List<String> blockTypes;

  Delay({
    this.value,
    this.blockAssistChance,
    this.blockRadius,
    this.blockChance,
    this.blockTypes,
  });

  factory Delay.fromJson(Map<String, dynamic> json) => new Delay(
    value: json["value"],
    blockAssistChance: json["block_assist_chance"].toDouble(),
    blockRadius: json["block_radius"],
    blockChance: json["block_chance"].toDouble(),
    blockTypes: new List<String>.from(json["block_types"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "value": value,
    "block_assist_chance": blockAssistChance,
    "block_radius": blockRadius,
    "block_chance": blockChance,
    "block_types": new List<dynamic>.from(blockTypes.map((x) => x)),
  };
}

class Trap {
  DibrugarhFerrets minecraftIsTrap;

  Trap({
    this.minecraftIsTrap,
  });

  factory Trap.fromJson(Map<String, dynamic> json) => new Trap(
    minecraftIsTrap: DibrugarhFerrets.fromJson(json["minecraft:is_trap"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:is_trap": minecraftIsTrap.toJson(),
  };
}

class TrapSpawned {
  List<TrapSpawnedMinecraftDamageSensor> minecraftDamageSensor;

  TrapSpawned({
    this.minecraftDamageSensor,
  });

  factory TrapSpawned.fromJson(Map<String, dynamic> json) => new TrapSpawned(
    minecraftDamageSensor: new List<TrapSpawnedMinecraftDamageSensor>.from(json["minecraft:damage_sensor"].map((x) => TrapSpawnedMinecraftDamageSensor.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:damage_sensor": new List<dynamic>.from(minecraftDamageSensor.map((x) => x.toJson())),
  };
}

class TrapSpawnedMinecraftDamageSensor {
  EntityTypes onDamage;
  bool dealsDamage;

  TrapSpawnedMinecraftDamageSensor({
    this.onDamage,
    this.dealsDamage,
  });

  factory TrapSpawnedMinecraftDamageSensor.fromJson(Map<String, dynamic> json) => new TrapSpawnedMinecraftDamageSensor(
    onDamage: EntityTypes.fromJson(json["on_damage"]),
    dealsDamage: json["deals_damage"],
  );

  Map<String, dynamic> toJson() => {
    "on_damage": onDamage.toJson(),
    "deals_damage": dealsDamage,
  };
}

class EntityTypes {
  MinecraftBehaviorShareItemsFilters filters;

  EntityTypes({
    this.filters,
  });

  factory EntityTypes.fromJson(Map<String, dynamic> json) => new EntityTypes(
    filters: MinecraftBehaviorShareItemsFilters.fromJson(json["filters"]),
  );

  Map<String, dynamic> toJson() => {
    "filters": filters.toJson(),
  };
}

class Components {
  MinecraftIdentifier minecraftIdentifier;
  MinecraftTypeFamily minecraftTypeFamily;
  MinecraftCollisionBox minecraftCollisionBox;
  MinecraftAttackDamageClass minecraftFallDamage;
  MinecraftAttackDamageClass minecraftMovement;
  MinecraftAttackDamageClass minecraftHealth;
  MinecraftNameable minecraftNameable;
  MinecraftBreathable minecraftBreathable;
  MinecraftEquipment minecraftLoot;
  MinecraftNavigation minecraftNavigationClimb;
  MinecraftMovement minecraftMovementBasic;
  MinecraftJumpStatic minecraftJumpStatic;
  DibrugarhFerrets minecraftCanClimb;
  SantiagoDeCaliRaven minecraftBehaviorFloat;
  MinecraftBehaviorM minecraftBehaviorMountPathing;
  MinecraftBehaviorRandomS minecraftBehaviorRandomStroll;
  MinecraftBehaviorLookAt minecraftBehaviorLookAtPlayer;
  MinecraftBehaviorRandomLookAroundClass minecraftBehaviorRandomLookAround;
  ComponentsMinecraftBehaviorHurtByTarget minecraftBehaviorHurtByTarget;
  ComponentsMinecraftRideable minecraftRideable;
  MinecraftSpiderPoisonEasyMinecraftAttack minecraftAttack;
  MinecraftNavigationWalk minecraftNavigationWalk;
  MinecraftCanFlyClass minecraftCanFly;
  MinecraftAttackDamageClass minecraftFollowRange;
  MinecraftCanFlyClass minecraftHurtWhenWet;
  bool minecraftFireImmune;
  ComponentsMinecraftBehaviorNearestAttackableTarget minecraftBehaviorNearestAttackableTarget;
  ComponentsMinecraftBehaviorMeleeAttack minecraftBehaviorMeleeAttack;
  ComponentsMinecraftShooter minecraftShooter;
  ComponentsMinecraftBehaviorRangedAttack minecraftBehaviorRangedAttack;
  MinecraftLeashable minecraftLeashable;
  MinecraftBehaviorPanic minecraftBehaviorPanic;
  ComponentsMinecraftBehaviorTempt minecraftBehaviorTempt;
  PurpleMinecraftBehavior minecraftBehaviorBreed;
  MinecraftBehaviorFleeSunClass minecraftBehaviorFollowParent;
  List<ComponentsMinecraftDamageSensor> minecraftDamageSensor;
  MinecraftTargetNearbySensor minecraftTargetNearbySensor;
  dynamic minecraftInteract;
  MinecraftBehaviorFindUnderwaterTreasureClass minecraftBehaviorSwell;
  ComponentsMinecraftBehaviorAvoidMobType minecraftBehaviorAvoidMobType;
  ComponentsMinecraftNavigationGeneric minecraftNavigationGeneric;
  MinecraftFlyingSpeed minecraftUnderwaterMovement;
  MinecraftBehaviorRandomS minecraftBehaviorRandomSwim;
  MinecraftBehaviorRandomBreach minecraftBehaviorRandomBreach;
  MinecraftBehaviorFindUnderwaterTreasureClass minecraftBehaviorFindUnderwaterTreasure;
  SantiagoDeCaliRaven minecraftBehaviorBreatheAir;
  FluffyMinecraftBehavior minecraftBehaviorMoveToWater;
  MinecraftOnTarget minecraftOnTargetAcquired;
  MinecraftOnTarget minecraftOnTargetEscape;
  MinecraftPhysics minecraftPhysics;
  MinecraftHorseJumpStrength minecraftHorseJumpStrength;
  MinecraftHealable minecraftHealable;
  DibrugarhFerrets minecraftMovementGeneric;
  DibrugarhFerrets minecraftBurnsInDaylight;
  SantiagoDeCaliRaven minecraftBehaviorBreakDoor;
  MinecraftBehaviorFleeSunClass minecraftBehaviorFleeSun;
  MinecraftBehaviorEgg minecraftBehaviorStompTurtleEgg;
  MinecraftBehaviorMoveTowardsRestriction minecraftBehaviorMoveTowardsRestriction;
  DibrugarhFerrets minecraftNavigationSwim;
  MinecraftMovementSway minecraftMovementSway;
  SantiagoDeCaliRaven minecraftBehaviorGuardianAttack;
  MinecraftAttackDamageClass minecraftKnockbackResistance;
  MinecraftFlyingSpeed minecraftFlyingSpeed;
  NordSugarGliders minecraftOnStartLanding;
  NordSugarGliders minecraftOnStartTakeoff;
  NordSugarGliders minecraftOnDeath;
  MinecraftTeleport minecraftTeleport;
  MinecraftLookat minecraftLookat;
  SantiagoDeCaliRaven minecraftBehaviorEndermanLeaveBlock;
  SantiagoDeCaliRaven minecraftBehaviorEndermanTakeBlock;
  MinecraftBehaviorSummonEntity minecraftBehaviorSummonEntity;
  MinecraftBehaviorSendEvent minecraftBehaviorSendEvent;
  MinecraftBehaviorLookAt minecraftBehaviorLookAtEntity;
  MinecraftFlyingSpeed minecraftScale;
  SantiagoDeCaliRaven minecraftBehaviorSwimIdle;
  MinecraftBehaviorSwimWander minecraftBehaviorSwimWander;
  MinecraftNavigation minecraftNavigationFloat;
  SantiagoDeCaliRaven minecraftBehaviorFloatWander;
  MinecraftDonkeyTamedMinecraftEquippable minecraftEquippable;
  MinecraftEquipment minecraftEquipment;
  MinecraftFlyingSpeed minecraftVariant;
  MinecraftAttackDamageClass minecraftAttackDamage;
  MinecraftBehaviorMoveTowardsTarget minecraftBehaviorMoveTowardsTarget;
  MinecraftBehaviorMoveThroughVillage minecraftBehaviorMoveThroughVillage;
  SantiagoDeCaliRaven minecraftBehaviorOfferFlower;
  MinecraftBehaviorFleeSunClass minecraftBehaviorRunAroundLikeCrazy;
  MinecraftBehaviorFollowCaravan minecraftBehaviorFollowCaravan;
  SantiagoDeCaliRaven minecraftBehaviorSlimeFloat;
  SantiagoDeCaliRaven minecraftBehaviorSlimeAttack;
  SantiagoDeCaliRaven minecraftBehaviorSlimeRandomDirection;
  SantiagoDeCaliRaven minecraftBehaviorSlimeKeepOnJumping;
  MinecraftBehaviorFleeSunClass minecraftBehaviorOcelotSitOnBlock;
  ComponentsMinecraftBehaviorLeapAtTarget minecraftBehaviorLeapAtTarget;
  MinecraftBehaviorOcelotattack minecraftBehaviorOcelotattack;
  MinecraftNavigationFly minecraftNavigationFly;
  DibrugarhFerrets minecraftMovementFly;
  MinecraftMovementGlide minecraftMovementGlide;
  MinecraftBehaviorSwoopAttack minecraftBehaviorSwoopAttack;
  MinecraftBehaviorCircleAroundAnchor minecraftBehaviorCircleAroundAnchor;
  MinecraftFlyingSpeed minecraftPlayerSaturation;
  MinecraftAttackDamageClass minecraftPlayerExhaustion;
  MinecraftAttackDamageClass minecraftPlayerLevel;
  MinecraftAttackDamageClass minecraftPlayerExperience;
  MinecraftBehaviorRabbitPanic minecraftBehaviorRabbitPanic;
  FluffyMinecraftBehavior minecraftBehaviorRaidGarden;
  MinecraftBehaviorFleeSunClass minecraftBehaviorFollowFlock;
  MinecraftBehaviorEatBlock minecraftBehaviorEatBlock;
  MinecraftPeek minecraftPeek;
  SantiagoDeCaliRaven minecraftBehaviorSilverfishMergeWithStone;
  DibrugarhFerrets minecraftIsTamed;
  DibrugarhFerrets minecraftBehaviorPlayerRideTamed;
  SantiagoDeCaliRaven minecraftBehaviorRestrictSun;
  SantiagoDeCaliRaven minecraftBehaviorSquidMoveAwayFromGround;
  SantiagoDeCaliRaven minecraftBehaviorSquidFlee;
  SantiagoDeCaliRaven minecraftBehaviorSquidIdle;
  SantiagoDeCaliRaven minecraftBehaviorSquidDive;
  SantiagoDeCaliRaven minecraftBehaviorSquidOutOfWater;
  MinecraftMovement minecraftMovementAmphibious;
  DibrugarhFerrets minecraftHome;
  SantiagoDeCaliRaven minecraftBehaviorChargeAttack;
  ComponentsMinecraftInventory minecraftInventory;
  SantiagoDeCaliRaven componentsMinecraftBehaviorPanic;
  MinecraftBehaviorAvoidMobType componentsMinecraftBehaviorAvoidMobType;
  MinecraftBehaviorFleeSunClass minecraftBehaviorMoveIndoors;
  SantiagoDeCaliRaven minecraftBehaviorRestrictOpenDoor;
  MinecraftBehaviorOpenDoor minecraftBehaviorOpenDoor;
  MinecraftBehaviorPickupItems minecraftBehaviorPickupItems;
  SantiagoDeCaliRaven minecraftBehaviorWitherRandomAttackPosGoal;
  SantiagoDeCaliRaven minecraftBehaviorWitherTargetHighestDamage;
  SantiagoDeCaliRaven minecraftBehaviorLookAtTarget;
  NordSugarGliders minecraftOnCalm;
  SantiagoDeCaliRaven minecraftBehaviorStayWhileSitting;
  MinecraftBehaviorBeg minecraftBehaviorBeg;
  DibrugarhFerrets minecraftPlayerRideTamed;
  DibrugarhFerrets minecraftMonster;
  MinecraftAttackDamageClass minecraftZombieSpawnReinforcements;

  Components({
    this.minecraftIdentifier,
    this.minecraftTypeFamily,
    this.minecraftCollisionBox,
    this.minecraftFallDamage,
    this.minecraftMovement,
    this.minecraftHealth,
    this.minecraftNameable,
    this.minecraftBreathable,
    this.minecraftLoot,
    this.minecraftNavigationClimb,
    this.minecraftMovementBasic,
    this.minecraftJumpStatic,
    this.minecraftCanClimb,
    this.minecraftBehaviorFloat,
    this.minecraftBehaviorMountPathing,
    this.minecraftBehaviorRandomStroll,
    this.minecraftBehaviorLookAtPlayer,
    this.minecraftBehaviorRandomLookAround,
    this.minecraftBehaviorHurtByTarget,
    this.minecraftRideable,
    this.minecraftAttack,
    this.minecraftNavigationWalk,
    this.minecraftCanFly,
    this.minecraftFollowRange,
    this.minecraftHurtWhenWet,
    this.minecraftFireImmune,
    this.minecraftBehaviorNearestAttackableTarget,
    this.minecraftBehaviorMeleeAttack,
    this.minecraftShooter,
    this.minecraftBehaviorRangedAttack,
    this.minecraftLeashable,
    this.minecraftBehaviorPanic,
    this.minecraftBehaviorTempt,
    this.minecraftBehaviorBreed,
    this.minecraftBehaviorFollowParent,
    this.minecraftDamageSensor,
    this.minecraftTargetNearbySensor,
    this.minecraftInteract,
    this.minecraftBehaviorSwell,
    this.minecraftBehaviorAvoidMobType,
    this.minecraftNavigationGeneric,
    this.minecraftUnderwaterMovement,
    this.minecraftBehaviorRandomSwim,
    this.minecraftBehaviorRandomBreach,
    this.minecraftBehaviorFindUnderwaterTreasure,
    this.minecraftBehaviorBreatheAir,
    this.minecraftBehaviorMoveToWater,
    this.minecraftOnTargetAcquired,
    this.minecraftOnTargetEscape,
    this.minecraftPhysics,
    this.minecraftHorseJumpStrength,
    this.minecraftHealable,
    this.minecraftMovementGeneric,
    this.minecraftBurnsInDaylight,
    this.minecraftBehaviorBreakDoor,
    this.minecraftBehaviorFleeSun,
    this.minecraftBehaviorStompTurtleEgg,
    this.minecraftBehaviorMoveTowardsRestriction,
    this.minecraftNavigationSwim,
    this.minecraftMovementSway,
    this.minecraftBehaviorGuardianAttack,
    this.minecraftKnockbackResistance,
    this.minecraftFlyingSpeed,
    this.minecraftOnStartLanding,
    this.minecraftOnStartTakeoff,
    this.minecraftOnDeath,
    this.minecraftTeleport,
    this.minecraftLookat,
    this.minecraftBehaviorEndermanLeaveBlock,
    this.minecraftBehaviorEndermanTakeBlock,
    this.minecraftBehaviorSummonEntity,
    this.minecraftBehaviorSendEvent,
    this.minecraftBehaviorLookAtEntity,
    this.minecraftScale,
    this.minecraftBehaviorSwimIdle,
    this.minecraftBehaviorSwimWander,
    this.minecraftNavigationFloat,
    this.minecraftBehaviorFloatWander,
    this.minecraftEquippable,
    this.minecraftEquipment,
    this.minecraftVariant,
    this.minecraftAttackDamage,
    this.minecraftBehaviorMoveTowardsTarget,
    this.minecraftBehaviorMoveThroughVillage,
    this.minecraftBehaviorOfferFlower,
    this.minecraftBehaviorRunAroundLikeCrazy,
    this.minecraftBehaviorFollowCaravan,
    this.minecraftBehaviorSlimeFloat,
    this.minecraftBehaviorSlimeAttack,
    this.minecraftBehaviorSlimeRandomDirection,
    this.minecraftBehaviorSlimeKeepOnJumping,
    this.minecraftBehaviorOcelotSitOnBlock,
    this.minecraftBehaviorLeapAtTarget,
    this.minecraftBehaviorOcelotattack,
    this.minecraftNavigationFly,
    this.minecraftMovementFly,
    this.minecraftMovementGlide,
    this.minecraftBehaviorSwoopAttack,
    this.minecraftBehaviorCircleAroundAnchor,
    this.minecraftPlayerSaturation,
    this.minecraftPlayerExhaustion,
    this.minecraftPlayerLevel,
    this.minecraftPlayerExperience,
    this.minecraftBehaviorRabbitPanic,
    this.minecraftBehaviorRaidGarden,
    this.minecraftBehaviorFollowFlock,
    this.minecraftBehaviorEatBlock,
    this.minecraftPeek,
    this.minecraftBehaviorSilverfishMergeWithStone,
    this.minecraftIsTamed,
    this.minecraftBehaviorPlayerRideTamed,
    this.minecraftBehaviorRestrictSun,
    this.minecraftBehaviorSquidMoveAwayFromGround,
    this.minecraftBehaviorSquidFlee,
    this.minecraftBehaviorSquidIdle,
    this.minecraftBehaviorSquidDive,
    this.minecraftBehaviorSquidOutOfWater,
    this.minecraftMovementAmphibious,
    this.minecraftHome,
    this.minecraftBehaviorChargeAttack,
    this.minecraftInventory,
    this.componentsMinecraftBehaviorPanic,
    this.componentsMinecraftBehaviorAvoidMobType,
    this.minecraftBehaviorMoveIndoors,
    this.minecraftBehaviorRestrictOpenDoor,
    this.minecraftBehaviorOpenDoor,
    this.minecraftBehaviorPickupItems,
    this.minecraftBehaviorWitherRandomAttackPosGoal,
    this.minecraftBehaviorWitherTargetHighestDamage,
    this.minecraftBehaviorLookAtTarget,
    this.minecraftOnCalm,
    this.minecraftBehaviorStayWhileSitting,
    this.minecraftBehaviorBeg,
    this.minecraftPlayerRideTamed,
    this.minecraftMonster,
    this.minecraftZombieSpawnReinforcements,
  });

  factory Components.fromJson(Map<String, dynamic> json) => new Components(
    minecraftIdentifier: MinecraftIdentifier.fromJson(json["minecraft:identifier"]),
    minecraftTypeFamily: json["minecraft:type_family"] == null ? null : MinecraftTypeFamily.fromJson(json["minecraft:type_family"]),
    minecraftCollisionBox: json["minecraft:collision_box"] == null ? null : MinecraftCollisionBox.fromJson(json["minecraft:collision_box"]),
    minecraftFallDamage: json["minecraft:fall_damage"] == null ? null : MinecraftAttackDamageClass.fromJson(json["minecraft:fall_damage"]),
    minecraftMovement: json["minecraft:movement"] == null ? null : MinecraftAttackDamageClass.fromJson(json["minecraft:movement"]),
    minecraftHealth: json["minecraft:health"] == null ? null : MinecraftAttackDamageClass.fromJson(json["minecraft:health"]),
    minecraftNameable: json["minecraft:nameable"] == null ? null : MinecraftNameable.fromJson(json["minecraft:nameable"]),
    minecraftBreathable: json["minecraft:breathable"] == null ? null : MinecraftBreathable.fromJson(json["minecraft:breathable"]),
    minecraftLoot: json["minecraft:loot"] == null ? null : MinecraftEquipment.fromJson(json["minecraft:loot"]),
    minecraftNavigationClimb: json["minecraft:navigation.climb"] == null ? null : MinecraftNavigation.fromJson(json["minecraft:navigation.climb"]),
    minecraftMovementBasic: json["minecraft:movement.basic"] == null ? null : MinecraftMovement.fromJson(json["minecraft:movement.basic"]),
    minecraftJumpStatic: json["minecraft:jump.static"] == null ? null : MinecraftJumpStatic.fromJson(json["minecraft:jump.static"]),
    minecraftCanClimb: json["minecraft:can_climb"] == null ? null : DibrugarhFerrets.fromJson(json["minecraft:can_climb"]),
    minecraftBehaviorFloat: json["minecraft:behavior.float"] == null ? null : SantiagoDeCaliRaven.fromJson(json["minecraft:behavior.float"]),
    minecraftBehaviorMountPathing: json["minecraft:behavior.mount_pathing"] == null ? null : MinecraftBehaviorM.fromJson(json["minecraft:behavior.mount_pathing"]),
    minecraftBehaviorRandomStroll: json["minecraft:behavior.random_stroll"] == null ? null : MinecraftBehaviorRandomS.fromJson(json["minecraft:behavior.random_stroll"]),
    minecraftBehaviorLookAtPlayer: json["minecraft:behavior.look_at_player"] == null ? null : MinecraftBehaviorLookAt.fromJson(json["minecraft:behavior.look_at_player"]),
    minecraftBehaviorRandomLookAround: json["minecraft:behavior.random_look_around"] == null ? null : MinecraftBehaviorRandomLookAroundClass.fromJson(json["minecraft:behavior.random_look_around"]),
    minecraftBehaviorHurtByTarget: json["minecraft:behavior.hurt_by_target"] == null ? null : ComponentsMinecraftBehaviorHurtByTarget.fromJson(json["minecraft:behavior.hurt_by_target"]),
    minecraftRideable: json["minecraft:rideable"] == null ? null : ComponentsMinecraftRideable.fromJson(json["minecraft:rideable"]),
    minecraftAttack: json["minecraft:attack"] == null ? null : MinecraftSpiderPoisonEasyMinecraftAttack.fromJson(json["minecraft:attack"]),
    minecraftNavigationWalk: json["minecraft:navigation.walk"] == null ? null : MinecraftNavigationWalk.fromJson(json["minecraft:navigation.walk"]),
    minecraftCanFly: json["minecraft:can_fly"] == null ? null : MinecraftCanFlyClass.fromJson(json["minecraft:can_fly"]),
    minecraftFollowRange: json["minecraft:follow_range"] == null ? null : MinecraftAttackDamageClass.fromJson(json["minecraft:follow_range"]),
    minecraftHurtWhenWet: json["minecraft:hurt_when_wet"] == null ? null : MinecraftCanFlyClass.fromJson(json["minecraft:hurt_when_wet"]),
    minecraftFireImmune: json["minecraft:fire_immune"] == null ? null : json["minecraft:fire_immune"],
    minecraftBehaviorNearestAttackableTarget: json["minecraft:behavior.nearest_attackable_target"] == null ? null : ComponentsMinecraftBehaviorNearestAttackableTarget.fromJson(json["minecraft:behavior.nearest_attackable_target"]),
    minecraftBehaviorMeleeAttack: json["minecraft:behavior.melee_attack"] == null ? null : ComponentsMinecraftBehaviorMeleeAttack.fromJson(json["minecraft:behavior.melee_attack"]),
    minecraftShooter: json["minecraft:shooter"] == null ? null : ComponentsMinecraftShooter.fromJson(json["minecraft:shooter"]),
    minecraftBehaviorRangedAttack: json["minecraft:behavior.ranged_attack"] == null ? null : ComponentsMinecraftBehaviorRangedAttack.fromJson(json["minecraft:behavior.ranged_attack"]),
    minecraftLeashable: json["minecraft:leashable"] == null ? null : MinecraftLeashable.fromJson(json["minecraft:leashable"]),
    minecraftBehaviorPanic: json["minecraft:behavior.panic"] == null ? null : MinecraftBehaviorPanic.fromJson(json["minecraft:behavior.panic"]),
    minecraftBehaviorTempt: json["minecraft:behavior.tempt"] == null ? null : ComponentsMinecraftBehaviorTempt.fromJson(json["minecraft:behavior.tempt"]),
    minecraftBehaviorBreed: json["minecraft:behavior.breed"] == null ? null : PurpleMinecraftBehavior.fromJson(json["minecraft:behavior.breed"]),
    minecraftBehaviorFollowParent: json["minecraft:behavior.follow_parent"] == null ? null : MinecraftBehaviorFleeSunClass.fromJson(json["minecraft:behavior.follow_parent"]),
    minecraftDamageSensor: json["minecraft:damage_sensor"] == null ? null : new List<ComponentsMinecraftDamageSensor>.from(json["minecraft:damage_sensor"].map((x) => ComponentsMinecraftDamageSensor.fromJson(x))),
    minecraftTargetNearbySensor: json["minecraft:target_nearby_sensor"] == null ? null : MinecraftTargetNearbySensor.fromJson(json["minecraft:target_nearby_sensor"]),
    minecraftInteract: json["minecraft:interact"],
    minecraftBehaviorSwell: json["minecraft:behavior.swell"] == null ? null : MinecraftBehaviorFindUnderwaterTreasureClass.fromJson(json["minecraft:behavior.swell"]),
    minecraftBehaviorAvoidMobType: json["minecraft:behavior.avoid_mob_type"] == null ? null : ComponentsMinecraftBehaviorAvoidMobType.fromJson(json["minecraft:behavior.avoid_mob_type"]),
    minecraftNavigationGeneric: json["minecraft:navigation.generic"] == null ? null : ComponentsMinecraftNavigationGeneric.fromJson(json["minecraft:navigation.generic"]),
    minecraftUnderwaterMovement: json["minecraft:underwater_movement"] == null ? null : MinecraftFlyingSpeed.fromJson(json["minecraft:underwater_movement"]),
    minecraftBehaviorRandomSwim: json["minecraft:behavior.random_swim"] == null ? null : MinecraftBehaviorRandomS.fromJson(json["minecraft:behavior.random_swim"]),
    minecraftBehaviorRandomBreach: json["minecraft:behavior.random_breach"] == null ? null : MinecraftBehaviorRandomBreach.fromJson(json["minecraft:behavior.random_breach"]),
    minecraftBehaviorFindUnderwaterTreasure: json["minecraft:behavior.find_underwater_treasure"] == null ? null : MinecraftBehaviorFindUnderwaterTreasureClass.fromJson(json["minecraft:behavior.find_underwater_treasure"]),
    minecraftBehaviorBreatheAir: json["minecraft:behavior.breathe_air"] == null ? null : SantiagoDeCaliRaven.fromJson(json["minecraft:behavior.breathe_air"]),
    minecraftBehaviorMoveToWater: json["minecraft:behavior.move_to_water"] == null ? null : FluffyMinecraftBehavior.fromJson(json["minecraft:behavior.move_to_water"]),
    minecraftOnTargetAcquired: json["minecraft:on_target_acquired"] == null ? null : MinecraftOnTarget.fromJson(json["minecraft:on_target_acquired"]),
    minecraftOnTargetEscape: json["minecraft:on_target_escape"] == null ? null : MinecraftOnTarget.fromJson(json["minecraft:on_target_escape"]),
    minecraftPhysics: json["minecraft:physics"] == null ? null : MinecraftPhysics.fromJson(json["minecraft:physics"]),
    minecraftHorseJumpStrength: json["minecraft:horse.jump_strength"] == null ? null : MinecraftHorseJumpStrength.fromJson(json["minecraft:horse.jump_strength"]),
    minecraftHealable: json["minecraft:healable"] == null ? null : MinecraftHealable.fromJson(json["minecraft:healable"]),
    minecraftMovementGeneric: json["minecraft:movement.generic"] == null ? null : DibrugarhFerrets.fromJson(json["minecraft:movement.generic"]),
    minecraftBurnsInDaylight: json["minecraft:burns_in_daylight"] == null ? null : DibrugarhFerrets.fromJson(json["minecraft:burns_in_daylight"]),
    minecraftBehaviorBreakDoor: json["minecraft:behavior.break_door"] == null ? null : SantiagoDeCaliRaven.fromJson(json["minecraft:behavior.break_door"]),
    minecraftBehaviorFleeSun: json["minecraft:behavior.flee_sun"] == null ? null : MinecraftBehaviorFleeSunClass.fromJson(json["minecraft:behavior.flee_sun"]),
    minecraftBehaviorStompTurtleEgg: json["minecraft:behavior.stomp_turtle_egg"] == null ? null : MinecraftBehaviorEgg.fromJson(json["minecraft:behavior.stomp_turtle_egg"]),
    minecraftBehaviorMoveTowardsRestriction: json["minecraft:behavior.move_towards_restriction"] == null ? null : MinecraftBehaviorMoveTowardsRestriction.fromJson(json["minecraft:behavior.move_towards_restriction"]),
    minecraftNavigationSwim: json["minecraft:navigation.swim"] == null ? null : DibrugarhFerrets.fromJson(json["minecraft:navigation.swim"]),
    minecraftMovementSway: json["minecraft:movement.sway"] == null ? null : MinecraftMovementSway.fromJson(json["minecraft:movement.sway"]),
    minecraftBehaviorGuardianAttack: json["minecraft:behavior.guardian_attack"] == null ? null : SantiagoDeCaliRaven.fromJson(json["minecraft:behavior.guardian_attack"]),
    minecraftKnockbackResistance: json["minecraft:knockback_resistance"] == null ? null : MinecraftAttackDamageClass.fromJson(json["minecraft:knockback_resistance"]),
    minecraftFlyingSpeed: json["minecraft:flying_speed"] == null ? null : MinecraftFlyingSpeed.fromJson(json["minecraft:flying_speed"]),
    minecraftOnStartLanding: json["minecraft:on_start_landing"] == null ? null : NordSugarGliders.fromJson(json["minecraft:on_start_landing"]),
    minecraftOnStartTakeoff: json["minecraft:on_start_takeoff"] == null ? null : NordSugarGliders.fromJson(json["minecraft:on_start_takeoff"]),
    minecraftOnDeath: json["minecraft:on_death"] == null ? null : NordSugarGliders.fromJson(json["minecraft:on_death"]),
    minecraftTeleport: json["minecraft:teleport"] == null ? null : MinecraftTeleport.fromJson(json["minecraft:teleport"]),
    minecraftLookat: json["minecraft:lookat"] == null ? null : MinecraftLookat.fromJson(json["minecraft:lookat"]),
    minecraftBehaviorEndermanLeaveBlock: json["minecraft:behavior.enderman_leave_block"] == null ? null : SantiagoDeCaliRaven.fromJson(json["minecraft:behavior.enderman_leave_block"]),
    minecraftBehaviorEndermanTakeBlock: json["minecraft:behavior.enderman_take_block"] == null ? null : SantiagoDeCaliRaven.fromJson(json["minecraft:behavior.enderman_take_block"]),
    minecraftBehaviorSummonEntity: json["minecraft:behavior.summon_entity"] == null ? null : MinecraftBehaviorSummonEntity.fromJson(json["minecraft:behavior.summon_entity"]),
    minecraftBehaviorSendEvent: json["minecraft:behavior.send_event"] == null ? null : MinecraftBehaviorSendEvent.fromJson(json["minecraft:behavior.send_event"]),
    minecraftBehaviorLookAtEntity: json["minecraft:behavior.look_at_entity"] == null ? null : MinecraftBehaviorLookAt.fromJson(json["minecraft:behavior.look_at_entity"]),
    minecraftScale: json["minecraft:scale"] == null ? null : MinecraftFlyingSpeed.fromJson(json["minecraft:scale"]),
    minecraftBehaviorSwimIdle: json["minecraft:behavior.swim_idle"] == null ? null : SantiagoDeCaliRaven.fromJson(json["minecraft:behavior.swim_idle"]),
    minecraftBehaviorSwimWander: json["minecraft:behavior.swim_wander"] == null ? null : MinecraftBehaviorSwimWander.fromJson(json["minecraft:behavior.swim_wander"]),
    minecraftNavigationFloat: json["minecraft:navigation.float"] == null ? null : MinecraftNavigation.fromJson(json["minecraft:navigation.float"]),
    minecraftBehaviorFloatWander: json["minecraft:behavior.float_wander"] == null ? null : SantiagoDeCaliRaven.fromJson(json["minecraft:behavior.float_wander"]),
    minecraftEquippable: json["minecraft:equippable"] == null ? null : MinecraftDonkeyTamedMinecraftEquippable.fromJson(json["minecraft:equippable"]),
    minecraftEquipment: json["minecraft:equipment"] == null ? null : MinecraftEquipment.fromJson(json["minecraft:equipment"]),
    minecraftVariant: json["minecraft:variant"] == null ? null : MinecraftFlyingSpeed.fromJson(json["minecraft:variant"]),
    minecraftAttackDamage: json["minecraft:attack_damage"] == null ? null : MinecraftAttackDamageClass.fromJson(json["minecraft:attack_damage"]),
    minecraftBehaviorMoveTowardsTarget: json["minecraft:behavior.move_towards_target"] == null ? null : MinecraftBehaviorMoveTowardsTarget.fromJson(json["minecraft:behavior.move_towards_target"]),
    minecraftBehaviorMoveThroughVillage: json["minecraft:behavior.move_through_village"] == null ? null : MinecraftBehaviorMoveThroughVillage.fromJson(json["minecraft:behavior.move_through_village"]),
    minecraftBehaviorOfferFlower: json["minecraft:behavior.offer_flower"] == null ? null : SantiagoDeCaliRaven.fromJson(json["minecraft:behavior.offer_flower"]),
    minecraftBehaviorRunAroundLikeCrazy: json["minecraft:behavior.run_around_like_crazy"] == null ? null : MinecraftBehaviorFleeSunClass.fromJson(json["minecraft:behavior.run_around_like_crazy"]),
    minecraftBehaviorFollowCaravan: json["minecraft:behavior.follow_caravan"] == null ? null : MinecraftBehaviorFollowCaravan.fromJson(json["minecraft:behavior.follow_caravan"]),
    minecraftBehaviorSlimeFloat: json["minecraft:behavior.slime_float"] == null ? null : SantiagoDeCaliRaven.fromJson(json["minecraft:behavior.slime_float"]),
    minecraftBehaviorSlimeAttack: json["minecraft:behavior.slime_attack"] == null ? null : SantiagoDeCaliRaven.fromJson(json["minecraft:behavior.slime_attack"]),
    minecraftBehaviorSlimeRandomDirection: json["minecraft:behavior.slime_random_direction"] == null ? null : SantiagoDeCaliRaven.fromJson(json["minecraft:behavior.slime_random_direction"]),
    minecraftBehaviorSlimeKeepOnJumping: json["minecraft:behavior.slime_keep_on_jumping"] == null ? null : SantiagoDeCaliRaven.fromJson(json["minecraft:behavior.slime_keep_on_jumping"]),
    minecraftBehaviorOcelotSitOnBlock: json["minecraft:behavior.ocelot_sit_on_block"] == null ? null : MinecraftBehaviorFleeSunClass.fromJson(json["minecraft:behavior.ocelot_sit_on_block"]),
    minecraftBehaviorLeapAtTarget: json["minecraft:behavior.leap_at_target"] == null ? null : ComponentsMinecraftBehaviorLeapAtTarget.fromJson(json["minecraft:behavior.leap_at_target"]),
    minecraftBehaviorOcelotattack: json["minecraft:behavior.ocelotattack"] == null ? null : MinecraftBehaviorOcelotattack.fromJson(json["minecraft:behavior.ocelotattack"]),
    minecraftNavigationFly: json["minecraft:navigation.fly"] == null ? null : MinecraftNavigationFly.fromJson(json["minecraft:navigation.fly"]),
    minecraftMovementFly: json["minecraft:movement.fly"] == null ? null : DibrugarhFerrets.fromJson(json["minecraft:movement.fly"]),
    minecraftMovementGlide: json["minecraft:movement.glide"] == null ? null : MinecraftMovementGlide.fromJson(json["minecraft:movement.glide"]),
    minecraftBehaviorSwoopAttack: json["minecraft:behavior.swoop_attack"] == null ? null : MinecraftBehaviorSwoopAttack.fromJson(json["minecraft:behavior.swoop_attack"]),
    minecraftBehaviorCircleAroundAnchor: json["minecraft:behavior.circle_around_anchor"] == null ? null : MinecraftBehaviorCircleAroundAnchor.fromJson(json["minecraft:behavior.circle_around_anchor"]),
    minecraftPlayerSaturation: json["minecraft:player.saturation"] == null ? null : MinecraftFlyingSpeed.fromJson(json["minecraft:player.saturation"]),
    minecraftPlayerExhaustion: json["minecraft:player.exhaustion"] == null ? null : MinecraftAttackDamageClass.fromJson(json["minecraft:player.exhaustion"]),
    minecraftPlayerLevel: json["minecraft:player.level"] == null ? null : MinecraftAttackDamageClass.fromJson(json["minecraft:player.level"]),
    minecraftPlayerExperience: json["minecraft:player.experience"] == null ? null : MinecraftAttackDamageClass.fromJson(json["minecraft:player.experience"]),
    minecraftBehaviorRabbitPanic: json["minecraft:behavior.rabbit_panic"] == null ? null : MinecraftBehaviorRabbitPanic.fromJson(json["minecraft:behavior.rabbit_panic"]),
    minecraftBehaviorRaidGarden: json["minecraft:behavior.raid_garden"] == null ? null : FluffyMinecraftBehavior.fromJson(json["minecraft:behavior.raid_garden"]),
    minecraftBehaviorFollowFlock: json["minecraft:behavior.follow_flock"] == null ? null : MinecraftBehaviorFleeSunClass.fromJson(json["minecraft:behavior.follow_flock"]),
    minecraftBehaviorEatBlock: json["minecraft:behavior.eat_block"] == null ? null : MinecraftBehaviorEatBlock.fromJson(json["minecraft:behavior.eat_block"]),
    minecraftPeek: json["minecraft:peek"] == null ? null : MinecraftPeek.fromJson(json["minecraft:peek"]),
    minecraftBehaviorSilverfishMergeWithStone: json["minecraft:behavior.silverfish_merge_with_stone"] == null ? null : SantiagoDeCaliRaven.fromJson(json["minecraft:behavior.silverfish_merge_with_stone"]),
    minecraftIsTamed: json["minecraft:is_tamed"] == null ? null : DibrugarhFerrets.fromJson(json["minecraft:is_tamed"]),
    minecraftBehaviorPlayerRideTamed: json["minecraft:behavior.player_ride_tamed"] == null ? null : DibrugarhFerrets.fromJson(json["minecraft:behavior.player_ride_tamed"]),
    minecraftBehaviorRestrictSun: json["minecraft:behavior.restrict_sun"] == null ? null : SantiagoDeCaliRaven.fromJson(json["minecraft:behavior.restrict_sun"]),
    minecraftBehaviorSquidMoveAwayFromGround: json["minecraft:behavior.squid_move_away_from_ground"] == null ? null : SantiagoDeCaliRaven.fromJson(json["minecraft:behavior.squid_move_away_from_ground"]),
    minecraftBehaviorSquidFlee: json["minecraft:behavior.squid_flee"] == null ? null : SantiagoDeCaliRaven.fromJson(json["minecraft:behavior.squid_flee"]),
    minecraftBehaviorSquidIdle: json["minecraft:behavior.squid_idle"] == null ? null : SantiagoDeCaliRaven.fromJson(json["minecraft:behavior.squid_idle"]),
    minecraftBehaviorSquidDive: json["minecraft:behavior.squid_dive"] == null ? null : SantiagoDeCaliRaven.fromJson(json["minecraft:behavior.squid_dive"]),
    minecraftBehaviorSquidOutOfWater: json["minecraft:behavior.squid_out_of_water"] == null ? null : SantiagoDeCaliRaven.fromJson(json["minecraft:behavior.squid_out_of_water"]),
    minecraftMovementAmphibious: json["minecraft:movement.amphibious"] == null ? null : MinecraftMovement.fromJson(json["minecraft:movement.amphibious"]),
    minecraftHome: json["minecraft:home"] == null ? null : DibrugarhFerrets.fromJson(json["minecraft:home"]),
    minecraftBehaviorChargeAttack: json["minecraft:behavior.charge_attack"] == null ? null : SantiagoDeCaliRaven.fromJson(json["minecraft:behavior.charge_attack"]),
    minecraftInventory: json["minecraft:inventory"] == null ? null : ComponentsMinecraftInventory.fromJson(json["minecraft:inventory"]),
    componentsMinecraftBehaviorPanic: json["minecraft:behavior:panic"] == null ? null : SantiagoDeCaliRaven.fromJson(json["minecraft:behavior:panic"]),
    componentsMinecraftBehaviorAvoidMobType: json["minecraft:behavior:avoid_mob_type"] == null ? null : MinecraftBehaviorAvoidMobType.fromJson(json["minecraft:behavior:avoid_mob_type"]),
    minecraftBehaviorMoveIndoors: json["minecraft:behavior.move_indoors"] == null ? null : MinecraftBehaviorFleeSunClass.fromJson(json["minecraft:behavior.move_indoors"]),
    minecraftBehaviorRestrictOpenDoor: json["minecraft:behavior.restrict_open_door"] == null ? null : SantiagoDeCaliRaven.fromJson(json["minecraft:behavior.restrict_open_door"]),
    minecraftBehaviorOpenDoor: json["minecraft:behavior.open_door"] == null ? null : MinecraftBehaviorOpenDoor.fromJson(json["minecraft:behavior.open_door"]),
    minecraftBehaviorPickupItems: json["minecraft:behavior.pickup_items"] == null ? null : MinecraftBehaviorPickupItems.fromJson(json["minecraft:behavior.pickup_items"]),
    minecraftBehaviorWitherRandomAttackPosGoal: json["minecraft:behavior.wither_random_attack_pos_goal"] == null ? null : SantiagoDeCaliRaven.fromJson(json["minecraft:behavior.wither_random_attack_pos_goal"]),
    minecraftBehaviorWitherTargetHighestDamage: json["minecraft:behavior.wither_target_highest_damage"] == null ? null : SantiagoDeCaliRaven.fromJson(json["minecraft:behavior.wither_target_highest_damage"]),
    minecraftBehaviorLookAtTarget: json["minecraft:behavior.look_at_target"] == null ? null : SantiagoDeCaliRaven.fromJson(json["minecraft:behavior.look_at_target"]),
    minecraftOnCalm: json["minecraft:on_calm"] == null ? null : NordSugarGliders.fromJson(json["minecraft:on_calm"]),
    minecraftBehaviorStayWhileSitting: json["minecraft:behavior.stay_while_sitting"] == null ? null : SantiagoDeCaliRaven.fromJson(json["minecraft:behavior.stay_while_sitting"]),
    minecraftBehaviorBeg: json["minecraft:behavior.beg"] == null ? null : MinecraftBehaviorBeg.fromJson(json["minecraft:behavior.beg"]),
    minecraftPlayerRideTamed: json["minecraft:player_ride_tamed"] == null ? null : DibrugarhFerrets.fromJson(json["minecraft:player_ride_tamed"]),
    minecraftMonster: json["minecraft:monster"] == null ? null : DibrugarhFerrets.fromJson(json["minecraft:monster"]),
    minecraftZombieSpawnReinforcements: json["minecraft:zombie.spawn_reinforcements"] == null ? null : MinecraftAttackDamageClass.fromJson(json["minecraft:zombie.spawn_reinforcements"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:identifier": minecraftIdentifier.toJson(),
    "minecraft:type_family": minecraftTypeFamily == null ? null : minecraftTypeFamily.toJson(),
    "minecraft:collision_box": minecraftCollisionBox == null ? null : minecraftCollisionBox.toJson(),
    "minecraft:fall_damage": minecraftFallDamage == null ? null : minecraftFallDamage.toJson(),
    "minecraft:movement": minecraftMovement == null ? null : minecraftMovement.toJson(),
    "minecraft:health": minecraftHealth == null ? null : minecraftHealth.toJson(),
    "minecraft:nameable": minecraftNameable == null ? null : minecraftNameable.toJson(),
    "minecraft:breathable": minecraftBreathable == null ? null : minecraftBreathable.toJson(),
    "minecraft:loot": minecraftLoot == null ? null : minecraftLoot.toJson(),
    "minecraft:navigation.climb": minecraftNavigationClimb == null ? null : minecraftNavigationClimb.toJson(),
    "minecraft:movement.basic": minecraftMovementBasic == null ? null : minecraftMovementBasic.toJson(),
    "minecraft:jump.static": minecraftJumpStatic == null ? null : minecraftJumpStatic.toJson(),
    "minecraft:can_climb": minecraftCanClimb == null ? null : minecraftCanClimb.toJson(),
    "minecraft:behavior.float": minecraftBehaviorFloat == null ? null : minecraftBehaviorFloat.toJson(),
    "minecraft:behavior.mount_pathing": minecraftBehaviorMountPathing == null ? null : minecraftBehaviorMountPathing.toJson(),
    "minecraft:behavior.random_stroll": minecraftBehaviorRandomStroll == null ? null : minecraftBehaviorRandomStroll.toJson(),
    "minecraft:behavior.look_at_player": minecraftBehaviorLookAtPlayer == null ? null : minecraftBehaviorLookAtPlayer.toJson(),
    "minecraft:behavior.random_look_around": minecraftBehaviorRandomLookAround == null ? null : minecraftBehaviorRandomLookAround.toJson(),
    "minecraft:behavior.hurt_by_target": minecraftBehaviorHurtByTarget == null ? null : minecraftBehaviorHurtByTarget.toJson(),
    "minecraft:rideable": minecraftRideable == null ? null : minecraftRideable.toJson(),
    "minecraft:attack": minecraftAttack == null ? null : minecraftAttack.toJson(),
    "minecraft:navigation.walk": minecraftNavigationWalk == null ? null : minecraftNavigationWalk.toJson(),
    "minecraft:can_fly": minecraftCanFly == null ? null : minecraftCanFly.toJson(),
    "minecraft:follow_range": minecraftFollowRange == null ? null : minecraftFollowRange.toJson(),
    "minecraft:hurt_when_wet": minecraftHurtWhenWet == null ? null : minecraftHurtWhenWet.toJson(),
    "minecraft:fire_immune": minecraftFireImmune == null ? null : minecraftFireImmune,
    "minecraft:behavior.nearest_attackable_target": minecraftBehaviorNearestAttackableTarget == null ? null : minecraftBehaviorNearestAttackableTarget.toJson(),
    "minecraft:behavior.melee_attack": minecraftBehaviorMeleeAttack == null ? null : minecraftBehaviorMeleeAttack.toJson(),
    "minecraft:shooter": minecraftShooter == null ? null : minecraftShooter.toJson(),
    "minecraft:behavior.ranged_attack": minecraftBehaviorRangedAttack == null ? null : minecraftBehaviorRangedAttack.toJson(),
    "minecraft:leashable": minecraftLeashable == null ? null : minecraftLeashable.toJson(),
    "minecraft:behavior.panic": minecraftBehaviorPanic == null ? null : minecraftBehaviorPanic.toJson(),
    "minecraft:behavior.tempt": minecraftBehaviorTempt == null ? null : minecraftBehaviorTempt.toJson(),
    "minecraft:behavior.breed": minecraftBehaviorBreed == null ? null : minecraftBehaviorBreed.toJson(),
    "minecraft:behavior.follow_parent": minecraftBehaviorFollowParent == null ? null : minecraftBehaviorFollowParent.toJson(),
    "minecraft:damage_sensor": minecraftDamageSensor == null ? null : new List<dynamic>.from(minecraftDamageSensor.map((x) => x.toJson())),
    "minecraft:target_nearby_sensor": minecraftTargetNearbySensor == null ? null : minecraftTargetNearbySensor.toJson(),
    "minecraft:interact": minecraftInteract,
    "minecraft:behavior.swell": minecraftBehaviorSwell == null ? null : minecraftBehaviorSwell.toJson(),
    "minecraft:behavior.avoid_mob_type": minecraftBehaviorAvoidMobType == null ? null : minecraftBehaviorAvoidMobType.toJson(),
    "minecraft:navigation.generic": minecraftNavigationGeneric == null ? null : minecraftNavigationGeneric.toJson(),
    "minecraft:underwater_movement": minecraftUnderwaterMovement == null ? null : minecraftUnderwaterMovement.toJson(),
    "minecraft:behavior.random_swim": minecraftBehaviorRandomSwim == null ? null : minecraftBehaviorRandomSwim.toJson(),
    "minecraft:behavior.random_breach": minecraftBehaviorRandomBreach == null ? null : minecraftBehaviorRandomBreach.toJson(),
    "minecraft:behavior.find_underwater_treasure": minecraftBehaviorFindUnderwaterTreasure == null ? null : minecraftBehaviorFindUnderwaterTreasure.toJson(),
    "minecraft:behavior.breathe_air": minecraftBehaviorBreatheAir == null ? null : minecraftBehaviorBreatheAir.toJson(),
    "minecraft:behavior.move_to_water": minecraftBehaviorMoveToWater == null ? null : minecraftBehaviorMoveToWater.toJson(),
    "minecraft:on_target_acquired": minecraftOnTargetAcquired == null ? null : minecraftOnTargetAcquired.toJson(),
    "minecraft:on_target_escape": minecraftOnTargetEscape == null ? null : minecraftOnTargetEscape.toJson(),
    "minecraft:physics": minecraftPhysics == null ? null : minecraftPhysics.toJson(),
    "minecraft:horse.jump_strength": minecraftHorseJumpStrength == null ? null : minecraftHorseJumpStrength.toJson(),
    "minecraft:healable": minecraftHealable == null ? null : minecraftHealable.toJson(),
    "minecraft:movement.generic": minecraftMovementGeneric == null ? null : minecraftMovementGeneric.toJson(),
    "minecraft:burns_in_daylight": minecraftBurnsInDaylight == null ? null : minecraftBurnsInDaylight.toJson(),
    "minecraft:behavior.break_door": minecraftBehaviorBreakDoor == null ? null : minecraftBehaviorBreakDoor.toJson(),
    "minecraft:behavior.flee_sun": minecraftBehaviorFleeSun == null ? null : minecraftBehaviorFleeSun.toJson(),
    "minecraft:behavior.stomp_turtle_egg": minecraftBehaviorStompTurtleEgg == null ? null : minecraftBehaviorStompTurtleEgg.toJson(),
    "minecraft:behavior.move_towards_restriction": minecraftBehaviorMoveTowardsRestriction == null ? null : minecraftBehaviorMoveTowardsRestriction.toJson(),
    "minecraft:navigation.swim": minecraftNavigationSwim == null ? null : minecraftNavigationSwim.toJson(),
    "minecraft:movement.sway": minecraftMovementSway == null ? null : minecraftMovementSway.toJson(),
    "minecraft:behavior.guardian_attack": minecraftBehaviorGuardianAttack == null ? null : minecraftBehaviorGuardianAttack.toJson(),
    "minecraft:knockback_resistance": minecraftKnockbackResistance == null ? null : minecraftKnockbackResistance.toJson(),
    "minecraft:flying_speed": minecraftFlyingSpeed == null ? null : minecraftFlyingSpeed.toJson(),
    "minecraft:on_start_landing": minecraftOnStartLanding == null ? null : minecraftOnStartLanding.toJson(),
    "minecraft:on_start_takeoff": minecraftOnStartTakeoff == null ? null : minecraftOnStartTakeoff.toJson(),
    "minecraft:on_death": minecraftOnDeath == null ? null : minecraftOnDeath.toJson(),
    "minecraft:teleport": minecraftTeleport == null ? null : minecraftTeleport.toJson(),
    "minecraft:lookat": minecraftLookat == null ? null : minecraftLookat.toJson(),
    "minecraft:behavior.enderman_leave_block": minecraftBehaviorEndermanLeaveBlock == null ? null : minecraftBehaviorEndermanLeaveBlock.toJson(),
    "minecraft:behavior.enderman_take_block": minecraftBehaviorEndermanTakeBlock == null ? null : minecraftBehaviorEndermanTakeBlock.toJson(),
    "minecraft:behavior.summon_entity": minecraftBehaviorSummonEntity == null ? null : minecraftBehaviorSummonEntity.toJson(),
    "minecraft:behavior.send_event": minecraftBehaviorSendEvent == null ? null : minecraftBehaviorSendEvent.toJson(),
    "minecraft:behavior.look_at_entity": minecraftBehaviorLookAtEntity == null ? null : minecraftBehaviorLookAtEntity.toJson(),
    "minecraft:scale": minecraftScale == null ? null : minecraftScale.toJson(),
    "minecraft:behavior.swim_idle": minecraftBehaviorSwimIdle == null ? null : minecraftBehaviorSwimIdle.toJson(),
    "minecraft:behavior.swim_wander": minecraftBehaviorSwimWander == null ? null : minecraftBehaviorSwimWander.toJson(),
    "minecraft:navigation.float": minecraftNavigationFloat == null ? null : minecraftNavigationFloat.toJson(),
    "minecraft:behavior.float_wander": minecraftBehaviorFloatWander == null ? null : minecraftBehaviorFloatWander.toJson(),
    "minecraft:equippable": minecraftEquippable == null ? null : minecraftEquippable.toJson(),
    "minecraft:equipment": minecraftEquipment == null ? null : minecraftEquipment.toJson(),
    "minecraft:variant": minecraftVariant == null ? null : minecraftVariant.toJson(),
    "minecraft:attack_damage": minecraftAttackDamage == null ? null : minecraftAttackDamage.toJson(),
    "minecraft:behavior.move_towards_target": minecraftBehaviorMoveTowardsTarget == null ? null : minecraftBehaviorMoveTowardsTarget.toJson(),
    "minecraft:behavior.move_through_village": minecraftBehaviorMoveThroughVillage == null ? null : minecraftBehaviorMoveThroughVillage.toJson(),
    "minecraft:behavior.offer_flower": minecraftBehaviorOfferFlower == null ? null : minecraftBehaviorOfferFlower.toJson(),
    "minecraft:behavior.run_around_like_crazy": minecraftBehaviorRunAroundLikeCrazy == null ? null : minecraftBehaviorRunAroundLikeCrazy.toJson(),
    "minecraft:behavior.follow_caravan": minecraftBehaviorFollowCaravan == null ? null : minecraftBehaviorFollowCaravan.toJson(),
    "minecraft:behavior.slime_float": minecraftBehaviorSlimeFloat == null ? null : minecraftBehaviorSlimeFloat.toJson(),
    "minecraft:behavior.slime_attack": minecraftBehaviorSlimeAttack == null ? null : minecraftBehaviorSlimeAttack.toJson(),
    "minecraft:behavior.slime_random_direction": minecraftBehaviorSlimeRandomDirection == null ? null : minecraftBehaviorSlimeRandomDirection.toJson(),
    "minecraft:behavior.slime_keep_on_jumping": minecraftBehaviorSlimeKeepOnJumping == null ? null : minecraftBehaviorSlimeKeepOnJumping.toJson(),
    "minecraft:behavior.ocelot_sit_on_block": minecraftBehaviorOcelotSitOnBlock == null ? null : minecraftBehaviorOcelotSitOnBlock.toJson(),
    "minecraft:behavior.leap_at_target": minecraftBehaviorLeapAtTarget == null ? null : minecraftBehaviorLeapAtTarget.toJson(),
    "minecraft:behavior.ocelotattack": minecraftBehaviorOcelotattack == null ? null : minecraftBehaviorOcelotattack.toJson(),
    "minecraft:navigation.fly": minecraftNavigationFly == null ? null : minecraftNavigationFly.toJson(),
    "minecraft:movement.fly": minecraftMovementFly == null ? null : minecraftMovementFly.toJson(),
    "minecraft:movement.glide": minecraftMovementGlide == null ? null : minecraftMovementGlide.toJson(),
    "minecraft:behavior.swoop_attack": minecraftBehaviorSwoopAttack == null ? null : minecraftBehaviorSwoopAttack.toJson(),
    "minecraft:behavior.circle_around_anchor": minecraftBehaviorCircleAroundAnchor == null ? null : minecraftBehaviorCircleAroundAnchor.toJson(),
    "minecraft:player.saturation": minecraftPlayerSaturation == null ? null : minecraftPlayerSaturation.toJson(),
    "minecraft:player.exhaustion": minecraftPlayerExhaustion == null ? null : minecraftPlayerExhaustion.toJson(),
    "minecraft:player.level": minecraftPlayerLevel == null ? null : minecraftPlayerLevel.toJson(),
    "minecraft:player.experience": minecraftPlayerExperience == null ? null : minecraftPlayerExperience.toJson(),
    "minecraft:behavior.rabbit_panic": minecraftBehaviorRabbitPanic == null ? null : minecraftBehaviorRabbitPanic.toJson(),
    "minecraft:behavior.raid_garden": minecraftBehaviorRaidGarden == null ? null : minecraftBehaviorRaidGarden.toJson(),
    "minecraft:behavior.follow_flock": minecraftBehaviorFollowFlock == null ? null : minecraftBehaviorFollowFlock.toJson(),
    "minecraft:behavior.eat_block": minecraftBehaviorEatBlock == null ? null : minecraftBehaviorEatBlock.toJson(),
    "minecraft:peek": minecraftPeek == null ? null : minecraftPeek.toJson(),
    "minecraft:behavior.silverfish_merge_with_stone": minecraftBehaviorSilverfishMergeWithStone == null ? null : minecraftBehaviorSilverfishMergeWithStone.toJson(),
    "minecraft:is_tamed": minecraftIsTamed == null ? null : minecraftIsTamed.toJson(),
    "minecraft:behavior.player_ride_tamed": minecraftBehaviorPlayerRideTamed == null ? null : minecraftBehaviorPlayerRideTamed.toJson(),
    "minecraft:behavior.restrict_sun": minecraftBehaviorRestrictSun == null ? null : minecraftBehaviorRestrictSun.toJson(),
    "minecraft:behavior.squid_move_away_from_ground": minecraftBehaviorSquidMoveAwayFromGround == null ? null : minecraftBehaviorSquidMoveAwayFromGround.toJson(),
    "minecraft:behavior.squid_flee": minecraftBehaviorSquidFlee == null ? null : minecraftBehaviorSquidFlee.toJson(),
    "minecraft:behavior.squid_idle": minecraftBehaviorSquidIdle == null ? null : minecraftBehaviorSquidIdle.toJson(),
    "minecraft:behavior.squid_dive": minecraftBehaviorSquidDive == null ? null : minecraftBehaviorSquidDive.toJson(),
    "minecraft:behavior.squid_out_of_water": minecraftBehaviorSquidOutOfWater == null ? null : minecraftBehaviorSquidOutOfWater.toJson(),
    "minecraft:movement.amphibious": minecraftMovementAmphibious == null ? null : minecraftMovementAmphibious.toJson(),
    "minecraft:home": minecraftHome == null ? null : minecraftHome.toJson(),
    "minecraft:behavior.charge_attack": minecraftBehaviorChargeAttack == null ? null : minecraftBehaviorChargeAttack.toJson(),
    "minecraft:inventory": minecraftInventory == null ? null : minecraftInventory.toJson(),
    "minecraft:behavior:panic": componentsMinecraftBehaviorPanic == null ? null : componentsMinecraftBehaviorPanic.toJson(),
    "minecraft:behavior:avoid_mob_type": componentsMinecraftBehaviorAvoidMobType == null ? null : componentsMinecraftBehaviorAvoidMobType.toJson(),
    "minecraft:behavior.move_indoors": minecraftBehaviorMoveIndoors == null ? null : minecraftBehaviorMoveIndoors.toJson(),
    "minecraft:behavior.restrict_open_door": minecraftBehaviorRestrictOpenDoor == null ? null : minecraftBehaviorRestrictOpenDoor.toJson(),
    "minecraft:behavior.open_door": minecraftBehaviorOpenDoor == null ? null : minecraftBehaviorOpenDoor.toJson(),
    "minecraft:behavior.pickup_items": minecraftBehaviorPickupItems == null ? null : minecraftBehaviorPickupItems.toJson(),
    "minecraft:behavior.wither_random_attack_pos_goal": minecraftBehaviorWitherRandomAttackPosGoal == null ? null : minecraftBehaviorWitherRandomAttackPosGoal.toJson(),
    "minecraft:behavior.wither_target_highest_damage": minecraftBehaviorWitherTargetHighestDamage == null ? null : minecraftBehaviorWitherTargetHighestDamage.toJson(),
    "minecraft:behavior.look_at_target": minecraftBehaviorLookAtTarget == null ? null : minecraftBehaviorLookAtTarget.toJson(),
    "minecraft:on_calm": minecraftOnCalm == null ? null : minecraftOnCalm.toJson(),
    "minecraft:behavior.stay_while_sitting": minecraftBehaviorStayWhileSitting == null ? null : minecraftBehaviorStayWhileSitting.toJson(),
    "minecraft:behavior.beg": minecraftBehaviorBeg == null ? null : minecraftBehaviorBeg.toJson(),
    "minecraft:player_ride_tamed": minecraftPlayerRideTamed == null ? null : minecraftPlayerRideTamed.toJson(),
    "minecraft:monster": minecraftMonster == null ? null : minecraftMonster.toJson(),
    "minecraft:zombie.spawn_reinforcements": minecraftZombieSpawnReinforcements == null ? null : minecraftZombieSpawnReinforcements.toJson(),
  };
}

class MinecraftBehaviorAvoidMobType {
  int priority;
  List<String> avoidTypes;
  int maxDist;
  double walkSpeedMultiplier;
  double sprintSpeedMultiplier;

  MinecraftBehaviorAvoidMobType({
    this.priority,
    this.avoidTypes,
    this.maxDist,
    this.walkSpeedMultiplier,
    this.sprintSpeedMultiplier,
  });

  factory MinecraftBehaviorAvoidMobType.fromJson(Map<String, dynamic> json) => new MinecraftBehaviorAvoidMobType(
    priority: json["priority"],
    avoidTypes: new List<String>.from(json["avoid_types"].map((x) => x)),
    maxDist: json["max_dist"],
    walkSpeedMultiplier: json["walk_speed_multiplier"].toDouble(),
    sprintSpeedMultiplier: json["sprint_speed_multiplier"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "avoid_types": new List<dynamic>.from(avoidTypes.map((x) => x)),
    "max_dist": maxDist,
    "walk_speed_multiplier": walkSpeedMultiplier,
    "sprint_speed_multiplier": sprintSpeedMultiplier,
  };
}

class ComponentsMinecraftBehaviorAvoidMobType {
  int priority;
  List<StickyEntityType> entityTypes;
  double probabilityPerStrength;

  ComponentsMinecraftBehaviorAvoidMobType({
    this.priority,
    this.entityTypes,
    this.probabilityPerStrength,
  });

  factory ComponentsMinecraftBehaviorAvoidMobType.fromJson(Map<String, dynamic> json) => new ComponentsMinecraftBehaviorAvoidMobType(
    priority: json["priority"],
    entityTypes: new List<StickyEntityType>.from(json["entity_types"].map((x) => StickyEntityType.fromJson(x))),
    probabilityPerStrength: json["probability_per_strength"] == null ? null : json["probability_per_strength"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "entity_types": new List<dynamic>.from(entityTypes.map((x) => x.toJson())),
    "probability_per_strength": probabilityPerStrength == null ? null : probabilityPerStrength,
  };
}

class StickyEntityType {
  AnyOfElement filters;
  int maxDist;
  double walkSpeedMultiplier;
  double sprintSpeedMultiplier;
  int maxFlee;

  StickyEntityType({
    this.filters,
    this.maxDist,
    this.walkSpeedMultiplier,
    this.sprintSpeedMultiplier,
    this.maxFlee,
  });

  factory StickyEntityType.fromJson(Map<String, dynamic> json) => new StickyEntityType(
    filters: AnyOfElement.fromJson(json["filters"]),
    maxDist: json["max_dist"],
    walkSpeedMultiplier: json["walk_speed_multiplier"].toDouble(),
    sprintSpeedMultiplier: json["sprint_speed_multiplier"].toDouble(),
    maxFlee: json["max_flee"] == null ? null : json["max_flee"],
  );

  Map<String, dynamic> toJson() => {
    "filters": filters.toJson(),
    "max_dist": maxDist,
    "walk_speed_multiplier": walkSpeedMultiplier,
    "sprint_speed_multiplier": sprintSpeedMultiplier,
    "max_flee": maxFlee == null ? null : maxFlee,
  };
}

class AnyOfElement {
  List<String> otherWithFamilies;
  List<FiltersAnyOf> anyOf;
  String test;
  String subject;
  String value;

  AnyOfElement({
    this.otherWithFamilies,
    this.anyOf,
    this.test,
    this.subject,
    this.value,
  });

  factory AnyOfElement.fromJson(Map<String, dynamic> json) => new AnyOfElement(
    otherWithFamilies: json["other_with_families"] == null ? null : new List<String>.from(json["other_with_families"].map((x) => x)),
    anyOf: json["any_of"] == null ? null : new List<FiltersAnyOf>.from(json["any_of"].map((x) => FiltersAnyOf.fromJson(x))),
    test: json["test"] == null ? null : json["test"],
    subject: json["subject"] == null ? null : json["subject"],
    value: json["value"] == null ? null : json["value"],
  );

  Map<String, dynamic> toJson() => {
    "other_with_families": otherWithFamilies == null ? null : new List<dynamic>.from(otherWithFamilies.map((x) => x)),
    "any_of": anyOf == null ? null : new List<dynamic>.from(anyOf.map((x) => x.toJson())),
    "test": test == null ? null : test,
    "subject": subject == null ? null : subject,
    "value": value == null ? null : value,
  };
}

class FiltersAnyOf {
  String test;
  String subject;
  String value;

  FiltersAnyOf({
    this.test,
    this.subject,
    this.value,
  });

  factory FiltersAnyOf.fromJson(Map<String, dynamic> json) => new FiltersAnyOf(
    test: json["test"],
    subject: json["subject"],
    value: json["value"],
  );

  Map<String, dynamic> toJson() => {
    "test": test,
    "subject": subject,
    "value": value,
  };
}

class MinecraftBehaviorBeg {
  int priority;
  int lookDistance;
  List<int> lookTime;
  List<String> items;

  MinecraftBehaviorBeg({
    this.priority,
    this.lookDistance,
    this.lookTime,
    this.items,
  });

  factory MinecraftBehaviorBeg.fromJson(Map<String, dynamic> json) => new MinecraftBehaviorBeg(
    priority: json["priority"],
    lookDistance: json["look_distance"],
    lookTime: new List<int>.from(json["look_time"].map((x) => x)),
    items: new List<String>.from(json["items"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "look_distance": lookDistance,
    "look_time": new List<dynamic>.from(lookTime.map((x) => x)),
    "items": new List<dynamic>.from(items.map((x) => x)),
  };
}

class MinecraftBehaviorCircleAroundAnchor {
  int priority;
  List<int> radiusRange;
  int radiusChangeChance;
  List<int> heightAboveTargetRange;
  List<int> heightOffsetRange;
  int heightChangeChance;
  int goalRadius;

  MinecraftBehaviorCircleAroundAnchor({
    this.priority,
    this.radiusRange,
    this.radiusChangeChance,
    this.heightAboveTargetRange,
    this.heightOffsetRange,
    this.heightChangeChance,
    this.goalRadius,
  });

  factory MinecraftBehaviorCircleAroundAnchor.fromJson(Map<String, dynamic> json) => new MinecraftBehaviorCircleAroundAnchor(
    priority: json["priority"],
    radiusRange: new List<int>.from(json["radius_range"].map((x) => x)),
    radiusChangeChance: json["radius_change_chance"],
    heightAboveTargetRange: new List<int>.from(json["height_above_target_range"].map((x) => x)),
    heightOffsetRange: new List<int>.from(json["height_offset_range"].map((x) => x)),
    heightChangeChance: json["height_change_chance"],
    goalRadius: json["goal_radius"],
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "radius_range": new List<dynamic>.from(radiusRange.map((x) => x)),
    "radius_change_chance": radiusChangeChance,
    "height_above_target_range": new List<dynamic>.from(heightAboveTargetRange.map((x) => x)),
    "height_offset_range": new List<dynamic>.from(heightOffsetRange.map((x) => x)),
    "height_change_chance": heightChangeChance,
    "goal_radius": goalRadius,
  };
}

class MinecraftBehaviorEatBlock {
  int priority;
  NordSugarGliders onEat;

  MinecraftBehaviorEatBlock({
    this.priority,
    this.onEat,
  });

  factory MinecraftBehaviorEatBlock.fromJson(Map<String, dynamic> json) => new MinecraftBehaviorEatBlock(
    priority: json["priority"],
    onEat: NordSugarGliders.fromJson(json["on_eat"]),
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "on_eat": onEat.toJson(),
  };
}

class MinecraftBehaviorFollowCaravan {
  int priority;
  double speedMultiplier;
  int entityCount;
  EntityTypes entityTypes;

  MinecraftBehaviorFollowCaravan({
    this.priority,
    this.speedMultiplier,
    this.entityCount,
    this.entityTypes,
  });

  factory MinecraftBehaviorFollowCaravan.fromJson(Map<String, dynamic> json) => new MinecraftBehaviorFollowCaravan(
    priority: json["priority"],
    speedMultiplier: json["speed_multiplier"].toDouble(),
    entityCount: json["entity_count"],
    entityTypes: EntityTypes.fromJson(json["entity_types"]),
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "speed_multiplier": speedMultiplier,
    "entity_count": entityCount,
    "entity_types": entityTypes.toJson(),
  };
}

class ComponentsMinecraftBehaviorHurtByTarget {
  int priority;
  List<MinecraftBehaviorHurtByTargetEntityType> entityTypes;
  bool hurtOwner;
  bool alertSameType;

  ComponentsMinecraftBehaviorHurtByTarget({
    this.priority,
    this.entityTypes,
    this.hurtOwner,
    this.alertSameType,
  });

  factory ComponentsMinecraftBehaviorHurtByTarget.fromJson(Map<String, dynamic> json) => new ComponentsMinecraftBehaviorHurtByTarget(
    priority: json["priority"],
    entityTypes: json["entity_types"] == null ? null : new List<MinecraftBehaviorHurtByTargetEntityType>.from(json["entity_types"].map((x) => MinecraftBehaviorHurtByTargetEntityType.fromJson(x))),
    hurtOwner: json["hurt_owner"] == null ? null : json["hurt_owner"],
    alertSameType: json["alert_same_type"] == null ? null : json["alert_same_type"],
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "entity_types": entityTypes == null ? null : new List<dynamic>.from(entityTypes.map((x) => x.toJson())),
    "hurt_owner": hurtOwner == null ? null : hurtOwner,
    "alert_same_type": alertSameType == null ? null : alertSameType,
  };
}

class MinecraftBehaviorHurtByTargetEntityType {
  CunningFilters filters;

  MinecraftBehaviorHurtByTargetEntityType({
    this.filters,
  });

  factory MinecraftBehaviorHurtByTargetEntityType.fromJson(Map<String, dynamic> json) => new MinecraftBehaviorHurtByTargetEntityType(
    filters: CunningFilters.fromJson(json["filters"]),
  );

  Map<String, dynamic> toJson() => {
    "filters": filters.toJson(),
  };
}

class ComponentsMinecraftBehaviorLeapAtTarget {
  int priority;
  double targetDist;

  ComponentsMinecraftBehaviorLeapAtTarget({
    this.priority,
    this.targetDist,
  });

  factory ComponentsMinecraftBehaviorLeapAtTarget.fromJson(Map<String, dynamic> json) => new ComponentsMinecraftBehaviorLeapAtTarget(
    priority: json["priority"],
    targetDist: json["target_dist"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "target_dist": targetDist,
  };
}

class MinecraftBehaviorLookAt {
  int priority;
  int lookDistance;
  AnyOfElement filters;
  double probability;
  int targetDistance;

  MinecraftBehaviorLookAt({
    this.priority,
    this.lookDistance,
    this.filters,
    this.probability,
    this.targetDistance,
  });

  factory MinecraftBehaviorLookAt.fromJson(Map<String, dynamic> json) => new MinecraftBehaviorLookAt(
    priority: json["priority"],
    lookDistance: json["look_distance"] == null ? null : json["look_distance"],
    filters: json["filters"] == null ? null : AnyOfElement.fromJson(json["filters"]),
    probability: json["probability"] == null ? null : json["probability"].toDouble(),
    targetDistance: json["target_distance"] == null ? null : json["target_distance"],
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "look_distance": lookDistance == null ? null : lookDistance,
    "filters": filters == null ? null : filters.toJson(),
    "probability": probability == null ? null : probability,
    "target_distance": targetDistance == null ? null : targetDistance,
  };
}

class ComponentsMinecraftBehaviorMeleeAttack {
  int priority;
  int maxDist;
  double speedMultiplier;
  int randomStopInterval;
  bool trackTarget;
  double targetDist;
  int reachMultiplier;

  ComponentsMinecraftBehaviorMeleeAttack({
    this.priority,
    this.maxDist,
    this.speedMultiplier,
    this.randomStopInterval,
    this.trackTarget,
    this.targetDist,
    this.reachMultiplier,
  });

  factory ComponentsMinecraftBehaviorMeleeAttack.fromJson(Map<String, dynamic> json) => new ComponentsMinecraftBehaviorMeleeAttack(
    priority: json["priority"],
    maxDist: json["max_dist"] == null ? null : json["max_dist"],
    speedMultiplier: json["speed_multiplier"] == null ? null : json["speed_multiplier"].toDouble(),
    randomStopInterval: json["random_stop_interval"] == null ? null : json["random_stop_interval"],
    trackTarget: json["track_target"],
    targetDist: json["target_dist"] == null ? null : json["target_dist"].toDouble(),
    reachMultiplier: json["reach_multiplier"] == null ? null : json["reach_multiplier"],
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "max_dist": maxDist == null ? null : maxDist,
    "speed_multiplier": speedMultiplier == null ? null : speedMultiplier,
    "random_stop_interval": randomStopInterval == null ? null : randomStopInterval,
    "track_target": trackTarget,
    "target_dist": targetDist == null ? null : targetDist,
    "reach_multiplier": reachMultiplier == null ? null : reachMultiplier,
  };
}

class MinecraftBehaviorMoveThroughVillage {
  int priority;
  double speedMultiplier;
  bool onlyAtNight;

  MinecraftBehaviorMoveThroughVillage({
    this.priority,
    this.speedMultiplier,
    this.onlyAtNight,
  });

  factory MinecraftBehaviorMoveThroughVillage.fromJson(Map<String, dynamic> json) => new MinecraftBehaviorMoveThroughVillage(
    priority: json["priority"],
    speedMultiplier: json["speed_multiplier"].toDouble(),
    onlyAtNight: json["only_at_night"],
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "speed_multiplier": speedMultiplier,
    "only_at_night": onlyAtNight,
  };
}

class MinecraftBehaviorMoveTowardsRestriction {
  int priority;
  double speedMultiplier;
  List<String> controlFlags;

  MinecraftBehaviorMoveTowardsRestriction({
    this.priority,
    this.speedMultiplier,
    this.controlFlags,
  });

  factory MinecraftBehaviorMoveTowardsRestriction.fromJson(Map<String, dynamic> json) => new MinecraftBehaviorMoveTowardsRestriction(
    priority: json["priority"],
    speedMultiplier: json["speed_multiplier"] == null ? null : json["speed_multiplier"].toDouble(),
    controlFlags: json["control_flags"] == null ? null : new List<String>.from(json["control_flags"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "speed_multiplier": speedMultiplier == null ? null : speedMultiplier,
    "control_flags": controlFlags == null ? null : new List<dynamic>.from(controlFlags.map((x) => x)),
  };
}

class MinecraftBehaviorMoveTowardsTarget {
  int priority;
  double speedMultiplier;
  int withinRadius;

  MinecraftBehaviorMoveTowardsTarget({
    this.priority,
    this.speedMultiplier,
    this.withinRadius,
  });

  factory MinecraftBehaviorMoveTowardsTarget.fromJson(Map<String, dynamic> json) => new MinecraftBehaviorMoveTowardsTarget(
    priority: json["priority"],
    speedMultiplier: json["speed_multiplier"].toDouble(),
    withinRadius: json["within_radius"],
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "speed_multiplier": speedMultiplier,
    "within_radius": withinRadius,
  };
}

class ComponentsMinecraftBehaviorNearestAttackableTarget {
  int priority;
  List<IndigoEntityType> entityTypes;
  bool mustSee;
  double mustSeeForgetDuration;
  int withinRadius;
  bool reselectTargets;
  double persistTime;
  int attackIntervalMin;
  int attackInterval;
  bool mustReach;
  int scanInterval;
  int targetSearchHeight;

  ComponentsMinecraftBehaviorNearestAttackableTarget({
    this.priority,
    this.entityTypes,
    this.mustSee,
    this.mustSeeForgetDuration,
    this.withinRadius,
    this.reselectTargets,
    this.persistTime,
    this.attackIntervalMin,
    this.attackInterval,
    this.mustReach,
    this.scanInterval,
    this.targetSearchHeight,
  });

  factory ComponentsMinecraftBehaviorNearestAttackableTarget.fromJson(Map<String, dynamic> json) => new ComponentsMinecraftBehaviorNearestAttackableTarget(
    priority: json["priority"],
    entityTypes: new List<IndigoEntityType>.from(json["entity_types"].map((x) => IndigoEntityType.fromJson(x))),
    mustSee: json["must_see"] == null ? null : json["must_see"],
    mustSeeForgetDuration: json["must_see_forget_duration"] == null ? null : json["must_see_forget_duration"].toDouble(),
    withinRadius: json["within_radius"] == null ? null : json["within_radius"],
    reselectTargets: json["reselect_targets"] == null ? null : json["reselect_targets"],
    persistTime: json["persist_time"] == null ? null : json["persist_time"].toDouble(),
    attackIntervalMin: json["attack_interval_min"] == null ? null : json["attack_interval_min"],
    attackInterval: json["attack_interval"] == null ? null : json["attack_interval"],
    mustReach: json["must_reach"] == null ? null : json["must_reach"],
    scanInterval: json["scan_interval"] == null ? null : json["scan_interval"],
    targetSearchHeight: json["target_search_height"] == null ? null : json["target_search_height"],
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "entity_types": new List<dynamic>.from(entityTypes.map((x) => x.toJson())),
    "must_see": mustSee == null ? null : mustSee,
    "must_see_forget_duration": mustSeeForgetDuration == null ? null : mustSeeForgetDuration,
    "within_radius": withinRadius == null ? null : withinRadius,
    "reselect_targets": reselectTargets == null ? null : reselectTargets,
    "persist_time": persistTime == null ? null : persistTime,
    "attack_interval_min": attackIntervalMin == null ? null : attackIntervalMin,
    "attack_interval": attackInterval == null ? null : attackInterval,
    "must_reach": mustReach == null ? null : mustReach,
    "scan_interval": scanInterval == null ? null : scanInterval,
    "target_search_height": targetSearchHeight == null ? null : targetSearchHeight,
  };
}

class IndigoEntityType {
  MagentaFilters filters;
  int maxDist;
  int withinDefault;
  int attackInterval;

  IndigoEntityType({
    this.filters,
    this.maxDist,
    this.withinDefault,
    this.attackInterval,
  });

  factory IndigoEntityType.fromJson(Map<String, dynamic> json) => new IndigoEntityType(
    filters: MagentaFilters.fromJson(json["filters"]),
    maxDist: json["max_dist"] == null ? null : json["max_dist"],
    withinDefault: json["within_default"] == null ? null : json["within_default"],
    attackInterval: json["attack_interval"] == null ? null : json["attack_interval"],
  );

  Map<String, dynamic> toJson() => {
    "filters": filters.toJson(),
    "max_dist": maxDist == null ? null : maxDist,
    "within_default": withinDefault == null ? null : withinDefault,
    "attack_interval": attackInterval == null ? null : attackInterval,
  };
}

class MagentaFilters {
  List<String> otherWithFamilies;
  List<AllOf> allOf;
  List<String> otherWithoutFamilies;
  List<String> otherWithoutComponents;
  String test;
  String subject;
  String value;
  List<AnyOfElement> anyOf;
  String filtersOperator;

  MagentaFilters({
    this.otherWithFamilies,
    this.allOf,
    this.otherWithoutFamilies,
    this.otherWithoutComponents,
    this.test,
    this.subject,
    this.value,
    this.anyOf,
    this.filtersOperator,
  });

  factory MagentaFilters.fromJson(Map<String, dynamic> json) => new MagentaFilters(
    otherWithFamilies: json["other_with_families"] == null ? null : new List<String>.from(json["other_with_families"].map((x) => x)),
    allOf: json["all_of"] == null ? null : new List<AllOf>.from(json["all_of"].map((x) => AllOf.fromJson(x))),
    otherWithoutFamilies: json["other_without_families"] == null ? null : new List<String>.from(json["other_without_families"].map((x) => x)),
    otherWithoutComponents: json["other_without_components"] == null ? null : new List<String>.from(json["other_without_components"].map((x) => x)),
    test: json["test"] == null ? null : json["test"],
    subject: json["subject"] == null ? null : json["subject"],
    value: json["value"] == null ? null : json["value"],
    anyOf: json["any_of"] == null ? null : new List<AnyOfElement>.from(json["any_of"].map((x) => AnyOfElement.fromJson(x))),
    filtersOperator: json["operator"] == null ? null : json["operator"],
  );

  Map<String, dynamic> toJson() => {
    "other_with_families": otherWithFamilies == null ? null : new List<dynamic>.from(otherWithFamilies.map((x) => x)),
    "all_of": allOf == null ? null : new List<dynamic>.from(allOf.map((x) => x.toJson())),
    "other_without_families": otherWithoutFamilies == null ? null : new List<dynamic>.from(otherWithoutFamilies.map((x) => x)),
    "other_without_components": otherWithoutComponents == null ? null : new List<dynamic>.from(otherWithoutComponents.map((x) => x)),
    "test": test == null ? null : test,
    "subject": subject == null ? null : subject,
    "value": value == null ? null : value,
    "any_of": anyOf == null ? null : new List<dynamic>.from(anyOf.map((x) => x.toJson())),
    "operator": filtersOperator == null ? null : filtersOperator,
  };
}

class AllOf {
  List<AllOfAnyOf> anyOf;
  String test;
  String subject;
  dynamic value;
  String allOfOperator;

  AllOf({
    this.anyOf,
    this.test,
    this.subject,
    this.value,
    this.allOfOperator,
  });

  factory AllOf.fromJson(Map<String, dynamic> json) => new AllOf(
    anyOf: json["any_of"] == null ? null : new List<AllOfAnyOf>.from(json["any_of"].map((x) => AllOfAnyOf.fromJson(x))),
    test: json["test"] == null ? null : json["test"],
    subject: json["subject"] == null ? null : json["subject"],
    value: json["value"],
    allOfOperator: json["operator"] == null ? null : json["operator"],
  );

  Map<String, dynamic> toJson() => {
    "any_of": anyOf == null ? null : new List<dynamic>.from(anyOf.map((x) => x.toJson())),
    "test": test == null ? null : test,
    "subject": subject == null ? null : subject,
    "value": value,
    "operator": allOfOperator == null ? null : allOfOperator,
  };
}

class AllOfAnyOf {
  String test;
  String subject;
  dynamic value;
  String anyOfOperator;

  AllOfAnyOf({
    this.test,
    this.subject,
    this.value,
    this.anyOfOperator,
  });

  factory AllOfAnyOf.fromJson(Map<String, dynamic> json) => new AllOfAnyOf(
    test: json["test"],
    subject: json["subject"],
    value: json["value"],
    anyOfOperator: json["operator"] == null ? null : json["operator"],
  );

  Map<String, dynamic> toJson() => {
    "test": test,
    "subject": subject,
    "value": value,
    "operator": anyOfOperator == null ? null : anyOfOperator,
  };
}

class MinecraftBehaviorOcelotattack {
  int priority;
  double walkSpeedMultiplier;
  double sprintSpeedMultiplier;
  double sneakSpeedMultiplier;

  MinecraftBehaviorOcelotattack({
    this.priority,
    this.walkSpeedMultiplier,
    this.sprintSpeedMultiplier,
    this.sneakSpeedMultiplier,
  });

  factory MinecraftBehaviorOcelotattack.fromJson(Map<String, dynamic> json) => new MinecraftBehaviorOcelotattack(
    priority: json["priority"],
    walkSpeedMultiplier: json["walk_speed_multiplier"].toDouble(),
    sprintSpeedMultiplier: json["sprint_speed_multiplier"].toDouble(),
    sneakSpeedMultiplier: json["sneak_speed_multiplier"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "walk_speed_multiplier": walkSpeedMultiplier,
    "sprint_speed_multiplier": sprintSpeedMultiplier,
    "sneak_speed_multiplier": sneakSpeedMultiplier,
  };
}

class MinecraftBehaviorOpenDoor {
  int priority;
  bool closeDoorAfter;

  MinecraftBehaviorOpenDoor({
    this.priority,
    this.closeDoorAfter,
  });

  factory MinecraftBehaviorOpenDoor.fromJson(Map<String, dynamic> json) => new MinecraftBehaviorOpenDoor(
    priority: json["priority"],
    closeDoorAfter: json["close_door_after"],
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "close_door_after": closeDoorAfter,
  };
}

class MinecraftBehaviorPanic {
  int priority;
  double speedMultiplier;
  bool preferWater;

  MinecraftBehaviorPanic({
    this.priority,
    this.speedMultiplier,
    this.preferWater,
  });

  factory MinecraftBehaviorPanic.fromJson(Map<String, dynamic> json) => new MinecraftBehaviorPanic(
    priority: json["priority"],
    speedMultiplier: json["speed_multiplier"].toDouble(),
    preferWater: json["prefer_water"] == null ? null : json["prefer_water"],
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "speed_multiplier": speedMultiplier,
    "prefer_water": preferWater == null ? null : preferWater,
  };
}

class MinecraftBehaviorPickupItems {
  int priority;
  List<String> items;

  MinecraftBehaviorPickupItems({
    this.priority,
    this.items,
  });

  factory MinecraftBehaviorPickupItems.fromJson(Map<String, dynamic> json) => new MinecraftBehaviorPickupItems(
    priority: json["priority"],
    items: new List<String>.from(json["items"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "items": new List<dynamic>.from(items.map((x) => x)),
  };
}

class MinecraftBehaviorRabbitPanic {
  int priority;
  double speedModifier;

  MinecraftBehaviorRabbitPanic({
    this.priority,
    this.speedModifier,
  });

  factory MinecraftBehaviorRabbitPanic.fromJson(Map<String, dynamic> json) => new MinecraftBehaviorRabbitPanic(
    priority: json["priority"],
    speedModifier: json["speed_modifier"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "speed_modifier": speedModifier,
  };
}

class MinecraftBehaviorRandomBreach {
  int priority;
  int interval;
  int xzDist;
  int cooldownTime;

  MinecraftBehaviorRandomBreach({
    this.priority,
    this.interval,
    this.xzDist,
    this.cooldownTime,
  });

  factory MinecraftBehaviorRandomBreach.fromJson(Map<String, dynamic> json) => new MinecraftBehaviorRandomBreach(
    priority: json["priority"],
    interval: json["interval"],
    xzDist: json["xz_dist"],
    cooldownTime: json["cooldown_time"],
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "interval": interval,
    "xz_dist": xzDist,
    "cooldown_time": cooldownTime,
  };
}

class MinecraftBehaviorRandomS {
  int priority;
  double speedMultiplier;
  double xzDist;
  double speedModifier;
  int yDist;
  int interval;

  MinecraftBehaviorRandomS({
    this.priority,
    this.speedMultiplier,
    this.xzDist,
    this.speedModifier,
    this.yDist,
    this.interval,
  });

  factory MinecraftBehaviorRandomS.fromJson(Map<String, dynamic> json) => new MinecraftBehaviorRandomS(
    priority: json["priority"],
    speedMultiplier: json["speed_multiplier"] == null ? null : json["speed_multiplier"].toDouble(),
    xzDist: json["xz_dist"] == null ? null : json["xz_dist"].toDouble(),
    speedModifier: json["speed_modifier"] == null ? null : json["speed_modifier"].toDouble(),
    yDist: json["y_dist"] == null ? null : json["y_dist"],
    interval: json["interval"] == null ? null : json["interval"],
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "speed_multiplier": speedMultiplier == null ? null : speedMultiplier,
    "xz_dist": xzDist == null ? null : xzDist,
    "speed_modifier": speedModifier == null ? null : speedModifier,
    "y_dist": yDist == null ? null : yDist,
    "interval": interval == null ? null : interval,
  };
}

class ComponentsMinecraftBehaviorRangedAttack {
  int priority;
  int attackIntervalMin;
  int attackIntervalMax;
  int chargeChargedTrigger;
  int chargeShootTrigger;
  int attackRadius;
  int burstShots;
  double burstInterval;
  double speedMultiplier;
  int attackInterval;

  ComponentsMinecraftBehaviorRangedAttack({
    this.priority,
    this.attackIntervalMin,
    this.attackIntervalMax,
    this.chargeChargedTrigger,
    this.chargeShootTrigger,
    this.attackRadius,
    this.burstShots,
    this.burstInterval,
    this.speedMultiplier,
    this.attackInterval,
  });

  factory ComponentsMinecraftBehaviorRangedAttack.fromJson(Map<String, dynamic> json) => new ComponentsMinecraftBehaviorRangedAttack(
    priority: json["priority"] == null ? null : json["priority"],
    attackIntervalMin: json["attack_interval_min"] == null ? null : json["attack_interval_min"],
    attackIntervalMax: json["attack_interval_max"] == null ? null : json["attack_interval_max"],
    chargeChargedTrigger: json["charge_charged_trigger"] == null ? null : json["charge_charged_trigger"],
    chargeShootTrigger: json["charge_shoot_trigger"] == null ? null : json["charge_shoot_trigger"],
    attackRadius: json["attack_radius"],
    burstShots: json["burst_shots"] == null ? null : json["burst_shots"],
    burstInterval: json["burst_interval"] == null ? null : json["burst_interval"].toDouble(),
    speedMultiplier: json["speed_multiplier"] == null ? null : json["speed_multiplier"].toDouble(),
    attackInterval: json["attack_interval"] == null ? null : json["attack_interval"],
  );

  Map<String, dynamic> toJson() => {
    "priority": priority == null ? null : priority,
    "attack_interval_min": attackIntervalMin == null ? null : attackIntervalMin,
    "attack_interval_max": attackIntervalMax == null ? null : attackIntervalMax,
    "charge_charged_trigger": chargeChargedTrigger == null ? null : chargeChargedTrigger,
    "charge_shoot_trigger": chargeShootTrigger == null ? null : chargeShootTrigger,
    "attack_radius": attackRadius,
    "burst_shots": burstShots == null ? null : burstShots,
    "burst_interval": burstInterval == null ? null : burstInterval,
    "speed_multiplier": speedMultiplier == null ? null : speedMultiplier,
    "attack_interval": attackInterval == null ? null : attackInterval,
  };
}

class MinecraftBehaviorSendEvent {
  int priority;
  List<EventChoice> eventChoices;

  MinecraftBehaviorSendEvent({
    this.priority,
    this.eventChoices,
  });

  factory MinecraftBehaviorSendEvent.fromJson(Map<String, dynamic> json) => new MinecraftBehaviorSendEvent(
    priority: json["priority"],
    eventChoices: new List<EventChoice>.from(json["event_choices"].map((x) => EventChoice.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "event_choices": new List<dynamic>.from(eventChoices.map((x) => x.toJson())),
  };
}

class EventChoice {
  int minActivationRange;
  int maxActivationRange;
  int cooldownTime;
  int castDuration;
  String particleColor;
  int weight;
  EventChoiceFilters filters;
  List<EventChoiceSequence> sequence;

  EventChoice({
    this.minActivationRange,
    this.maxActivationRange,
    this.cooldownTime,
    this.castDuration,
    this.particleColor,
    this.weight,
    this.filters,
    this.sequence,
  });

  factory EventChoice.fromJson(Map<String, dynamic> json) => new EventChoice(
    minActivationRange: json["min_activation_range"],
    maxActivationRange: json["max_activation_range"],
    cooldownTime: json["cooldown_time"],
    castDuration: json["cast_duration"],
    particleColor: json["particle_color"],
    weight: json["weight"],
    filters: EventChoiceFilters.fromJson(json["filters"]),
    sequence: new List<EventChoiceSequence>.from(json["sequence"].map((x) => EventChoiceSequence.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "min_activation_range": minActivationRange,
    "max_activation_range": maxActivationRange,
    "cooldown_time": cooldownTime,
    "cast_duration": castDuration,
    "particle_color": particleColor,
    "weight": weight,
    "filters": filters.toJson(),
    "sequence": new List<dynamic>.from(sequence.map((x) => x.toJson())),
  };
}

class EventChoiceFilters {
  List<String> otherWithFamilies;
  int otherWithColor;

  EventChoiceFilters({
    this.otherWithFamilies,
    this.otherWithColor,
  });

  factory EventChoiceFilters.fromJson(Map<String, dynamic> json) => new EventChoiceFilters(
    otherWithFamilies: new List<String>.from(json["other_with_families"].map((x) => x)),
    otherWithColor: json["other_with_color"],
  );

  Map<String, dynamic> toJson() => {
    "other_with_families": new List<dynamic>.from(otherWithFamilies.map((x) => x)),
    "other_with_color": otherWithColor,
  };
}

class EventChoiceSequence {
  int baseDelay;
  String event;

  EventChoiceSequence({
    this.baseDelay,
    this.event,
  });

  factory EventChoiceSequence.fromJson(Map<String, dynamic> json) => new EventChoiceSequence(
    baseDelay: json["base_delay"],
    event: json["event"],
  );

  Map<String, dynamic> toJson() => {
    "base_delay": baseDelay,
    "event": event,
  };
}

class MinecraftBehaviorSummonEntity {
  int priority;
  List<SummonChoice> summonChoices;

  MinecraftBehaviorSummonEntity({
    this.priority,
    this.summonChoices,
  });

  factory MinecraftBehaviorSummonEntity.fromJson(Map<String, dynamic> json) => new MinecraftBehaviorSummonEntity(
    priority: json["priority"],
    summonChoices: new List<SummonChoice>.from(json["summon_choices"].map((x) => SummonChoice.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "summon_choices": new List<dynamic>.from(summonChoices.map((x) => x.toJson())),
  };
}

class SummonChoice {
  int minActivationRange;
  int maxActivationRange;
  int cooldownTime;
  int weight;
  int castDuration;
  String particleColor;
  List<SummonChoiceSequence> sequence;

  SummonChoice({
    this.minActivationRange,
    this.maxActivationRange,
    this.cooldownTime,
    this.weight,
    this.castDuration,
    this.particleColor,
    this.sequence,
  });

  factory SummonChoice.fromJson(Map<String, dynamic> json) => new SummonChoice(
    minActivationRange: json["min_activation_range"] == null ? null : json["min_activation_range"],
    maxActivationRange: json["max_activation_range"] == null ? null : json["max_activation_range"],
    cooldownTime: json["cooldown_time"],
    weight: json["weight"],
    castDuration: json["cast_duration"],
    particleColor: json["particle_color"],
    sequence: new List<SummonChoiceSequence>.from(json["sequence"].map((x) => SummonChoiceSequence.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "min_activation_range": minActivationRange == null ? null : minActivationRange,
    "max_activation_range": maxActivationRange == null ? null : maxActivationRange,
    "cooldown_time": cooldownTime,
    "weight": weight,
    "cast_duration": castDuration,
    "particle_color": particleColor,
    "sequence": new List<dynamic>.from(sequence.map((x) => x.toJson())),
  };
}

class SummonChoiceSequence {
  String shape;
  Target target;
  double baseDelay;
  double delayPerSummon;
  int numEntitiesSpawned;
  String entityType;
  double size;
  double entityLifespan;
  int summonCap;
  int summonCapRadius;

  SummonChoiceSequence({
    this.shape,
    this.target,
    this.baseDelay,
    this.delayPerSummon,
    this.numEntitiesSpawned,
    this.entityType,
    this.size,
    this.entityLifespan,
    this.summonCap,
    this.summonCapRadius,
  });

  factory SummonChoiceSequence.fromJson(Map<String, dynamic> json) => new SummonChoiceSequence(
    shape: json["shape"],
    target: targetValues.map[json["target"]],
    baseDelay: json["base_delay"].toDouble(),
    delayPerSummon: json["delay_per_summon"] == null ? null : json["delay_per_summon"].toDouble(),
    numEntitiesSpawned: json["num_entities_spawned"],
    entityType: json["entity_type"],
    size: json["size"].toDouble(),
    entityLifespan: json["entity_lifespan"] == null ? null : json["entity_lifespan"].toDouble(),
    summonCap: json["summon_cap"] == null ? null : json["summon_cap"],
    summonCapRadius: json["summon_cap_radius"] == null ? null : json["summon_cap_radius"],
  );

  Map<String, dynamic> toJson() => {
    "shape": shape,
    "target": targetValues.reverse[target],
    "base_delay": baseDelay,
    "delay_per_summon": delayPerSummon == null ? null : delayPerSummon,
    "num_entities_spawned": numEntitiesSpawned,
    "entity_type": entityType,
    "size": size,
    "entity_lifespan": entityLifespan == null ? null : entityLifespan,
    "summon_cap": summonCap == null ? null : summonCap,
    "summon_cap_radius": summonCapRadius == null ? null : summonCapRadius,
  };
}

class MinecraftBehaviorSwimWander {
  int priority;
  double speedMultiplier;
  int interval;
  int lookAhead;

  MinecraftBehaviorSwimWander({
    this.priority,
    this.speedMultiplier,
    this.interval,
    this.lookAhead,
  });

  factory MinecraftBehaviorSwimWander.fromJson(Map<String, dynamic> json) => new MinecraftBehaviorSwimWander(
    priority: json["priority"],
    speedMultiplier: json["speed_multiplier"].toDouble(),
    interval: json["interval"],
    lookAhead: json["look_ahead"] == null ? null : json["look_ahead"],
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "speed_multiplier": speedMultiplier,
    "interval": interval,
    "look_ahead": lookAhead == null ? null : lookAhead,
  };
}

class MinecraftBehaviorSwoopAttack {
  int priority;
  List<int> delayRange;

  MinecraftBehaviorSwoopAttack({
    this.priority,
    this.delayRange,
  });

  factory MinecraftBehaviorSwoopAttack.fromJson(Map<String, dynamic> json) => new MinecraftBehaviorSwoopAttack(
    priority: json["priority"],
    delayRange: new List<int>.from(json["delay_range"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "delay_range": new List<dynamic>.from(delayRange.map((x) => x)),
  };
}

class ComponentsMinecraftBehaviorTempt {
  int priority;
  double speedMultiplier;
  List<String> items;
  int withinRadius;
  bool canGetScared;
  int speedModifier;

  ComponentsMinecraftBehaviorTempt({
    this.priority,
    this.speedMultiplier,
    this.items,
    this.withinRadius,
    this.canGetScared,
    this.speedModifier,
  });

  factory ComponentsMinecraftBehaviorTempt.fromJson(Map<String, dynamic> json) => new ComponentsMinecraftBehaviorTempt(
    priority: json["priority"],
    speedMultiplier: json["speed_multiplier"] == null ? null : json["speed_multiplier"].toDouble(),
    items: new List<String>.from(json["items"].map((x) => x)),
    withinRadius: json["within_radius"] == null ? null : json["within_radius"],
    canGetScared: json["can_get_scared"] == null ? null : json["can_get_scared"],
    speedModifier: json["speed_modifier"] == null ? null : json["speed_modifier"],
  );

  Map<String, dynamic> toJson() => {
    "priority": priority,
    "speed_multiplier": speedMultiplier == null ? null : speedMultiplier,
    "items": new List<dynamic>.from(items.map((x) => x)),
    "within_radius": withinRadius == null ? null : withinRadius,
    "can_get_scared": canGetScared == null ? null : canGetScared,
    "speed_modifier": speedModifier == null ? null : speedModifier,
  };
}

class MinecraftBreathable {
  int totalSupply;
  int suffocateTime;
  bool breathesAir;
  bool breathesWater;
  bool generatesBubbles;

  MinecraftBreathable({
    this.totalSupply,
    this.suffocateTime,
    this.breathesAir,
    this.breathesWater,
    this.generatesBubbles,
  });

  factory MinecraftBreathable.fromJson(Map<String, dynamic> json) => new MinecraftBreathable(
    totalSupply: json["totalSupply"] == null ? null : json["totalSupply"],
    suffocateTime: json["suffocateTime"] == null ? null : json["suffocateTime"],
    breathesAir: json["breathesAir"] == null ? null : json["breathesAir"],
    breathesWater: json["breathesWater"] == null ? null : json["breathesWater"],
    generatesBubbles: json["generatesBubbles"] == null ? null : json["generatesBubbles"],
  );

  Map<String, dynamic> toJson() => {
    "totalSupply": totalSupply == null ? null : totalSupply,
    "suffocateTime": suffocateTime == null ? null : suffocateTime,
    "breathesAir": breathesAir == null ? null : breathesAir,
    "breathesWater": breathesWater == null ? null : breathesWater,
    "generatesBubbles": generatesBubbles == null ? null : generatesBubbles,
  };
}

class MinecraftCanFlyClass {
  bool value;

  MinecraftCanFlyClass({
    this.value,
  });

  factory MinecraftCanFlyClass.fromJson(Map<String, dynamic> json) => new MinecraftCanFlyClass(
    value: json["value"] == null ? null : json["value"],
  );

  Map<String, dynamic> toJson() => {
    "value": value == null ? null : value,
  };
}

class ComponentsMinecraftDamageSensor {
  OnDamage onDamage;
  bool dealsDamage;
  String cause;

  ComponentsMinecraftDamageSensor({
    this.onDamage,
    this.dealsDamage,
    this.cause,
  });

  factory ComponentsMinecraftDamageSensor.fromJson(Map<String, dynamic> json) => new ComponentsMinecraftDamageSensor(
    onDamage: OnDamage.fromJson(json["on_damage"]),
    dealsDamage: json["deals_damage"] == null ? null : json["deals_damage"],
    cause: json["cause"] == null ? null : json["cause"],
  );

  Map<String, dynamic> toJson() => {
    "on_damage": onDamage.toJson(),
    "deals_damage": dealsDamage == null ? null : dealsDamage,
    "cause": cause == null ? null : cause,
  };
}

class OnDamage {
  FriskyFilters filters;
  String event;

  OnDamage({
    this.filters,
    this.event,
  });

  factory OnDamage.fromJson(Map<String, dynamic> json) => new OnDamage(
    filters: FriskyFilters.fromJson(json["filters"]),
    event: json["event"],
  );

  Map<String, dynamic> toJson() => {
    "filters": filters.toJson(),
    "event": event,
  };
}

class FriskyFilters {
  List<String> otherWithFamilies;
  String isNotInCaravan;
  bool withDamageFatal;

  FriskyFilters({
    this.otherWithFamilies,
    this.isNotInCaravan,
    this.withDamageFatal,
  });

  factory FriskyFilters.fromJson(Map<String, dynamic> json) => new FriskyFilters(
    otherWithFamilies: json["other_with_families"] == null ? null : new List<String>.from(json["other_with_families"].map((x) => x)),
    isNotInCaravan: json["is_not_in_caravan"] == null ? null : json["is_not_in_caravan"],
    withDamageFatal: json["with_damage_fatal"] == null ? null : json["with_damage_fatal"],
  );

  Map<String, dynamic> toJson() => {
    "other_with_families": otherWithFamilies == null ? null : new List<dynamic>.from(otherWithFamilies.map((x) => x)),
    "is_not_in_caravan": isNotInCaravan == null ? null : isNotInCaravan,
    "with_damage_fatal": withDamageFatal == null ? null : withDamageFatal,
  };
}

class MinecraftHealable {
  List<ItemElement> items;
  bool forceUse;
  AllOfElement filters;

  MinecraftHealable({
    this.items,
    this.forceUse,
    this.filters,
  });

  factory MinecraftHealable.fromJson(Map<String, dynamic> json) => new MinecraftHealable(
    items: new List<ItemElement>.from(json["items"].map((x) => ItemElement.fromJson(x))),
    forceUse: json["force_use"] == null ? null : json["force_use"],
    filters: json["filters"] == null ? null : AllOfElement.fromJson(json["filters"]),
  );

  Map<String, dynamic> toJson() => {
    "items": new List<dynamic>.from(items.map((x) => x.toJson())),
    "force_use": forceUse == null ? null : forceUse,
    "filters": filters == null ? null : filters.toJson(),
  };
}

class ItemElement {
  String item;
  int healAmount;
  List<Effect> effects;

  ItemElement({
    this.item,
    this.healAmount,
    this.effects,
  });

  factory ItemElement.fromJson(Map<String, dynamic> json) => new ItemElement(
    item: json["item"],
    healAmount: json["heal_amount"] == null ? null : json["heal_amount"],
    effects: json["effects"] == null ? null : new List<Effect>.from(json["effects"].map((x) => Effect.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "item": item,
    "heal_amount": healAmount == null ? null : healAmount,
    "effects": effects == null ? null : new List<dynamic>.from(effects.map((x) => x.toJson())),
  };
}

class Effect {
  String name;
  int chance;
  int duration;
  int amplifier;

  Effect({
    this.name,
    this.chance,
    this.duration,
    this.amplifier,
  });

  factory Effect.fromJson(Map<String, dynamic> json) => new Effect(
    name: json["name"],
    chance: json["chance"],
    duration: json["duration"],
    amplifier: json["amplifier"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "chance": chance,
    "duration": duration,
    "amplifier": amplifier,
  };
}

class MinecraftHorseJumpStrength {
  dynamic value;
  double max;

  MinecraftHorseJumpStrength({
    this.value,
    this.max,
  });

  factory MinecraftHorseJumpStrength.fromJson(Map<String, dynamic> json) => new MinecraftHorseJumpStrength(
    value: json["value"],
    max: json["max"] == null ? null : json["max"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "value": value,
    "max": max == null ? null : max,
  };
}

class ValueClass {
  double rangeMin;
  int rangeMax;

  ValueClass({
    this.rangeMin,
    this.rangeMax,
  });

  factory ValueClass.fromJson(Map<String, dynamic> json) => new ValueClass(
    rangeMin: json["range_min"].toDouble(),
    rangeMax: json["range_max"],
  );

  Map<String, dynamic> toJson() => {
    "range_min": rangeMin,
    "range_max": rangeMax,
  };
}

class MinecraftIdentifier {
  String id;

  MinecraftIdentifier({
    this.id,
  });

  factory MinecraftIdentifier.fromJson(Map<String, dynamic> json) => new MinecraftIdentifier(
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
  };
}

class PurpleMinecraftInteract {
  double cooldown;
  dynamic useItem;
  int hurtItem;
  MinecraftEquipment spawnItems;
  String playSounds;
  String interactText;
  IndigoOnInteract onInteract;

  PurpleMinecraftInteract({
    this.cooldown,
    this.useItem,
    this.hurtItem,
    this.spawnItems,
    this.playSounds,
    this.interactText,
    this.onInteract,
  });

  factory PurpleMinecraftInteract.fromJson(Map<String, dynamic> json) => new PurpleMinecraftInteract(
    cooldown: json["cooldown"] == null ? null : json["cooldown"].toDouble(),
    useItem: json["use_item"],
    hurtItem: json["hurt_item"] == null ? null : json["hurt_item"],
    spawnItems: json["spawn_items"] == null ? null : MinecraftEquipment.fromJson(json["spawn_items"]),
    playSounds: json["play_sounds"] == null ? null : json["play_sounds"],
    interactText: json["interact_text"] == null ? null : json["interact_text"],
    onInteract: IndigoOnInteract.fromJson(json["on_interact"]),
  );

  Map<String, dynamic> toJson() => {
    "cooldown": cooldown == null ? null : cooldown,
    "use_item": useItem,
    "hurt_item": hurtItem == null ? null : hurtItem,
    "spawn_items": spawnItems == null ? null : spawnItems.toJson(),
    "play_sounds": playSounds == null ? null : playSounds,
    "interact_text": interactText == null ? null : interactText,
    "on_interact": onInteract.toJson(),
  };
}

class IndigoOnInteract {
  MischievousFilters filters;
  String event;
  Target target;

  IndigoOnInteract({
    this.filters,
    this.event,
    this.target,
  });

  factory IndigoOnInteract.fromJson(Map<String, dynamic> json) => new IndigoOnInteract(
    filters: MischievousFilters.fromJson(json["filters"]),
    event: json["event"],
    target: json["target"] == null ? null : targetValues.map[json["target"]],
  );

  Map<String, dynamic> toJson() => {
    "filters": filters.toJson(),
    "event": event,
    "target": target == null ? null : targetValues.reverse[target],
  };
}

class MischievousFilters {
  List<String> otherWithItem;
  List<OtherWithFamilies> otherWithFamilies;
  List<String> withComponents;
  List<String> withoutComponents;
  bool playerWithInstabuild;

  MischievousFilters({
    this.otherWithItem,
    this.otherWithFamilies,
    this.withComponents,
    this.withoutComponents,
    this.playerWithInstabuild,
  });

  factory MischievousFilters.fromJson(Map<String, dynamic> json) => new MischievousFilters(
    otherWithItem: new List<String>.from(json["other_with_item"].map((x) => x)),
    otherWithFamilies: json["other_with_families"] == null ? null : new List<OtherWithFamilies>.from(json["other_with_families"].map((x) => otherWithFamiliesValues.map[x])),
    withComponents: json["with_components"] == null ? null : new List<String>.from(json["with_components"].map((x) => x)),
    withoutComponents: json["without_components"] == null ? null : new List<String>.from(json["without_components"].map((x) => x)),
    playerWithInstabuild: json["player_with_instabuild"] == null ? null : json["player_with_instabuild"],
  );

  Map<String, dynamic> toJson() => {
    "other_with_item": new List<dynamic>.from(otherWithItem.map((x) => x)),
    "other_with_families": otherWithFamilies == null ? null : new List<dynamic>.from(otherWithFamilies.map((x) => otherWithFamiliesValues.reverse[x])),
    "with_components": withComponents == null ? null : new List<dynamic>.from(withComponents.map((x) => x)),
    "without_components": withoutComponents == null ? null : new List<dynamic>.from(withoutComponents.map((x) => x)),
    "player_with_instabuild": playerWithInstabuild == null ? null : playerWithInstabuild,
  };
}

class FluffyMinecraftInteract {
  IndecentOnInteract onInteract;
  int hurtItem;
  bool swing;
  String playSounds;
  String interactText;

  FluffyMinecraftInteract({
    this.onInteract,
    this.hurtItem,
    this.swing,
    this.playSounds,
    this.interactText,
  });

  factory FluffyMinecraftInteract.fromJson(Map<String, dynamic> json) => new FluffyMinecraftInteract(
    onInteract: IndecentOnInteract.fromJson(json["on_interact"]),
    hurtItem: json["hurt_item"],
    swing: json["swing"],
    playSounds: json["play_sounds"],
    interactText: json["interact_text"],
  );

  Map<String, dynamic> toJson() => {
    "on_interact": onInteract.toJson(),
    "hurt_item": hurtItem,
    "swing": swing,
    "play_sounds": playSounds,
    "interact_text": interactText,
  };
}

class IndecentOnInteract {
  BraggadociousFilters filters;
  String event;
  Target target;

  IndecentOnInteract({
    this.filters,
    this.event,
    this.target,
  });

  factory IndecentOnInteract.fromJson(Map<String, dynamic> json) => new IndecentOnInteract(
    filters: BraggadociousFilters.fromJson(json["filters"]),
    event: json["event"],
    target: targetValues.map[json["target"]],
  );

  Map<String, dynamic> toJson() => {
    "filters": filters.toJson(),
    "event": event,
    "target": targetValues.reverse[target],
  };
}

class BraggadociousFilters {
  List<String> otherWithItem;
  List<OtherWithFamilies> otherWithFamilies;
  String withoutComponents;

  BraggadociousFilters({
    this.otherWithItem,
    this.otherWithFamilies,
    this.withoutComponents,
  });

  factory BraggadociousFilters.fromJson(Map<String, dynamic> json) => new BraggadociousFilters(
    otherWithItem: new List<String>.from(json["other_with_item"].map((x) => x)),
    otherWithFamilies: new List<OtherWithFamilies>.from(json["other_with_families"].map((x) => otherWithFamiliesValues.map[x])),
    withoutComponents: json["without_components"],
  );

  Map<String, dynamic> toJson() => {
    "other_with_item": new List<dynamic>.from(otherWithItem.map((x) => x)),
    "other_with_families": new List<dynamic>.from(otherWithFamilies.map((x) => otherWithFamiliesValues.reverse[x])),
    "without_components": withoutComponents,
  };
}

class ComponentsMinecraftInventory {
  int inventorySize;

  ComponentsMinecraftInventory({
    this.inventorySize,
  });

  factory ComponentsMinecraftInventory.fromJson(Map<String, dynamic> json) => new ComponentsMinecraftInventory(
    inventorySize: json["inventory_size"],
  );

  Map<String, dynamic> toJson() => {
    "inventory_size": inventorySize,
  };
}

class MinecraftJumpStatic {
  double jumpPower;

  MinecraftJumpStatic({
    this.jumpPower,
  });

  factory MinecraftJumpStatic.fromJson(Map<String, dynamic> json) => new MinecraftJumpStatic(
    jumpPower: json["jump_power"] == null ? null : json["jump_power"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "jump_power": jumpPower == null ? null : jumpPower,
  };
}

class MinecraftLookat {
  int searchRadius;
  bool setTarget;
  int lookCooldown;
  MinecraftLookatFilters filters;

  MinecraftLookat({
    this.searchRadius,
    this.setTarget,
    this.lookCooldown,
    this.filters,
  });

  factory MinecraftLookat.fromJson(Map<String, dynamic> json) => new MinecraftLookat(
    searchRadius: json["searchRadius"],
    setTarget: json["setTarget"],
    lookCooldown: json["look_cooldown"],
    filters: MinecraftLookatFilters.fromJson(json["filters"]),
  );

  Map<String, dynamic> toJson() => {
    "searchRadius": searchRadius,
    "setTarget": setTarget,
    "look_cooldown": lookCooldown,
    "filters": filters.toJson(),
  };
}

class MinecraftLookatFilters {
  OtherWithFamilies otherWithFamilies;
  List<String> otherWithoutArmor;

  MinecraftLookatFilters({
    this.otherWithFamilies,
    this.otherWithoutArmor,
  });

  factory MinecraftLookatFilters.fromJson(Map<String, dynamic> json) => new MinecraftLookatFilters(
    otherWithFamilies: otherWithFamiliesValues.map[json["other_with_families"]],
    otherWithoutArmor: new List<String>.from(json["other_without_armor"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "other_with_families": otherWithFamiliesValues.reverse[otherWithFamilies],
    "other_without_armor": new List<dynamic>.from(otherWithoutArmor.map((x) => x)),
  };
}

class MinecraftMovement {
  int maxTurn;

  MinecraftMovement({
    this.maxTurn,
  });

  factory MinecraftMovement.fromJson(Map<String, dynamic> json) => new MinecraftMovement(
    maxTurn: json["max_turn"] == null ? null : json["max_turn"],
  );

  Map<String, dynamic> toJson() => {
    "max_turn": maxTurn == null ? null : maxTurn,
  };
}

class MinecraftMovementGlide {
  double startSpeed;
  double speedWhenTurning;

  MinecraftMovementGlide({
    this.startSpeed,
    this.speedWhenTurning,
  });

  factory MinecraftMovementGlide.fromJson(Map<String, dynamic> json) => new MinecraftMovementGlide(
    startSpeed: json["start_speed"].toDouble(),
    speedWhenTurning: json["speed_when_turning"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "start_speed": startSpeed,
    "speed_when_turning": speedWhenTurning,
  };
}

class MinecraftMovementSway {
  int swayAmplitude;

  MinecraftMovementSway({
    this.swayAmplitude,
  });

  factory MinecraftMovementSway.fromJson(Map<String, dynamic> json) => new MinecraftMovementSway(
    swayAmplitude: json["sway_amplitude"] == null ? null : json["sway_amplitude"],
  );

  Map<String, dynamic> toJson() => {
    "sway_amplitude": swayAmplitude == null ? null : swayAmplitude,
  };
}

class MinecraftNameable {
  bool alwaysShow;
  bool allowNameTagRenaming;
  NordSugarGliders defaultTrigger;
  List<NameAction> nameActions;

  MinecraftNameable({
    this.alwaysShow,
    this.allowNameTagRenaming,
    this.defaultTrigger,
    this.nameActions,
  });

  factory MinecraftNameable.fromJson(Map<String, dynamic> json) => new MinecraftNameable(
    alwaysShow: json["alwaysShow"] == null ? null : json["alwaysShow"],
    allowNameTagRenaming: json["allowNameTagRenaming"] == null ? null : json["allowNameTagRenaming"],
    defaultTrigger: json["default_trigger"] == null ? null : NordSugarGliders.fromJson(json["default_trigger"]),
    nameActions: json["name_actions"] == null ? null : new List<NameAction>.from(json["name_actions"].map((x) => NameAction.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "alwaysShow": alwaysShow == null ? null : alwaysShow,
    "allowNameTagRenaming": allowNameTagRenaming == null ? null : allowNameTagRenaming,
    "default_trigger": defaultTrigger == null ? null : defaultTrigger.toJson(),
    "name_actions": nameActions == null ? null : new List<dynamic>.from(nameActions.map((x) => x.toJson())),
  };
}

class NameAction {
  String nameFilter;
  NordSugarGliders onNamed;

  NameAction({
    this.nameFilter,
    this.onNamed,
  });

  factory NameAction.fromJson(Map<String, dynamic> json) => new NameAction(
    nameFilter: json["name_filter"],
    onNamed: NordSugarGliders.fromJson(json["on_named"]),
  );

  Map<String, dynamic> toJson() => {
    "name_filter": nameFilter,
    "on_named": onNamed.toJson(),
  };
}

class MinecraftNavigation {
  bool canFloat;

  MinecraftNavigation({
    this.canFloat,
  });

  factory MinecraftNavigation.fromJson(Map<String, dynamic> json) => new MinecraftNavigation(
    canFloat: json["can_float"],
  );

  Map<String, dynamic> toJson() => {
    "can_float": canFloat,
  };
}

class MinecraftNavigationFly {
  bool canPathOverWater;

  MinecraftNavigationFly({
    this.canPathOverWater,
  });

  factory MinecraftNavigationFly.fromJson(Map<String, dynamic> json) => new MinecraftNavigationFly(
    canPathOverWater: json["can_path_over_water"],
  );

  Map<String, dynamic> toJson() => {
    "can_path_over_water": canPathOverWater,
  };
}

class ComponentsMinecraftNavigationGeneric {
  bool isAmphibious;
  bool canFloat;
  bool canSwim;
  bool canWalk;
  bool canBreach;
  bool canSink;
  bool canPathOverWater;
  bool avoidSun;
  bool avoidDamageBlocks;

  ComponentsMinecraftNavigationGeneric({
    this.isAmphibious,
    this.canFloat,
    this.canSwim,
    this.canWalk,
    this.canBreach,
    this.canSink,
    this.canPathOverWater,
    this.avoidSun,
    this.avoidDamageBlocks,
  });

  factory ComponentsMinecraftNavigationGeneric.fromJson(Map<String, dynamic> json) => new ComponentsMinecraftNavigationGeneric(
    isAmphibious: json["is_amphibious"],
    canFloat: json["can_float"] == null ? null : json["can_float"],
    canSwim: json["can_swim"],
    canWalk: json["can_walk"],
    canBreach: json["can_breach"] == null ? null : json["can_breach"],
    canSink: json["can_sink"] == null ? null : json["can_sink"],
    canPathOverWater: json["can_path_over_water"] == null ? null : json["can_path_over_water"],
    avoidSun: json["avoid_sun"] == null ? null : json["avoid_sun"],
    avoidDamageBlocks: json["avoid_damage_blocks"] == null ? null : json["avoid_damage_blocks"],
  );

  Map<String, dynamic> toJson() => {
    "is_amphibious": isAmphibious,
    "can_float": canFloat == null ? null : canFloat,
    "can_swim": canSwim,
    "can_walk": canWalk,
    "can_breach": canBreach == null ? null : canBreach,
    "can_sink": canSink == null ? null : canSink,
    "can_path_over_water": canPathOverWater == null ? null : canPathOverWater,
    "avoid_sun": avoidSun == null ? null : avoidSun,
    "avoid_damage_blocks": avoidDamageBlocks == null ? null : avoidDamageBlocks,
  };
}

class MinecraftNavigationWalk {
  bool canFloat;
  bool avoidWater;
  bool canPassDoors;
  bool canOpenDoors;
  bool avoidPortals;

  MinecraftNavigationWalk({
    this.canFloat,
    this.avoidWater,
    this.canPassDoors,
    this.canOpenDoors,
    this.avoidPortals,
  });

  factory MinecraftNavigationWalk.fromJson(Map<String, dynamic> json) => new MinecraftNavigationWalk(
    canFloat: json["can_float"],
    avoidWater: json["avoid_water"] == null ? null : json["avoid_water"],
    canPassDoors: json["can_pass_doors"] == null ? null : json["can_pass_doors"],
    canOpenDoors: json["can_open_doors"] == null ? null : json["can_open_doors"],
    avoidPortals: json["avoid_portals"] == null ? null : json["avoid_portals"],
  );

  Map<String, dynamic> toJson() => {
    "can_float": canFloat,
    "avoid_water": avoidWater == null ? null : avoidWater,
    "can_pass_doors": canPassDoors == null ? null : canPassDoors,
    "can_open_doors": canOpenDoors == null ? null : canOpenDoors,
    "avoid_portals": avoidPortals == null ? null : avoidPortals,
  };
}

class MinecraftOnTarget {
  String event;
  Target target;
  MinecraftOnTargetAcquiredFilters filters;

  MinecraftOnTarget({
    this.event,
    this.target,
    this.filters,
  });

  factory MinecraftOnTarget.fromJson(Map<String, dynamic> json) => new MinecraftOnTarget(
    event: json["event"],
    target: targetValues.map[json["target"]],
    filters: json["filters"] == null ? null : MinecraftOnTargetAcquiredFilters.fromJson(json["filters"]),
  );

  Map<String, dynamic> toJson() => {
    "event": event,
    "target": targetValues.reverse[target],
    "filters": filters == null ? null : filters.toJson(),
  };
}

class MinecraftOnTargetAcquiredFilters {
  List<String> targetWithFamilies;
  List<String> targetWithoutComponents;

  MinecraftOnTargetAcquiredFilters({
    this.targetWithFamilies,
    this.targetWithoutComponents,
  });

  factory MinecraftOnTargetAcquiredFilters.fromJson(Map<String, dynamic> json) => new MinecraftOnTargetAcquiredFilters(
    targetWithFamilies: new List<String>.from(json["target_with_families"].map((x) => x)),
    targetWithoutComponents: new List<String>.from(json["target_without_components"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "target_with_families": new List<dynamic>.from(targetWithFamilies.map((x) => x)),
    "target_without_components": new List<dynamic>.from(targetWithoutComponents.map((x) => x)),
  };
}

class MinecraftPeek {
  OnClose onOpen;
  OnClose onClose;
  OnClose onTargetOpen;

  MinecraftPeek({
    this.onOpen,
    this.onClose,
    this.onTargetOpen,
  });

  factory MinecraftPeek.fromJson(Map<String, dynamic> json) => new MinecraftPeek(
    onOpen: OnClose.fromJson(json["on_open"]),
    onClose: OnClose.fromJson(json["on_close"]),
    onTargetOpen: OnClose.fromJson(json["on_target_open"]),
  );

  Map<String, dynamic> toJson() => {
    "on_open": onOpen.toJson(),
    "on_close": onClose.toJson(),
    "on_target_open": onTargetOpen.toJson(),
  };
}

class MinecraftPhysics {
  bool hasGravity;
  bool hasCollision;

  MinecraftPhysics({
    this.hasGravity,
    this.hasCollision,
  });

  factory MinecraftPhysics.fromJson(Map<String, dynamic> json) => new MinecraftPhysics(
    hasGravity: json["has_gravity"] == null ? null : json["has_gravity"],
    hasCollision: json["has_collision"] == null ? null : json["has_collision"],
  );

  Map<String, dynamic> toJson() => {
    "has_gravity": hasGravity == null ? null : hasGravity,
    "has_collision": hasCollision == null ? null : hasCollision,
  };
}

class ComponentsMinecraftRideable {
  int seatCount;
  List<String> familyTypes;
  dynamic seats;
  int priority;
  String interactText;

  ComponentsMinecraftRideable({
    this.seatCount,
    this.familyTypes,
    this.seats,
    this.priority,
    this.interactText,
  });

  factory ComponentsMinecraftRideable.fromJson(Map<String, dynamic> json) => new ComponentsMinecraftRideable(
    seatCount: json["seat_count"],
    familyTypes: new List<String>.from(json["family_types"].map((x) => x)),
    seats: json["seats"],
    priority: json["priority"] == null ? null : json["priority"],
    interactText: json["interact_text"] == null ? null : json["interact_text"],
  );

  Map<String, dynamic> toJson() => {
    "seat_count": seatCount,
    "family_types": new List<dynamic>.from(familyTypes.map((x) => x)),
    "seats": seats,
    "priority": priority == null ? null : priority,
    "interact_text": interactText == null ? null : interactText,
  };
}

class ComponentsMinecraftShooter {
  String type;
  String def;
  int auxVal;

  ComponentsMinecraftShooter({
    this.type,
    this.def,
    this.auxVal,
  });

  factory ComponentsMinecraftShooter.fromJson(Map<String, dynamic> json) => new ComponentsMinecraftShooter(
    type: json["type"],
    def: json["def"],
    auxVal: json["auxVal"] == null ? null : json["auxVal"],
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "def": def,
    "auxVal": auxVal == null ? null : auxVal,
  };
}

class MinecraftTeleport {
  bool randomTeleports;
  int maxRandomTeleportTime;
  List<int> randomTeleportCube;
  int targetDistance;
  double targetTeleportChance;
  double lightTeleportChance;

  MinecraftTeleport({
    this.randomTeleports,
    this.maxRandomTeleportTime,
    this.randomTeleportCube,
    this.targetDistance,
    this.targetTeleportChance,
    this.lightTeleportChance,
  });

  factory MinecraftTeleport.fromJson(Map<String, dynamic> json) => new MinecraftTeleport(
    randomTeleports: json["randomTeleports"],
    maxRandomTeleportTime: json["maxRandomTeleportTime"],
    randomTeleportCube: new List<int>.from(json["randomTeleportCube"].map((x) => x)),
    targetDistance: json["targetDistance"],
    targetTeleportChance: json["target_teleport_chance"].toDouble(),
    lightTeleportChance: json["lightTeleportChance"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "randomTeleports": randomTeleports,
    "maxRandomTeleportTime": maxRandomTeleportTime,
    "randomTeleportCube": new List<dynamic>.from(randomTeleportCube.map((x) => x)),
    "targetDistance": targetDistance,
    "target_teleport_chance": targetTeleportChance,
    "lightTeleportChance": lightTeleportChance,
  };
}

class Events {
  MinecraftEntitySpawned minecraftEntitySpawned;
  MinecraftBecomeHostile minecraftBecomeHostile;
  RiyadhFlyingFrog minecraftBecomeNeutral;
  MinecraftBecomeAngry minecraftBecomeAngry;
  MinecraftOnCalm minecraftOnCalm;
  KanazawaIvoryBushCoral fromEgg;
  MinecraftEntityBorn minecraftEntityBorn;
  MinecraftAgeableGrowUp minecraftAgeableGrowUp;
  KanazawaIvoryBushCoral minecraftOnLeash;
  MinecraftDonkeyUnsaddled minecraftOnUnleash;
  MinecraftEntityTransformed minecraftEntityTransformed;
  MinecraftStartExploding minecraftStartExploding;
  RiyadhFlyingFrog minecraftStopExploding;
  RiyadhFlyingFrog minecraftBecomeCharged;
  RiyadhFlyingFrog minecraftStopDryingout;
  RiyadhFlyingFrog minecraftStartDryingout;
  KanazawaIvoryBushCoral minecraftDriedOut;
  RiyadhFlyingFrog minecraftNavigationOnLand;
  RiyadhFlyingFrog minecraftNavigationOffLand;
  MinecraftOnTame minecraftOnTame;
  RiyadhFlyingFrog minecraftOnChest;
  KanazawaIvoryBushCoral minecraftDonkeySaddled;
  MinecraftDonkeyUnsaddled minecraftDonkeyUnsaddled;
  KanazawaIvoryBushCoral minecraftAsBaby;
  KanazawaIvoryBushCoral minecraftAsAdult;
  RiyadhFlyingFrog minecraftSwitchToMelee;
  RiyadhFlyingFrog minecraftSwitchToRanged;
  RiyadhFlyingFrog minecraftHasTarget;
  RiyadhFlyingFrog minecraftLostTarget;
  RiyadhFlyingFrog minecraftStartLand;
  RiyadhFlyingFrog minecraftStartFly;
  RiyadhFlyingFrog minecraftStartDeath;
  RiyadhFlyingFrog minecraftTargetTooClose;
  RiyadhFlyingFrog minecraftTargetFarEnough;
  KanazawaIvoryBushCoral minecraftHorseSaddled;
  MinecraftDonkeyUnsaddled minecraftHorseUnsaddled;
  KanazawaIvoryBushCoral minecraftFromPlayer;
  KanazawaIvoryBushCoral minecraftFromVillage;
  KanazawaIvoryBushCoral minecraftJoinCaravan;
  MinecraftDonkeyUnsaddled minecraftLeaveCaravan;
  KanazawaIvoryBushCoral minecraftMadAtWolf;
  BecomeCow becomeCow;
  BecomeCow becomeZombie;
  RiyadhFlyingFrog minecraftOnSaddled;
  RiyadhFlyingFrog minecraftOnAnger;
  RiyadhFlyingFrog minecraftBabyOnCalm;
  RiyadhFlyingFrog minecraftOnScared;
  RiyadhFlyingFrog minecraftOnPuff;
  RiyadhFlyingFrog minecraftOnDeflate;
  KanazawaIvoryBushCoral inDesert;
  InSnow inSnow;
  RiyadhFlyingFrog growUp;
  KanazawaIvoryBushCoral leash;
  MinecraftDonkeyUnsaddled unleash;
  RiyadhFlyingFrog minecraftOnSheared;
  MinecraftOnEatBlock minecraftOnEatBlock;
  KanazawaIvoryBushCoral minecraftTurnPurple;
  KanazawaIvoryBushCoral minecraftTurnBlack;
  KanazawaIvoryBushCoral minecraftTurnBlue;
  KanazawaIvoryBushCoral minecraftTurnBrown;
  KanazawaIvoryBushCoral minecraftTurnCyan;
  KanazawaIvoryBushCoral minecraftTurnGray;
  KanazawaIvoryBushCoral minecraftTurnGreen;
  KanazawaIvoryBushCoral minecraftTurnLightBlue;
  KanazawaIvoryBushCoral minecraftTurnLime;
  KanazawaIvoryBushCoral minecraftTurnMagenta;
  KanazawaIvoryBushCoral minecraftTurnOrange;
  KanazawaIvoryBushCoral minecraftTurnPink;
  KanazawaIvoryBushCoral minecraftTurnRed;
  KanazawaIvoryBushCoral minecraftTurnSilver;
  KanazawaIvoryBushCoral minecraftTurnWhite;
  KanazawaIvoryBushCoral minecraftTurnYellow;
  KanazawaIvoryBushCoral setTrap;
  KanazawaIvoryBushCoral springTrap;
  ChangeToSkeleton changeToSkeleton;
  KanazawaIvoryBushCoral minecraftBecomePregnant;
  RiyadhFlyingFrog minecraftGoLayEgg;
  MinecraftDonkeyUnsaddled minecraftLaidEgg;
  KanazawaIvoryBushCoral becomeWitch;
  KanazawaIvoryBushCoral minecraftBecomeAggro;
  MinecraftDonkeyUnsaddled minecraftStopAggro;
  KanazawaIvoryBushCoral minecraftStartJohnny;
  MinecraftDonkeyUnsaddled minecraftStopJohnny;
  RiyadhFlyingFrog minecraftAgeableSetBaby;
  BecomeCow villagerConverted;

  Events({
    this.minecraftEntitySpawned,
    this.minecraftBecomeHostile,
    this.minecraftBecomeNeutral,
    this.minecraftBecomeAngry,
    this.minecraftOnCalm,
    this.fromEgg,
    this.minecraftEntityBorn,
    this.minecraftAgeableGrowUp,
    this.minecraftOnLeash,
    this.minecraftOnUnleash,
    this.minecraftEntityTransformed,
    this.minecraftStartExploding,
    this.minecraftStopExploding,
    this.minecraftBecomeCharged,
    this.minecraftStopDryingout,
    this.minecraftStartDryingout,
    this.minecraftDriedOut,
    this.minecraftNavigationOnLand,
    this.minecraftNavigationOffLand,
    this.minecraftOnTame,
    this.minecraftOnChest,
    this.minecraftDonkeySaddled,
    this.minecraftDonkeyUnsaddled,
    this.minecraftAsBaby,
    this.minecraftAsAdult,
    this.minecraftSwitchToMelee,
    this.minecraftSwitchToRanged,
    this.minecraftHasTarget,
    this.minecraftLostTarget,
    this.minecraftStartLand,
    this.minecraftStartFly,
    this.minecraftStartDeath,
    this.minecraftTargetTooClose,
    this.minecraftTargetFarEnough,
    this.minecraftHorseSaddled,
    this.minecraftHorseUnsaddled,
    this.minecraftFromPlayer,
    this.minecraftFromVillage,
    this.minecraftJoinCaravan,
    this.minecraftLeaveCaravan,
    this.minecraftMadAtWolf,
    this.becomeCow,
    this.becomeZombie,
    this.minecraftOnSaddled,
    this.minecraftOnAnger,
    this.minecraftBabyOnCalm,
    this.minecraftOnScared,
    this.minecraftOnPuff,
    this.minecraftOnDeflate,
    this.inDesert,
    this.inSnow,
    this.growUp,
    this.leash,
    this.unleash,
    this.minecraftOnSheared,
    this.minecraftOnEatBlock,
    this.minecraftTurnPurple,
    this.minecraftTurnBlack,
    this.minecraftTurnBlue,
    this.minecraftTurnBrown,
    this.minecraftTurnCyan,
    this.minecraftTurnGray,
    this.minecraftTurnGreen,
    this.minecraftTurnLightBlue,
    this.minecraftTurnLime,
    this.minecraftTurnMagenta,
    this.minecraftTurnOrange,
    this.minecraftTurnPink,
    this.minecraftTurnRed,
    this.minecraftTurnSilver,
    this.minecraftTurnWhite,
    this.minecraftTurnYellow,
    this.setTrap,
    this.springTrap,
    this.changeToSkeleton,
    this.minecraftBecomePregnant,
    this.minecraftGoLayEgg,
    this.minecraftLaidEgg,
    this.becomeWitch,
    this.minecraftBecomeAggro,
    this.minecraftStopAggro,
    this.minecraftStartJohnny,
    this.minecraftStopJohnny,
    this.minecraftAgeableSetBaby,
    this.villagerConverted,
  });

  factory Events.fromJson(Map<String, dynamic> json) => new Events(
    minecraftEntitySpawned: json["minecraft:entity_spawned"] == null ? null : MinecraftEntitySpawned.fromJson(json["minecraft:entity_spawned"]),
    minecraftBecomeHostile: json["minecraft:become_hostile"] == null ? null : MinecraftBecomeHostile.fromJson(json["minecraft:become_hostile"]),
    minecraftBecomeNeutral: json["minecraft:become_neutral"] == null ? null : RiyadhFlyingFrog.fromJson(json["minecraft:become_neutral"]),
    minecraftBecomeAngry: json["minecraft:become_angry"] == null ? null : MinecraftBecomeAngry.fromJson(json["minecraft:become_angry"]),
    minecraftOnCalm: json["minecraft:on_calm"] == null ? null : MinecraftOnCalm.fromJson(json["minecraft:on_calm"]),
    fromEgg: json["from_egg"] == null ? null : KanazawaIvoryBushCoral.fromJson(json["from_egg"]),
    minecraftEntityBorn: json["minecraft:entity_born"] == null ? null : MinecraftEntityBorn.fromJson(json["minecraft:entity_born"]),
    minecraftAgeableGrowUp: json["minecraft:ageable_grow_up"] == null ? null : MinecraftAgeableGrowUp.fromJson(json["minecraft:ageable_grow_up"]),
    minecraftOnLeash: json["minecraft:on_leash"] == null ? null : KanazawaIvoryBushCoral.fromJson(json["minecraft:on_leash"]),
    minecraftOnUnleash: json["minecraft:on_unleash"] == null ? null : MinecraftDonkeyUnsaddled.fromJson(json["minecraft:on_unleash"]),
    minecraftEntityTransformed: json["minecraft:entity_transformed"] == null ? null : MinecraftEntityTransformed.fromJson(json["minecraft:entity_transformed"]),
    minecraftStartExploding: json["minecraft:start_exploding"] == null ? null : MinecraftStartExploding.fromJson(json["minecraft:start_exploding"]),
    minecraftStopExploding: json["minecraft:stop_exploding"] == null ? null : RiyadhFlyingFrog.fromJson(json["minecraft:stop_exploding"]),
    minecraftBecomeCharged: json["minecraft:become_charged"] == null ? null : RiyadhFlyingFrog.fromJson(json["minecraft:become_charged"]),
    minecraftStopDryingout: json["minecraft:stop_dryingout"] == null ? null : RiyadhFlyingFrog.fromJson(json["minecraft:stop_dryingout"]),
    minecraftStartDryingout: json["minecraft:start_dryingout"] == null ? null : RiyadhFlyingFrog.fromJson(json["minecraft:start_dryingout"]),
    minecraftDriedOut: json["minecraft:dried_out"] == null ? null : KanazawaIvoryBushCoral.fromJson(json["minecraft:dried_out"]),
    minecraftNavigationOnLand: json["minecraft:navigation_on_land"] == null ? null : RiyadhFlyingFrog.fromJson(json["minecraft:navigation_on_land"]),
    minecraftNavigationOffLand: json["minecraft:navigation_off_land"] == null ? null : RiyadhFlyingFrog.fromJson(json["minecraft:navigation_off_land"]),
    minecraftOnTame: json["minecraft:on_tame"] == null ? null : MinecraftOnTame.fromJson(json["minecraft:on_tame"]),
    minecraftOnChest: json["minecraft:on_chest"] == null ? null : RiyadhFlyingFrog.fromJson(json["minecraft:on_chest"]),
    minecraftDonkeySaddled: json["minecraft:donkey_saddled"] == null ? null : KanazawaIvoryBushCoral.fromJson(json["minecraft:donkey_saddled"]),
    minecraftDonkeyUnsaddled: json["minecraft:donkey_unsaddled"] == null ? null : MinecraftDonkeyUnsaddled.fromJson(json["minecraft:donkey_unsaddled"]),
    minecraftAsBaby: json["minecraft:as_baby"] == null ? null : KanazawaIvoryBushCoral.fromJson(json["minecraft:as_baby"]),
    minecraftAsAdult: json["minecraft:as_adult"] == null ? null : KanazawaIvoryBushCoral.fromJson(json["minecraft:as_adult"]),
    minecraftSwitchToMelee: json["minecraft:switch_to_melee"] == null ? null : RiyadhFlyingFrog.fromJson(json["minecraft:switch_to_melee"]),
    minecraftSwitchToRanged: json["minecraft:switch_to_ranged"] == null ? null : RiyadhFlyingFrog.fromJson(json["minecraft:switch_to_ranged"]),
    minecraftHasTarget: json["minecraft:has_target"] == null ? null : RiyadhFlyingFrog.fromJson(json["minecraft:has_target"]),
    minecraftLostTarget: json["minecraft:lost_target"] == null ? null : RiyadhFlyingFrog.fromJson(json["minecraft:lost_target"]),
    minecraftStartLand: json["minecraft:start_land"] == null ? null : RiyadhFlyingFrog.fromJson(json["minecraft:start_land"]),
    minecraftStartFly: json["minecraft:start_fly"] == null ? null : RiyadhFlyingFrog.fromJson(json["minecraft:start_fly"]),
    minecraftStartDeath: json["minecraft:start_death"] == null ? null : RiyadhFlyingFrog.fromJson(json["minecraft:start_death"]),
    minecraftTargetTooClose: json["minecraft:target_too_close"] == null ? null : RiyadhFlyingFrog.fromJson(json["minecraft:target_too_close"]),
    minecraftTargetFarEnough: json["minecraft:target_far_enough"] == null ? null : RiyadhFlyingFrog.fromJson(json["minecraft:target_far_enough"]),
    minecraftHorseSaddled: json["minecraft:horse_saddled"] == null ? null : KanazawaIvoryBushCoral.fromJson(json["minecraft:horse_saddled"]),
    minecraftHorseUnsaddled: json["minecraft:horse_unsaddled"] == null ? null : MinecraftDonkeyUnsaddled.fromJson(json["minecraft:horse_unsaddled"]),
    minecraftFromPlayer: json["minecraft:from_player"] == null ? null : KanazawaIvoryBushCoral.fromJson(json["minecraft:from_player"]),
    minecraftFromVillage: json["minecraft:from_village"] == null ? null : KanazawaIvoryBushCoral.fromJson(json["minecraft:from_village"]),
    minecraftJoinCaravan: json["minecraft:join_caravan"] == null ? null : KanazawaIvoryBushCoral.fromJson(json["minecraft:join_caravan"]),
    minecraftLeaveCaravan: json["minecraft:leave_caravan"] == null ? null : MinecraftDonkeyUnsaddled.fromJson(json["minecraft:leave_caravan"]),
    minecraftMadAtWolf: json["minecraft:mad_at_wolf"] == null ? null : KanazawaIvoryBushCoral.fromJson(json["minecraft:mad_at_wolf"]),
    becomeCow: json["become_cow"] == null ? null : BecomeCow.fromJson(json["become_cow"]),
    becomeZombie: json["become_zombie"] == null ? null : BecomeCow.fromJson(json["become_zombie"]),
    minecraftOnSaddled: json["minecraft:on_saddled"] == null ? null : RiyadhFlyingFrog.fromJson(json["minecraft:on_saddled"]),
    minecraftOnAnger: json["minecraft:on_anger"] == null ? null : RiyadhFlyingFrog.fromJson(json["minecraft:on_anger"]),
    minecraftBabyOnCalm: json["minecraft:baby_on_calm"] == null ? null : RiyadhFlyingFrog.fromJson(json["minecraft:baby_on_calm"]),
    minecraftOnScared: json["minecraft:on_scared"] == null ? null : RiyadhFlyingFrog.fromJson(json["minecraft:on_scared"]),
    minecraftOnPuff: json["minecraft:on_puff"] == null ? null : RiyadhFlyingFrog.fromJson(json["minecraft:on_puff"]),
    minecraftOnDeflate: json["minecraft:on_deflate"] == null ? null : RiyadhFlyingFrog.fromJson(json["minecraft:on_deflate"]),
    inDesert: json["in_desert"] == null ? null : KanazawaIvoryBushCoral.fromJson(json["in_desert"]),
    inSnow: json["in_snow"] == null ? null : InSnow.fromJson(json["in_snow"]),
    growUp: json["grow_up"] == null ? null : RiyadhFlyingFrog.fromJson(json["grow_up"]),
    leash: json["leash"] == null ? null : KanazawaIvoryBushCoral.fromJson(json["leash"]),
    unleash: json["unleash"] == null ? null : MinecraftDonkeyUnsaddled.fromJson(json["unleash"]),
    minecraftOnSheared: json["minecraft:on_sheared"] == null ? null : RiyadhFlyingFrog.fromJson(json["minecraft:on_sheared"]),
    minecraftOnEatBlock: json["minecraft:on_eat_block"] == null ? null : MinecraftOnEatBlock.fromJson(json["minecraft:on_eat_block"]),
    minecraftTurnPurple: json["minecraft:turn_purple"] == null ? null : KanazawaIvoryBushCoral.fromJson(json["minecraft:turn_purple"]),
    minecraftTurnBlack: json["minecraft:turn_black"] == null ? null : KanazawaIvoryBushCoral.fromJson(json["minecraft:turn_black"]),
    minecraftTurnBlue: json["minecraft:turn_blue"] == null ? null : KanazawaIvoryBushCoral.fromJson(json["minecraft:turn_blue"]),
    minecraftTurnBrown: json["minecraft:turn_brown"] == null ? null : KanazawaIvoryBushCoral.fromJson(json["minecraft:turn_brown"]),
    minecraftTurnCyan: json["minecraft:turn_cyan"] == null ? null : KanazawaIvoryBushCoral.fromJson(json["minecraft:turn_cyan"]),
    minecraftTurnGray: json["minecraft:turn_gray"] == null ? null : KanazawaIvoryBushCoral.fromJson(json["minecraft:turn_gray"]),
    minecraftTurnGreen: json["minecraft:turn_green"] == null ? null : KanazawaIvoryBushCoral.fromJson(json["minecraft:turn_green"]),
    minecraftTurnLightBlue: json["minecraft:turn_light_blue"] == null ? null : KanazawaIvoryBushCoral.fromJson(json["minecraft:turn_light_blue"]),
    minecraftTurnLime: json["minecraft:turn_lime"] == null ? null : KanazawaIvoryBushCoral.fromJson(json["minecraft:turn_lime"]),
    minecraftTurnMagenta: json["minecraft:turn_magenta"] == null ? null : KanazawaIvoryBushCoral.fromJson(json["minecraft:turn_magenta"]),
    minecraftTurnOrange: json["minecraft:turn_orange"] == null ? null : KanazawaIvoryBushCoral.fromJson(json["minecraft:turn_orange"]),
    minecraftTurnPink: json["minecraft:turn_pink"] == null ? null : KanazawaIvoryBushCoral.fromJson(json["minecraft:turn_pink"]),
    minecraftTurnRed: json["minecraft:turn_red"] == null ? null : KanazawaIvoryBushCoral.fromJson(json["minecraft:turn_red"]),
    minecraftTurnSilver: json["minecraft:turn_silver"] == null ? null : KanazawaIvoryBushCoral.fromJson(json["minecraft:turn_silver"]),
    minecraftTurnWhite: json["minecraft:turn_white"] == null ? null : KanazawaIvoryBushCoral.fromJson(json["minecraft:turn_white"]),
    minecraftTurnYellow: json["minecraft:turn_yellow"] == null ? null : KanazawaIvoryBushCoral.fromJson(json["minecraft:turn_yellow"]),
    setTrap: json["set_trap"] == null ? null : KanazawaIvoryBushCoral.fromJson(json["set_trap"]),
    springTrap: json["spring_trap"] == null ? null : KanazawaIvoryBushCoral.fromJson(json["spring_trap"]),
    changeToSkeleton: json["change_to_skeleton"] == null ? null : ChangeToSkeleton.fromJson(json["change_to_skeleton"]),
    minecraftBecomePregnant: json["minecraft:become_pregnant"] == null ? null : KanazawaIvoryBushCoral.fromJson(json["minecraft:become_pregnant"]),
    minecraftGoLayEgg: json["minecraft:go_lay_egg"] == null ? null : RiyadhFlyingFrog.fromJson(json["minecraft:go_lay_egg"]),
    minecraftLaidEgg: json["minecraft:laid_egg"] == null ? null : MinecraftDonkeyUnsaddled.fromJson(json["minecraft:laid_egg"]),
    becomeWitch: json["become_witch"] == null ? null : KanazawaIvoryBushCoral.fromJson(json["become_witch"]),
    minecraftBecomeAggro: json["minecraft:become_aggro"] == null ? null : KanazawaIvoryBushCoral.fromJson(json["minecraft:become_aggro"]),
    minecraftStopAggro: json["minecraft:stop_aggro"] == null ? null : MinecraftDonkeyUnsaddled.fromJson(json["minecraft:stop_aggro"]),
    minecraftStartJohnny: json["minecraft:start_johnny"] == null ? null : KanazawaIvoryBushCoral.fromJson(json["minecraft:start_johnny"]),
    minecraftStopJohnny: json["minecraft:stop_johnny"] == null ? null : MinecraftDonkeyUnsaddled.fromJson(json["minecraft:stop_johnny"]),
    minecraftAgeableSetBaby: json["minecraft:ageable_set_baby"] == null ? null : RiyadhFlyingFrog.fromJson(json["minecraft:ageable_set_baby"]),
    villagerConverted: json["villager_converted"] == null ? null : BecomeCow.fromJson(json["villager_converted"]),
  );

  Map<String, dynamic> toJson() => {
    "minecraft:entity_spawned": minecraftEntitySpawned == null ? null : minecraftEntitySpawned.toJson(),
    "minecraft:become_hostile": minecraftBecomeHostile == null ? null : minecraftBecomeHostile.toJson(),
    "minecraft:become_neutral": minecraftBecomeNeutral == null ? null : minecraftBecomeNeutral.toJson(),
    "minecraft:become_angry": minecraftBecomeAngry == null ? null : minecraftBecomeAngry.toJson(),
    "minecraft:on_calm": minecraftOnCalm == null ? null : minecraftOnCalm.toJson(),
    "from_egg": fromEgg == null ? null : fromEgg.toJson(),
    "minecraft:entity_born": minecraftEntityBorn == null ? null : minecraftEntityBorn.toJson(),
    "minecraft:ageable_grow_up": minecraftAgeableGrowUp == null ? null : minecraftAgeableGrowUp.toJson(),
    "minecraft:on_leash": minecraftOnLeash == null ? null : minecraftOnLeash.toJson(),
    "minecraft:on_unleash": minecraftOnUnleash == null ? null : minecraftOnUnleash.toJson(),
    "minecraft:entity_transformed": minecraftEntityTransformed == null ? null : minecraftEntityTransformed.toJson(),
    "minecraft:start_exploding": minecraftStartExploding == null ? null : minecraftStartExploding.toJson(),
    "minecraft:stop_exploding": minecraftStopExploding == null ? null : minecraftStopExploding.toJson(),
    "minecraft:become_charged": minecraftBecomeCharged == null ? null : minecraftBecomeCharged.toJson(),
    "minecraft:stop_dryingout": minecraftStopDryingout == null ? null : minecraftStopDryingout.toJson(),
    "minecraft:start_dryingout": minecraftStartDryingout == null ? null : minecraftStartDryingout.toJson(),
    "minecraft:dried_out": minecraftDriedOut == null ? null : minecraftDriedOut.toJson(),
    "minecraft:navigation_on_land": minecraftNavigationOnLand == null ? null : minecraftNavigationOnLand.toJson(),
    "minecraft:navigation_off_land": minecraftNavigationOffLand == null ? null : minecraftNavigationOffLand.toJson(),
    "minecraft:on_tame": minecraftOnTame == null ? null : minecraftOnTame.toJson(),
    "minecraft:on_chest": minecraftOnChest == null ? null : minecraftOnChest.toJson(),
    "minecraft:donkey_saddled": minecraftDonkeySaddled == null ? null : minecraftDonkeySaddled.toJson(),
    "minecraft:donkey_unsaddled": minecraftDonkeyUnsaddled == null ? null : minecraftDonkeyUnsaddled.toJson(),
    "minecraft:as_baby": minecraftAsBaby == null ? null : minecraftAsBaby.toJson(),
    "minecraft:as_adult": minecraftAsAdult == null ? null : minecraftAsAdult.toJson(),
    "minecraft:switch_to_melee": minecraftSwitchToMelee == null ? null : minecraftSwitchToMelee.toJson(),
    "minecraft:switch_to_ranged": minecraftSwitchToRanged == null ? null : minecraftSwitchToRanged.toJson(),
    "minecraft:has_target": minecraftHasTarget == null ? null : minecraftHasTarget.toJson(),
    "minecraft:lost_target": minecraftLostTarget == null ? null : minecraftLostTarget.toJson(),
    "minecraft:start_land": minecraftStartLand == null ? null : minecraftStartLand.toJson(),
    "minecraft:start_fly": minecraftStartFly == null ? null : minecraftStartFly.toJson(),
    "minecraft:start_death": minecraftStartDeath == null ? null : minecraftStartDeath.toJson(),
    "minecraft:target_too_close": minecraftTargetTooClose == null ? null : minecraftTargetTooClose.toJson(),
    "minecraft:target_far_enough": minecraftTargetFarEnough == null ? null : minecraftTargetFarEnough.toJson(),
    "minecraft:horse_saddled": minecraftHorseSaddled == null ? null : minecraftHorseSaddled.toJson(),
    "minecraft:horse_unsaddled": minecraftHorseUnsaddled == null ? null : minecraftHorseUnsaddled.toJson(),
    "minecraft:from_player": minecraftFromPlayer == null ? null : minecraftFromPlayer.toJson(),
    "minecraft:from_village": minecraftFromVillage == null ? null : minecraftFromVillage.toJson(),
    "minecraft:join_caravan": minecraftJoinCaravan == null ? null : minecraftJoinCaravan.toJson(),
    "minecraft:leave_caravan": minecraftLeaveCaravan == null ? null : minecraftLeaveCaravan.toJson(),
    "minecraft:mad_at_wolf": minecraftMadAtWolf == null ? null : minecraftMadAtWolf.toJson(),
    "become_cow": becomeCow == null ? null : becomeCow.toJson(),
    "become_zombie": becomeZombie == null ? null : becomeZombie.toJson(),
    "minecraft:on_saddled": minecraftOnSaddled == null ? null : minecraftOnSaddled.toJson(),
    "minecraft:on_anger": minecraftOnAnger == null ? null : minecraftOnAnger.toJson(),
    "minecraft:baby_on_calm": minecraftBabyOnCalm == null ? null : minecraftBabyOnCalm.toJson(),
    "minecraft:on_scared": minecraftOnScared == null ? null : minecraftOnScared.toJson(),
    "minecraft:on_puff": minecraftOnPuff == null ? null : minecraftOnPuff.toJson(),
    "minecraft:on_deflate": minecraftOnDeflate == null ? null : minecraftOnDeflate.toJson(),
    "in_desert": inDesert == null ? null : inDesert.toJson(),
    "in_snow": inSnow == null ? null : inSnow.toJson(),
    "grow_up": growUp == null ? null : growUp.toJson(),
    "leash": leash == null ? null : leash.toJson(),
    "unleash": unleash == null ? null : unleash.toJson(),
    "minecraft:on_sheared": minecraftOnSheared == null ? null : minecraftOnSheared.toJson(),
    "minecraft:on_eat_block": minecraftOnEatBlock == null ? null : minecraftOnEatBlock.toJson(),
    "minecraft:turn_purple": minecraftTurnPurple == null ? null : minecraftTurnPurple.toJson(),
    "minecraft:turn_black": minecraftTurnBlack == null ? null : minecraftTurnBlack.toJson(),
    "minecraft:turn_blue": minecraftTurnBlue == null ? null : minecraftTurnBlue.toJson(),
    "minecraft:turn_brown": minecraftTurnBrown == null ? null : minecraftTurnBrown.toJson(),
    "minecraft:turn_cyan": minecraftTurnCyan == null ? null : minecraftTurnCyan.toJson(),
    "minecraft:turn_gray": minecraftTurnGray == null ? null : minecraftTurnGray.toJson(),
    "minecraft:turn_green": minecraftTurnGreen == null ? null : minecraftTurnGreen.toJson(),
    "minecraft:turn_light_blue": minecraftTurnLightBlue == null ? null : minecraftTurnLightBlue.toJson(),
    "minecraft:turn_lime": minecraftTurnLime == null ? null : minecraftTurnLime.toJson(),
    "minecraft:turn_magenta": minecraftTurnMagenta == null ? null : minecraftTurnMagenta.toJson(),
    "minecraft:turn_orange": minecraftTurnOrange == null ? null : minecraftTurnOrange.toJson(),
    "minecraft:turn_pink": minecraftTurnPink == null ? null : minecraftTurnPink.toJson(),
    "minecraft:turn_red": minecraftTurnRed == null ? null : minecraftTurnRed.toJson(),
    "minecraft:turn_silver": minecraftTurnSilver == null ? null : minecraftTurnSilver.toJson(),
    "minecraft:turn_white": minecraftTurnWhite == null ? null : minecraftTurnWhite.toJson(),
    "minecraft:turn_yellow": minecraftTurnYellow == null ? null : minecraftTurnYellow.toJson(),
    "set_trap": setTrap == null ? null : setTrap.toJson(),
    "spring_trap": springTrap == null ? null : springTrap.toJson(),
    "change_to_skeleton": changeToSkeleton == null ? null : changeToSkeleton.toJson(),
    "minecraft:become_pregnant": minecraftBecomePregnant == null ? null : minecraftBecomePregnant.toJson(),
    "minecraft:go_lay_egg": minecraftGoLayEgg == null ? null : minecraftGoLayEgg.toJson(),
    "minecraft:laid_egg": minecraftLaidEgg == null ? null : minecraftLaidEgg.toJson(),
    "become_witch": becomeWitch == null ? null : becomeWitch.toJson(),
    "minecraft:become_aggro": minecraftBecomeAggro == null ? null : minecraftBecomeAggro.toJson(),
    "minecraft:stop_aggro": minecraftStopAggro == null ? null : minecraftStopAggro.toJson(),
    "minecraft:start_johnny": minecraftStartJohnny == null ? null : minecraftStartJohnny.toJson(),
    "minecraft:stop_johnny": minecraftStopJohnny == null ? null : minecraftStopJohnny.toJson(),
    "minecraft:ageable_set_baby": minecraftAgeableSetBaby == null ? null : minecraftAgeableSetBaby.toJson(),
    "villager_converted": villagerConverted == null ? null : villagerConverted.toJson(),
  };
}

class BecomeCow {
  DibrugarhFerrets remove;
  Add add;

  BecomeCow({
    this.remove,
    this.add,
  });

  factory BecomeCow.fromJson(Map<String, dynamic> json) => new BecomeCow(
    remove: json["remove"] == null ? null : DibrugarhFerrets.fromJson(json["remove"]),
    add: Add.fromJson(json["add"]),
  );

  Map<String, dynamic> toJson() => {
    "remove": remove == null ? null : remove.toJson(),
    "add": add.toJson(),
  };
}

class Add {
  List<String> componentGroups;

  Add({
    this.componentGroups,
  });

  factory Add.fromJson(Map<String, dynamic> json) => new Add(
    componentGroups: json["component_groups"] == null ? null : new List<String>.from(json["component_groups"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "component_groups": componentGroups == null ? null : new List<dynamic>.from(componentGroups.map((x) => x)),
  };
}

class KanazawaIvoryBushCoral {
  Add add;

  KanazawaIvoryBushCoral({
    this.add,
  });

  factory KanazawaIvoryBushCoral.fromJson(Map<String, dynamic> json) => new KanazawaIvoryBushCoral(
    add: Add.fromJson(json["add"]),
  );

  Map<String, dynamic> toJson() => {
    "add": add.toJson(),
  };
}

class ChangeToSkeleton {
  List<ChangeToSkeletonSequence> sequence;

  ChangeToSkeleton({
    this.sequence,
  });

  factory ChangeToSkeleton.fromJson(Map<String, dynamic> json) => new ChangeToSkeleton(
    sequence: new List<ChangeToSkeletonSequence>.from(json["sequence"].map((x) => ChangeToSkeletonSequence.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "sequence": new List<dynamic>.from(sequence.map((x) => x.toJson())),
  };
}

class ChangeToSkeletonSequence {
  IndigoFilters filters;
  DibrugarhFerrets remove;
  Add add;
  List<PurpleRandomize> randomize;

  ChangeToSkeletonSequence({
    this.filters,
    this.remove,
    this.add,
    this.randomize,
  });

  factory ChangeToSkeletonSequence.fromJson(Map<String, dynamic> json) => new ChangeToSkeletonSequence(
    filters: json["filters"] == null ? null : IndigoFilters.fromJson(json["filters"]),
    remove: json["remove"] == null ? null : DibrugarhFerrets.fromJson(json["remove"]),
    add: json["add"] == null ? null : Add.fromJson(json["add"]),
    randomize: json["randomize"] == null ? null : new List<PurpleRandomize>.from(json["randomize"].map((x) => PurpleRandomize.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "filters": filters == null ? null : filters.toJson(),
    "remove": remove == null ? null : remove.toJson(),
    "add": add == null ? null : add.toJson(),
    "randomize": randomize == null ? null : new List<dynamic>.from(randomize.map((x) => x.toJson())),
  };
}

class PurpleRandomize {
  int weight;
  DibrugarhFerrets remove;
  Add add;

  PurpleRandomize({
    this.weight,
    this.remove,
    this.add,
  });

  factory PurpleRandomize.fromJson(Map<String, dynamic> json) => new PurpleRandomize(
    weight: json["weight"],
    remove: DibrugarhFerrets.fromJson(json["remove"]),
    add: Add.fromJson(json["add"]),
  );

  Map<String, dynamic> toJson() => {
    "weight": weight,
    "remove": remove.toJson(),
    "add": add.toJson(),
  };
}

class RiyadhFlyingFrog {
  Add remove;
  Add add;

  RiyadhFlyingFrog({
    this.remove,
    this.add,
  });

  factory RiyadhFlyingFrog.fromJson(Map<String, dynamic> json) => new RiyadhFlyingFrog(
    remove: Add.fromJson(json["remove"]),
    add: Add.fromJson(json["add"]),
  );

  Map<String, dynamic> toJson() => {
    "remove": remove.toJson(),
    "add": add.toJson(),
  };
}

class InSnow {
  List<InSnowRandomize> randomize;

  InSnow({
    this.randomize,
  });

  factory InSnow.fromJson(Map<String, dynamic> json) => new InSnow(
    randomize: new List<InSnowRandomize>.from(json["randomize"].map((x) => InSnowRandomize.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "randomize": new List<dynamic>.from(randomize.map((x) => x.toJson())),
  };
}

class InSnowRandomize {
  int weight;
  Add add;

  InSnowRandomize({
    this.weight,
    this.add,
  });

  factory InSnowRandomize.fromJson(Map<String, dynamic> json) => new InSnowRandomize(
    weight: json["weight"],
    add: Add.fromJson(json["add"]),
  );

  Map<String, dynamic> toJson() => {
    "weight": weight,
    "add": add.toJson(),
  };
}

class MinecraftAgeableGrowUp {
  Add remove;
  Add add;
  List<RiyadhFlyingFrog> sequence;

  MinecraftAgeableGrowUp({
    this.remove,
    this.add,
    this.sequence,
  });

  factory MinecraftAgeableGrowUp.fromJson(Map<String, dynamic> json) => new MinecraftAgeableGrowUp(
    remove: json["remove"] == null ? null : Add.fromJson(json["remove"]),
    add: json["add"] == null ? null : Add.fromJson(json["add"]),
    sequence: json["sequence"] == null ? null : new List<RiyadhFlyingFrog>.from(json["sequence"].map((x) => RiyadhFlyingFrog.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "remove": remove == null ? null : remove.toJson(),
    "add": add == null ? null : add.toJson(),
    "sequence": sequence == null ? null : new List<dynamic>.from(sequence.map((x) => x.toJson())),
  };
}

class MinecraftBecomeAngry {
  List<MinecraftBecomeAngrySequence> sequence;
  Add add;
  MinecraftBecomeAngryRemove remove;

  MinecraftBecomeAngry({
    this.sequence,
    this.add,
    this.remove,
  });

  factory MinecraftBecomeAngry.fromJson(Map<String, dynamic> json) => new MinecraftBecomeAngry(
    sequence: json["sequence"] == null ? null : new List<MinecraftBecomeAngrySequence>.from(json["sequence"].map((x) => MinecraftBecomeAngrySequence.fromJson(x))),
    add: json["add"] == null ? null : Add.fromJson(json["add"]),
    remove: json["remove"] == null ? null : MinecraftBecomeAngryRemove.fromJson(json["remove"]),
  );

  Map<String, dynamic> toJson() => {
    "sequence": sequence == null ? null : new List<dynamic>.from(sequence.map((x) => x.toJson())),
    "add": add == null ? null : add.toJson(),
    "remove": remove == null ? null : remove.toJson(),
  };
}

class MinecraftBecomeAngryRemove {
  List<String> componentGroups;
  DibrugarhFerrets minecraftCalm;

  MinecraftBecomeAngryRemove({
    this.componentGroups,
    this.minecraftCalm,
  });

  factory MinecraftBecomeAngryRemove.fromJson(Map<String, dynamic> json) => new MinecraftBecomeAngryRemove(
    componentGroups: json["component_groups"] == null ? null : new List<String>.from(json["component_groups"].map((x) => x)),
    minecraftCalm: json["minecraft:calm"] == null ? null : DibrugarhFerrets.fromJson(json["minecraft:calm"]),
  );

  Map<String, dynamic> toJson() => {
    "component_groups": componentGroups == null ? null : new List<dynamic>.from(componentGroups.map((x) => x)),
    "minecraft:calm": minecraftCalm == null ? null : minecraftCalm.toJson(),
  };
}

class MinecraftBecomeAngrySequence {
  Add remove;
  Add add;
  Filters1 filters;

  MinecraftBecomeAngrySequence({
    this.remove,
    this.add,
    this.filters,
  });

  factory MinecraftBecomeAngrySequence.fromJson(Map<String, dynamic> json) => new MinecraftBecomeAngrySequence(
    remove: Add.fromJson(json["remove"]),
    add: Add.fromJson(json["add"]),
    filters: json["filters"] == null ? null : Filters1.fromJson(json["filters"]),
  );

  Map<String, dynamic> toJson() => {
    "remove": remove.toJson(),
    "add": add.toJson(),
    "filters": filters == null ? null : filters.toJson(),
  };
}

class Filters1 {
  String isWorldDifficulty;

  Filters1({
    this.isWorldDifficulty,
  });

  factory Filters1.fromJson(Map<String, dynamic> json) => new Filters1(
    isWorldDifficulty: json["is_world_difficulty"],
  );

  Map<String, dynamic> toJson() => {
    "is_world_difficulty": isWorldDifficulty,
  };
}

class MinecraftBecomeHostile {
  List<MinecraftBecomeAngrySequence> sequence;
  Add remove;
  Add add;

  MinecraftBecomeHostile({
    this.sequence,
    this.remove,
    this.add,
  });

  factory MinecraftBecomeHostile.fromJson(Map<String, dynamic> json) => new MinecraftBecomeHostile(
    sequence: json["sequence"] == null ? null : new List<MinecraftBecomeAngrySequence>.from(json["sequence"].map((x) => MinecraftBecomeAngrySequence.fromJson(x))),
    remove: json["remove"] == null ? null : Add.fromJson(json["remove"]),
    add: json["add"] == null ? null : Add.fromJson(json["add"]),
  );

  Map<String, dynamic> toJson() => {
    "sequence": sequence == null ? null : new List<dynamic>.from(sequence.map((x) => x.toJson())),
    "remove": remove == null ? null : remove.toJson(),
    "add": add == null ? null : add.toJson(),
  };
}

class MinecraftDonkeyUnsaddled {
  Add remove;

  MinecraftDonkeyUnsaddled({
    this.remove,
  });

  factory MinecraftDonkeyUnsaddled.fromJson(Map<String, dynamic> json) => new MinecraftDonkeyUnsaddled(
    remove: Add.fromJson(json["remove"]),
  );

  Map<String, dynamic> toJson() => {
    "remove": remove.toJson(),
  };
}

class MinecraftEntityBorn {
  DibrugarhFerrets remove;
  Add add;
  List<MinecraftEntityBornSequence> sequence;

  MinecraftEntityBorn({
    this.remove,
    this.add,
    this.sequence,
  });

  factory MinecraftEntityBorn.fromJson(Map<String, dynamic> json) => new MinecraftEntityBorn(
    remove: json["remove"] == null ? null : DibrugarhFerrets.fromJson(json["remove"]),
    add: json["add"] == null ? null : Add.fromJson(json["add"]),
    sequence: json["sequence"] == null ? null : new List<MinecraftEntityBornSequence>.from(json["sequence"].map((x) => MinecraftEntityBornSequence.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "remove": remove == null ? null : remove.toJson(),
    "add": add == null ? null : add.toJson(),
    "sequence": sequence == null ? null : new List<dynamic>.from(sequence.map((x) => x.toJson())),
  };
}

class MinecraftEntityBornSequence {
  Add add;
  Filters2 filters;
  List<InSnowRandomize> randomize;

  MinecraftEntityBornSequence({
    this.add,
    this.filters,
    this.randomize,
  });

  factory MinecraftEntityBornSequence.fromJson(Map<String, dynamic> json) => new MinecraftEntityBornSequence(
    add: json["add"] == null ? null : Add.fromJson(json["add"]),
    filters: json["filters"] == null ? null : Filters2.fromJson(json["filters"]),
    randomize: json["randomize"] == null ? null : new List<InSnowRandomize>.from(json["randomize"].map((x) => InSnowRandomize.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "add": add == null ? null : add.toJson(),
    "filters": filters == null ? null : filters.toJson(),
    "randomize": randomize == null ? null : new List<dynamic>.from(randomize.map((x) => x.toJson())),
  };
}

class Filters2 {
  List<String> withoutComponents;
  List<String> withEnvironmentAny;

  Filters2({
    this.withoutComponents,
    this.withEnvironmentAny,
  });

  factory Filters2.fromJson(Map<String, dynamic> json) => new Filters2(
    withoutComponents: json["without_components"] == null ? null : new List<String>.from(json["without_components"].map((x) => x)),
    withEnvironmentAny: json["with_environment_any"] == null ? null : new List<String>.from(json["with_environment_any"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "without_components": withoutComponents == null ? null : new List<dynamic>.from(withoutComponents.map((x) => x)),
    "with_environment_any": withEnvironmentAny == null ? null : new List<dynamic>.from(withEnvironmentAny.map((x) => x)),
  };
}

class MinecraftEntitySpawned {
  List<MinecraftEntitySpawnedRandomize> randomize;
  DibrugarhFerrets remove;
  Add add;
  List<MinecraftEntitySpawnedSequence> sequence;

  MinecraftEntitySpawned({
    this.randomize,
    this.remove,
    this.add,
    this.sequence,
  });

  factory MinecraftEntitySpawned.fromJson(Map<String, dynamic> json) => new MinecraftEntitySpawned(
    randomize: json["randomize"] == null ? null : new List<MinecraftEntitySpawnedRandomize>.from(json["randomize"].map((x) => MinecraftEntitySpawnedRandomize.fromJson(x))),
    remove: json["remove"] == null ? null : DibrugarhFerrets.fromJson(json["remove"]),
    add: json["add"] == null ? null : Add.fromJson(json["add"]),
    sequence: json["sequence"] == null ? null : new List<MinecraftEntitySpawnedSequence>.from(json["sequence"].map((x) => MinecraftEntitySpawnedSequence.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "randomize": randomize == null ? null : new List<dynamic>.from(randomize.map((x) => x.toJson())),
    "remove": remove == null ? null : remove.toJson(),
    "add": add == null ? null : add.toJson(),
    "sequence": sequence == null ? null : new List<dynamic>.from(sequence.map((x) => x.toJson())),
  };
}

class MinecraftEntitySpawnedRandomize {
  int weight;
  List<RandomizeRandomize> randomize;
  DibrugarhFerrets remove;
  Add add;
  IndigoFilters filters;

  MinecraftEntitySpawnedRandomize({
    this.weight,
    this.randomize,
    this.remove,
    this.add,
    this.filters,
  });

  factory MinecraftEntitySpawnedRandomize.fromJson(Map<String, dynamic> json) => new MinecraftEntitySpawnedRandomize(
    weight: json["weight"],
    randomize: json["randomize"] == null ? null : new List<RandomizeRandomize>.from(json["randomize"].map((x) => RandomizeRandomize.fromJson(x))),
    remove: json["remove"] == null ? null : DibrugarhFerrets.fromJson(json["remove"]),
    add: json["add"] == null ? null : Add.fromJson(json["add"]),
    filters: json["filters"] == null ? null : IndigoFilters.fromJson(json["filters"]),
  );

  Map<String, dynamic> toJson() => {
    "weight": weight,
    "randomize": randomize == null ? null : new List<dynamic>.from(randomize.map((x) => x.toJson())),
    "remove": remove == null ? null : remove.toJson(),
    "add": add == null ? null : add.toJson(),
    "filters": filters == null ? null : filters.toJson(),
  };
}

class RandomizeRandomize {
  int weight;
  Filters3 filters;
  DibrugarhFerrets remove;
  Add add;

  RandomizeRandomize({
    this.weight,
    this.filters,
    this.remove,
    this.add,
  });

  factory RandomizeRandomize.fromJson(Map<String, dynamic> json) => new RandomizeRandomize(
    weight: json["weight"],
    filters: json["filters"] == null ? null : Filters3.fromJson(json["filters"]),
    remove: json["remove"] == null ? null : DibrugarhFerrets.fromJson(json["remove"]),
    add: Add.fromJson(json["add"]),
  );

  Map<String, dynamic> toJson() => {
    "weight": weight,
    "filters": filters == null ? null : filters.toJson(),
    "remove": remove == null ? null : remove.toJson(),
    "add": add.toJson(),
  };
}

class Filters3 {
  List<String> withEnvironmentEvery;
  List<String> withoutEnvironmentEvery;
  List<String> withEnvironmentAny;

  Filters3({
    this.withEnvironmentEvery,
    this.withoutEnvironmentEvery,
    this.withEnvironmentAny,
  });

  factory Filters3.fromJson(Map<String, dynamic> json) => new Filters3(
    withEnvironmentEvery: json["with_environment_every"] == null ? null : new List<String>.from(json["with_environment_every"].map((x) => x)),
    withoutEnvironmentEvery: json["without_environment_every"] == null ? null : new List<String>.from(json["without_environment_every"].map((x) => x)),
    withEnvironmentAny: json["with_environment_any"] == null ? null : new List<String>.from(json["with_environment_any"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "with_environment_every": withEnvironmentEvery == null ? null : new List<dynamic>.from(withEnvironmentEvery.map((x) => x)),
    "without_environment_every": withoutEnvironmentEvery == null ? null : new List<dynamic>.from(withoutEnvironmentEvery.map((x) => x)),
    "with_environment_any": withEnvironmentAny == null ? null : new List<dynamic>.from(withEnvironmentAny.map((x) => x)),
  };
}

class MinecraftEntitySpawnedSequence {
  List<RandomizeRandomize> randomize;
  Filters2 filters;
  Add add;

  MinecraftEntitySpawnedSequence({
    this.randomize,
    this.filters,
    this.add,
  });

  factory MinecraftEntitySpawnedSequence.fromJson(Map<String, dynamic> json) => new MinecraftEntitySpawnedSequence(
    randomize: json["randomize"] == null ? null : new List<RandomizeRandomize>.from(json["randomize"].map((x) => RandomizeRandomize.fromJson(x))),
    filters: json["filters"] == null ? null : Filters2.fromJson(json["filters"]),
    add: json["add"] == null ? null : Add.fromJson(json["add"]),
  );

  Map<String, dynamic> toJson() => {
    "randomize": randomize == null ? null : new List<dynamic>.from(randomize.map((x) => x.toJson())),
    "filters": filters == null ? null : filters.toJson(),
    "add": add == null ? null : add.toJson(),
  };
}

class MinecraftEntityTransformed {
  DibrugarhFerrets remove;
  Add add;
  List<MinecraftEntityTransformedSequence> sequence;

  MinecraftEntityTransformed({
    this.remove,
    this.add,
    this.sequence,
  });

  factory MinecraftEntityTransformed.fromJson(Map<String, dynamic> json) => new MinecraftEntityTransformed(
    remove: json["remove"] == null ? null : DibrugarhFerrets.fromJson(json["remove"]),
    add: json["add"] == null ? null : Add.fromJson(json["add"]),
    sequence: json["sequence"] == null ? null : new List<MinecraftEntityTransformedSequence>.from(json["sequence"].map((x) => MinecraftEntityTransformedSequence.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "remove": remove == null ? null : remove.toJson(),
    "add": add == null ? null : add.toJson(),
    "sequence": sequence == null ? null : new List<dynamic>.from(sequence.map((x) => x.toJson())),
  };
}

class MinecraftEntityTransformedSequence {
  Filters4 filters;
  Add add;

  MinecraftEntityTransformedSequence({
    this.filters,
    this.add,
  });

  factory MinecraftEntityTransformedSequence.fromJson(Map<String, dynamic> json) => new MinecraftEntityTransformedSequence(
    filters: Filters4.fromJson(json["filters"]),
    add: Add.fromJson(json["add"]),
  );

  Map<String, dynamic> toJson() => {
    "filters": filters.toJson(),
    "add": add.toJson(),
  };
}

class Filters4 {
  List<String> otherWithComponents;
  List<String> otherWithoutComponents;
  List<String> otherWithFamilies;

  Filters4({
    this.otherWithComponents,
    this.otherWithoutComponents,
    this.otherWithFamilies,
  });

  factory Filters4.fromJson(Map<String, dynamic> json) => new Filters4(
    otherWithComponents: json["other_with_components"] == null ? null : new List<String>.from(json["other_with_components"].map((x) => x)),
    otherWithoutComponents: json["other_without_components"] == null ? null : new List<String>.from(json["other_without_components"].map((x) => x)),
    otherWithFamilies: json["other_with_families"] == null ? null : new List<String>.from(json["other_with_families"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "other_with_components": otherWithComponents == null ? null : new List<dynamic>.from(otherWithComponents.map((x) => x)),
    "other_without_components": otherWithoutComponents == null ? null : new List<dynamic>.from(otherWithoutComponents.map((x) => x)),
    "other_with_families": otherWithFamilies == null ? null : new List<dynamic>.from(otherWithFamilies.map((x) => x)),
  };
}

class MinecraftOnCalm {
  MinecraftOnCalmRemove remove;
  Add add;

  MinecraftOnCalm({
    this.remove,
    this.add,
  });

  factory MinecraftOnCalm.fromJson(Map<String, dynamic> json) => new MinecraftOnCalm(
    remove: MinecraftOnCalmRemove.fromJson(json["remove"]),
    add: json["add"] == null ? null : Add.fromJson(json["add"]),
  );

  Map<String, dynamic> toJson() => {
    "remove": remove.toJson(),
    "add": add == null ? null : add.toJson(),
  };
}

class MinecraftOnCalmRemove {
  List<String> componentGroups;
  DibrugarhFerrets minecraftAngry;

  MinecraftOnCalmRemove({
    this.componentGroups,
    this.minecraftAngry,
  });

  factory MinecraftOnCalmRemove.fromJson(Map<String, dynamic> json) => new MinecraftOnCalmRemove(
    componentGroups: json["component_groups"] == null ? null : new List<String>.from(json["component_groups"].map((x) => x)),
    minecraftAngry: json["minecraft:angry"] == null ? null : DibrugarhFerrets.fromJson(json["minecraft:angry"]),
  );

  Map<String, dynamic> toJson() => {
    "component_groups": componentGroups == null ? null : new List<dynamic>.from(componentGroups.map((x) => x)),
    "minecraft:angry": minecraftAngry == null ? null : minecraftAngry.toJson(),
  };
}

class MinecraftOnEatBlock {
  List<MinecraftOnEatBlockSequence> sequence;

  MinecraftOnEatBlock({
    this.sequence,
  });

  factory MinecraftOnEatBlock.fromJson(Map<String, dynamic> json) => new MinecraftOnEatBlock(
    sequence: new List<MinecraftOnEatBlockSequence>.from(json["sequence"].map((x) => MinecraftOnEatBlockSequence.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "sequence": new List<dynamic>.from(sequence.map((x) => x.toJson())),
  };
}

class MinecraftOnEatBlockSequence {
  Add remove;
  Add add;
  Filters5 filters;

  MinecraftOnEatBlockSequence({
    this.remove,
    this.add,
    this.filters,
  });

  factory MinecraftOnEatBlockSequence.fromJson(Map<String, dynamic> json) => new MinecraftOnEatBlockSequence(
    remove: json["remove"] == null ? null : Add.fromJson(json["remove"]),
    add: Add.fromJson(json["add"]),
    filters: json["filters"] == null ? null : Filters5.fromJson(json["filters"]),
  );

  Map<String, dynamic> toJson() => {
    "remove": remove == null ? null : remove.toJson(),
    "add": add.toJson(),
    "filters": filters == null ? null : filters.toJson(),
  };
}

class Filters5 {
  List<String> withoutComponents;

  Filters5({
    this.withoutComponents,
  });

  factory Filters5.fromJson(Map<String, dynamic> json) => new Filters5(
    withoutComponents: new List<String>.from(json["without_components"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "without_components": new List<dynamic>.from(withoutComponents.map((x) => x)),
  };
}

class MinecraftOnTame {
  Add remove;
  Add add;
  List<MinecraftOnTameSequence> sequence;

  MinecraftOnTame({
    this.remove,
    this.add,
    this.sequence,
  });

  factory MinecraftOnTame.fromJson(Map<String, dynamic> json) => new MinecraftOnTame(
    remove: json["remove"] == null ? null : Add.fromJson(json["remove"]),
    add: json["add"] == null ? null : Add.fromJson(json["add"]),
    sequence: json["sequence"] == null ? null : new List<MinecraftOnTameSequence>.from(json["sequence"].map((x) => MinecraftOnTameSequence.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "remove": remove == null ? null : remove.toJson(),
    "add": add == null ? null : add.toJson(),
    "sequence": sequence == null ? null : new List<dynamic>.from(sequence.map((x) => x.toJson())),
  };
}

class MinecraftOnTameSequence {
  Add remove;
  Add add;
  List<InSnowRandomize> randomize;

  MinecraftOnTameSequence({
    this.remove,
    this.add,
    this.randomize,
  });

  factory MinecraftOnTameSequence.fromJson(Map<String, dynamic> json) => new MinecraftOnTameSequence(
    remove: json["remove"] == null ? null : Add.fromJson(json["remove"]),
    add: json["add"] == null ? null : Add.fromJson(json["add"]),
    randomize: json["randomize"] == null ? null : new List<InSnowRandomize>.from(json["randomize"].map((x) => InSnowRandomize.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "remove": remove == null ? null : remove.toJson(),
    "add": add == null ? null : add.toJson(),
    "randomize": randomize == null ? null : new List<dynamic>.from(randomize.map((x) => x.toJson())),
  };
}

class MinecraftStartExploding {
  List<MinecraftStartExplodingSequence> sequence;

  MinecraftStartExploding({
    this.sequence,
  });

  factory MinecraftStartExploding.fromJson(Map<String, dynamic> json) => new MinecraftStartExploding(
    sequence: new List<MinecraftStartExplodingSequence>.from(json["sequence"].map((x) => MinecraftStartExplodingSequence.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "sequence": new List<dynamic>.from(sequence.map((x) => x.toJson())),
  };
}

class MinecraftStartExplodingSequence {
  Filters6 filters;
  Add remove;
  Add add;

  MinecraftStartExplodingSequence({
    this.filters,
    this.remove,
    this.add,
  });

  factory MinecraftStartExplodingSequence.fromJson(Map<String, dynamic> json) => new MinecraftStartExplodingSequence(
    filters: Filters6.fromJson(json["filters"]),
    remove: Add.fromJson(json["remove"]),
    add: Add.fromJson(json["add"]),
  );

  Map<String, dynamic> toJson() => {
    "filters": filters.toJson(),
    "remove": remove.toJson(),
    "add": add.toJson(),
  };
}

class Filters6 {
  List<String> withoutComponents;
  List<String> withComponents;

  Filters6({
    this.withoutComponents,
    this.withComponents,
  });

  factory Filters6.fromJson(Map<String, dynamic> json) => new Filters6(
    withoutComponents: json["without_components"] == null ? null : new List<String>.from(json["without_components"].map((x) => x)),
    withComponents: json["with_components"] == null ? null : new List<String>.from(json["with_components"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "without_components": withoutComponents == null ? null : new List<dynamic>.from(withoutComponents.map((x) => x)),
    "with_components": withComponents == null ? null : new List<dynamic>.from(withComponents.map((x) => x)),
  };
}

enum FormatVersionEnum { THE_110, THE_120, THE_160 }

final formatVersionEnumValues = new EnumValues({
  "1.1.0": FormatVersionEnum.THE_110,
  "1.2.0": FormatVersionEnum.THE_120,
  "1.6.0": FormatVersionEnum.THE_160
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
