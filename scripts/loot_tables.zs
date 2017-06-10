// Imports
import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Functions;

// Constants
val water_bottle = <minecraft:potion>.withTag({Potion: "minecraft:water"});

/////////////////
// Loot Tables //
/////////////////

val table_abandoned_mineshaft = LootTables.getTable("minecraft:chests/abandoned_mineshaft");
val table_simple_dungeon = LootTables.getTable("minecraft:chests/simple_dungeon");
val table_stronghold_corridor = LootTables.getTable("minecraft:chests/stronghold_corridor");
val table_stronghold_crossing = LootTables.getTable("minecraft:chests/stronghold_crossing");
val table_stronghold_library = LootTables.getTable("minecraft:chests/stronghold_library");
val table_village_blacksmith = LootTables.getTable("minecraft:chests/village_blacksmith");
val table_nether_bridge = LootTables.getTable("minecraft:chests/nether_bridge");
val table_end_city_treasure = LootTables.getTable("minecraft:chests/end_city_treasure");
val table_igloo_chest = LootTables.getTable("minecraft:chests/igloo_chest");
val table_spawn_bonus_chest = LootTables.getTable("minecraft:chests/spawn_bonus_chest");

////////////////
// Loot Pools //
////////////////

val pool_simple_dungeon_invitation = table_simple_dungeon.addPool("invitation", 0, 1, 0, 0);
val pool_simple_dungeon_custom_loot = table_simple_dungeon.addPool("custom_loot", 1, 2, 0, 0);
val pool_abandoned_mineshaft_main = table_abandoned_mineshaft.getPool("main");
val pool_abandoned_mineshaft_pool2 = table_abandoned_mineshaft.getPool("pool2");
val pool_abandoned_mineshaft_invitation = table_abandoned_mineshaft.addPool("invitation", 0, 1, 0, 0);
val pool_stronghold_corridor_main = table_stronghold_corridor.getPool("main");
val pool_stronghold_crossing_main = table_stronghold_crossing.getPool("main");
val pool_stronghold_library_invitation = table_stronghold_library.addPool("invitation", 2, 4, 0, 0);
val pool_village_blacksmith_main = table_village_blacksmith.getPool("main");
val pool_village_blacksmith_custom_loot = table_village_blacksmith.addPool("custom_loot", 2, 3, 0, 0);
val pool_village_blacksmith_invitation = table_village_blacksmith.addPool("invitation", 0, 4, 0, 0);
val pool_nether_bridge_main = table_nether_bridge.getPool("main");
val pool_end_city_treasure_main = table_end_city_treasure.getPool("main");
val pool_igloo_chest_main = table_igloo_chest.getPool("main");
val pool_spawn_bonus_chest_main = table_spawn_bonus_chest.getPool("main");
val pool_spawn_bonus_chest_pool1 = table_spawn_bonus_chest.getPool("pool1");

/////////////
// Entries //
/////////////

// Add VillageBox Invitations to common dungeon loot
pool_simple_dungeon_invitation.addItemEntry(<villagebox:invitation>, 1);
pool_abandoned_mineshaft_invitation.addItemEntry(<villagebox:invitation>, 1);
pool_stronghold_library_invitation.addItemEntry(<villagebox:invitation>, 1);
pool_village_blacksmith_invitation.addItemEntry(<villagebox:invitation>, 1);

// Add general loot
pool_village_blacksmith_custom_loot.addItemEntry(<minecraft:leather>, 1); // Leather
pool_village_blacksmith_custom_loot.addItemEntry(<betterwithmods:material:7>, 1); // Scoured Leather
pool_village_blacksmith_custom_loot.addItemEntry(<betterwithmods:material:8>, 1); // Leather Strap
pool_village_blacksmith_custom_loot.addItemEntry(<betterwithmods:material:0>, 1); // Wooden Gear
pool_village_blacksmith_custom_loot.addItemEntry(<betterwithmods:material:3>, 1); // Hemp Fiber
pool_village_blacksmith_custom_loot.addItemEntry(water_bottle, 1); // Water Bottle
pool_village_blacksmith_custom_loot.addItemEntry(<toughasnails:fruit_juice:1>, 1); // Apple Juice
pool_village_blacksmith_custom_loot.addItemEntry(<toughasnails:fruit_juice:2>, 1); // Beetroot Juice
pool_village_blacksmith_custom_loot.addItemEntry(<toughasnails:fruit_juice:2>, 1); // Cactus Juice
pool_village_blacksmith_custom_loot.addItemEntry(<toughasnails:fruit_juice:3>, 1); // Carrot Juice
pool_village_blacksmith_custom_loot.addItemEntry(<toughasnails:fruit_juice:8>, 1); // Melon Juice
pool_village_blacksmith_custom_loot.addItemEntry(<toughasnails:fruit_juice:9>, 1); // Pumpkin Juice
pool_simple_dungeon_custom_loot.addItemEntry(<minecraft:leather>, 1); // Leather
pool_simple_dungeon_custom_loot.addItemEntry(<betterwithmods:material:6>, 1); // Tanned Leather
pool_simple_dungeon_custom_loot.addItemEntry(<betterwithmods:material:8>, 1); // Leather Strap
pool_simple_dungeon_custom_loot.addItemEntry(<harvestcraft:hardenedleatheritem>, 1); // Hardened Leather
pool_simple_dungeon_custom_loot.addItemEntry(<literalascension:climbing_rope>, 1); // Climbing Rope
pool_simple_dungeon_custom_loot.addItemEntry(water_bottle, 1); // Water Bottle
pool_simple_dungeon_custom_loot.addItemEntry(<toughasnails:fruit_juice:1>, 1); // Apple Juice
pool_simple_dungeon_custom_loot.addItemEntry(<toughasnails:fruit_juice:2>, 1); // Beetroot Juice
pool_simple_dungeon_custom_loot.addItemEntry(<toughasnails:fruit_juice:2>, 1); // Cactus Juice
pool_simple_dungeon_custom_loot.addItemEntry(<toughasnails:fruit_juice:3>, 1); // Carrot Juice
pool_simple_dungeon_custom_loot.addItemEntry(<toughasnails:fruit_juice:8>, 1); // Melon Juice
pool_simple_dungeon_custom_loot.addItemEntry(<toughasnails:fruit_juice:9>, 1); // Pumpkin Juice

// Replace vanilla torches with realistic torches
pool_abandoned_mineshaft_pool2.removeItemEntry(<minecraft:torch>);
pool_abandoned_mineshaft_pool2.addItemEntryHelper(<realistictorches:TorchLit>, 15, 0, [Functions.setCount(4, 16)], []);

// Remove armors
pool_stronghold_corridor_main.removeItemEntry(<minecraft:iron_helmet>);
pool_village_blacksmith_main.removeItemEntry(<minecraft:iron_helmet>);
pool_stronghold_corridor_main.removeItemEntry(<minecraft:iron_chestplate>);
pool_village_blacksmith_main.removeItemEntry(<minecraft:iron_chestplate>);
pool_nether_bridge_main.removeItemEntry(<minecraft:golden_chestplate>);
pool_stronghold_corridor_main.removeItemEntry(<minecraft:iron_leggings>);
pool_village_blacksmith_main.removeItemEntry(<minecraft:iron_leggings>);
pool_stronghold_corridor_main.removeItemEntry(<minecraft:iron_boots>);
pool_village_blacksmith_main.removeItemEntry(<minecraft:iron_boots>);

// Remove tools
pool_spawn_bonus_chest_pool1.removeItemEntry(<minecraft:wooden_pickaxe>);
pool_spawn_bonus_chest_pool1.removeItemEntry(<minecraft:stone_pickaxe>);
pool_abandoned_mineshaft_main.removeItemEntry(<minecraft:iron_pickaxe>);
pool_stronghold_corridor_main.removeItemEntry(<minecraft:iron_pickaxe>);
pool_stronghold_crossing_main.removeItemEntry(<minecraft:iron_pickaxe>);
pool_village_blacksmith_main.removeItemEntry(<minecraft:iron_pickaxe>);
pool_end_city_treasure_main.removeItemEntry(<minecraft:iron_pickaxe>);
pool_end_city_treasure_main.removeItemEntry(<minecraft:diamond_pickaxe>);
pool_stronghold_corridor_main.removeItemEntry(<minecraft:iron_sword>);
pool_village_blacksmith_main.removeItemEntry(<minecraft:iron_sword>);
pool_end_city_treasure_main.removeItemEntry(<minecraft:iron_sword>);
pool_nether_bridge_main.removeItemEntry(<minecraft:golden_sword>);
pool_end_city_treasure_main.removeItemEntry(<minecraft:diamond_sword>);
pool_end_city_treasure_main.removeItemEntry(<minecraft:iron_shovel>);
pool_end_city_treasure_main.removeItemEntry(<minecraft:diamond_shovel>);
pool_spawn_bonus_chest_main.removeItemEntry(<minecraft:wooden_axe>);
pool_igloo_chest_main.removeItemEntry(<minecraft:stone_axe>);
pool_spawn_bonus_chest_main.removeItemEntry(<minecraft:stone_axe>);

// Remove easy resources
pool_village_blacksmith_main.removeItemEntry(<minecraft:diamond>);
pool_village_blacksmith_main.removeItemEntry(<minecraft:iron_ingot>);
pool_village_blacksmith_main.removeItemEntry(<minecraft:gold_ingot>);
