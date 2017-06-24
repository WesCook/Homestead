// Constants
val water_bottle = <minecraft:potion>.withTag({Potion: "minecraft:water"});
val wooden_gear = <betterwithmods:material:0>;

// Camp fire uses rocks instead of cobble
recipes.remove(<toughasnails:campfire>);
recipes.addShaped(<toughasnails:campfire>, [[null, <ore:logWood>, null], [<ore:logWood>, <ore:logWood>, <ore:logWood>], [<immcraft:rock>, <immcraft:rock>, <immcraft:rock>]]);
<toughasnails:campfire>.addShiftTooltip("Will you link the fire?");

// Potion Tooltips
<minecraft:potion>.withTag({Potion: "minecraft:healing"}).addTooltip("Estus Flask");
<minecraft:potion>.withTag({Potion: "minecraft:strong_healing"}).addTooltip("Estus Flask +1");
<minecraft:potion>.withTag({Potion: "minecraft:regeneration"}).addShiftTooltip("Resplendent Life");
<minecraft:potion>.withTag({Potion: "minecraft:strong_regeneration"}).addShiftTooltip("Bountiful Sunlight");

// Bed Tooltips
<minecraft:bed>.addShiftTooltip("Like a dream...");
<quark:colored_bed_item:*>.addShiftTooltip("Like a dream...");

// Cheaper charcoal filters
recipes.remove(<toughasnails:charcoal_filter>);
recipes.addShaped(<toughasnails:charcoal_filter> * 3, [[<ore:paper>], [<ore:charcoal>], [<ore:paper>]]);
recipes.addShaped(<toughasnails:charcoal_filter> * 6, [[<ore:fabricHemp>], [<ore:charcoal>], [<ore:fabricHemp>]]);

// Rain collector
recipes.remove(<toughasnails:rain_collector>);
recipes.addShaped(<toughasnails:rain_collector>, [[<ore:ingotIron>, <minecraft:iron_bars>, <ore:ingotIron>], [<ore:cobblestone>, null, <ore:cobblestone>], [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]]);

// Cooling Coil
recipes.remove(<toughasnails:temperature_coil:0>);
recipes.addShaped(<toughasnails:temperature_coil:0>, [[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>], [<ore:blockGlass>, <toughasnails:freeze_rod>, <ore:blockGlass>], [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]]);

// Heating Coil
recipes.remove(<toughasnails:temperature_coil:1>);
recipes.addShaped(<toughasnails:temperature_coil:1>, [[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>], [<ore:blockGlass>, <betterwithmods:material:27>, <ore:blockGlass>], [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]]);

// Thirst Amounts
water_bottle.addTooltip("Restores 3.5 thirst"); // Water Bottle
<minecraft:milk_bucket>.addTooltip("Restores 3 thirst"); // Milk Bucket
<toughasnails:water_bottle:0>.addTooltip("Restores 1.5 thirst"); // Dirty Water
<toughasnails:water_bottle:1>.addTooltip("Restores 2.5 thirst"); // Filtered Water
<toughasnails:fruit_juice:0>.addTooltip("Restores 4 thirst"); // Apple
<toughasnails:fruit_juice:1>.addTooltip("Restores 5 thirst"); // Beetroot
<toughasnails:fruit_juice:2>.addTooltip("Restores 4.5 thirst"); // Cactus
<toughasnails:fruit_juice:3>.addTooltip("Restores 4 thirst"); // Carrot
<toughasnails:fruit_juice:4>.addTooltip("Restores 6 thirst"); // Chorus
<toughasnails:fruit_juice:5>.addTooltip("Restores 8 thirst"); // Glistering Melon
<toughasnails:fruit_juice:6>.addTooltip("Restores 10 thirst"); // Golden Apple
<toughasnails:fruit_juice:7>.addTooltip("Restores 7 thirst"); // Golden Carrot
<toughasnails:fruit_juice:8>.addTooltip("Restores 4 thirst"); // Melon
<toughasnails:fruit_juice:9>.addTooltip("Restores 3.5 thirst"); // Pumpkin

// Cauldron
recipes.remove(<betterwithmods:single_machine:3>);
recipes.addShaped(<betterwithmods:single_machine:3>, [[<ore:ingotIron>, <ore:bone>, <ore:ingotIron>], [<ore:ingotIron>, <ore:listAllwater>, <ore:ingotIron>], [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]]);
recipes.addShaped(<betterwithmods:single_machine:3>, [[<ore:ingotCopper>, <ore:bone>, <ore:ingotCopper>], [<ore:ingotCopper>, <ore:listAllwater>, <ore:ingotCopper>], [<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>]]);

// Strainer Base
recipes.remove(<waterstrainer:strainer_base>);
recipes.addShaped(<waterstrainer:strainer_base>, [[wooden_gear, <minecraft:wooden_pressure_plate>, wooden_gear], [<ore:plankWood>, <ore:chestWood>, <ore:plankWood>]]);

// Survivalist's Strainer (uses non-renewable rocks to discourage easy iron farming)
recipes.remove(<waterstrainer:strainer_survivalist>);
recipes.addShaped(<waterstrainer:strainer_survivalist>, [[<immcraft:rock>, <ore:string>, <immcraft:rock>], [<ore:stickWood>, <ore:string>, <ore:stickWood>], [<immcraft:rock>, <ore:string>, <immcraft:rock>]]);

// Ice Cube tooltip
<toughasnails:ice_cube>.addTooltip("Harvested occasionally from ice blocks");

// Sticks/Rocks tooltips
<immcraft:rock>.addTooltip("Found on the ground");
<immcraft:rock>.addTooltip("Can be thrown as a weapon");
