// Wearable Backpack
recipes.remove(<wearablebackpacks:backpack>);
recipes.addShaped(<wearablebackpacks:backpack>, [[<betterwithmods:material:8>, <ore:string>, <betterwithmods:material:8>], [<ore:leather>, null, <ore:leather>], [<ore:leather>, <ore:leather>, <ore:leather>]]);
<wearablebackpacks:backpack>.addShiftTooltip(format.lightPurple("Can be shrunk down with a magic pearl"));

// Chests
recipes.addShaped(<minecraft:chest>, [[<betterwithmods:wood_siding:0>, <betterwithmods:wood_siding:0>, <betterwithmods:wood_siding:0>], [<betterwithmods:wood_siding:0>, null, <betterwithmods:wood_siding:0>], [<betterwithmods:wood_siding:0>, <betterwithmods:wood_siding:0>, <betterwithmods:wood_siding:0>]]); // Add BWM variant

// Trapped chest
recipes.remove(<minecraft:trapped_chest>);
recipes.addShapeless(<minecraft:trapped_chest>, [<minecraft:chest>, <minecraft:tripwire_hook>]);

// Immersive Chest
recipes.remove(<immcraft:chest>);
recipes.addShaped(<immcraft:chest>, [[<ore:plankWood>, null, <ore:plankWood>], [<ore:plankWood>, null, <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);
<immcraft:chest>.addTooltip("No GUI, no problem");

// Immersive Cupboard
recipes.remove(<immcraft:cupboard>);
recipes.addShaped(<immcraft:cupboard>, [[null, <ore:plankWood>, <ore:plankWood>], [null, <minecraft:tripwire_hook>, <ore:plankWood>], [null, <ore:plankWood>, <ore:plankWood>]]);

// Immersive Shelf
recipes.remove(<immcraft:shelf>);
recipes.addShaped(<immcraft:shelf>, [[null, <ore:plankWood>, <ore:plankWood>], [null, null, <ore:plankWood>], [null, <ore:plankWood>, <ore:plankWood>]]);

// Immersive Bookshelf
recipes.remove(<immcraft:bookshelf>);
recipes.addShaped(<immcraft:bookshelf>, [[null, <ore:plankWood>, <ore:plankWood>], [null, <minecraft:book>, <ore:plankWood>], [null, <ore:plankWood>, <ore:plankWood>]]);

// Ore Dictionary for quests
<ore:immersiveStorage>.add(<immcraft:chest>);
<ore:immersiveStorage>.add(<immcraft:cupboard>);
<ore:immersiveStorage>.add(<immcraft:shelf>);
<ore:immersiveStorage>.add(<immcraft:bookshelf>);

// Bibliocraft chest oredict
<ore:chest>.add(<bibliocraft:FramedChest:0>);
<ore:chest>.add(<bibliocraft:FramedChest:1>);
<ore:chest>.add(<bibliocraft:FramedChest:2>);
<ore:chest>.add(<bibliocraft:FramedChest:3>);
<ore:chest>.add(<bibliocraft:FramedChest:4>);
<ore:chest>.add(<bibliocraft:FramedChest:5>);
<ore:chestWood>.add(<bibliocraft:FramedChest:0>);
<ore:chestWood>.add(<bibliocraft:FramedChest:1>);
<ore:chestWood>.add(<bibliocraft:FramedChest:2>);
<ore:chestWood>.add(<bibliocraft:FramedChest:3>);
<ore:chestWood>.add(<bibliocraft:FramedChest:4>);
<ore:chestWood>.add(<bibliocraft:FramedChest:5>);

// Quark to Bibliocraft colored chests
recipes.addShapeless(<bibliocraft:FramedChest:0>, [<minecraft:chest>, <bibliocraft:Label:0>]); // Oak
recipes.addShapeless(<bibliocraft:FramedChest:1>, [<quark:custom_chest:0>, <bibliocraft:Label:1>]); // Spruce
recipes.addShapeless(<bibliocraft:FramedChest:2>, [<quark:custom_chest:1>, <bibliocraft:Label:2>]); // Birch
recipes.addShapeless(<bibliocraft:FramedChest:3>, [<quark:custom_chest:2>, <bibliocraft:Label:3>]); // Jungle
recipes.addShapeless(<bibliocraft:FramedChest:4>, [<quark:custom_chest:3>, <bibliocraft:Label:4>]); // Acacia
recipes.addShapeless(<bibliocraft:FramedChest:5>, [<quark:custom_chest:4>, <bibliocraft:Label:5>]); // Dark Oak

// Refined Relocation
//recipes.remove(<refinedrelocation:sortingUpgrade>); // Cheaper recipe for sorting upgrade
//recipes.addShaped(<refinedrelocation:sortingUpgrade>, [[<stevescarts:ModuleComponents:9>], [<va:filteredhopper>]]);
//recipes.remove(<refinedrelocation:sortingChest>); // Remove chest recipes
//recipes.remove(<refinedrelocation:sorting_iron_chest:*>); // Remove chest recipes

// Add back Sorting Chest recipes
//recipes.addShapeless(<refinedrelocation:sortingChest>, [<ore:chestWood>, <refinedrelocation:sortingUpgrade>]);
//recipes.addShapeless(<refinedrelocation:sorting_iron_chest:0>, [<ironchest:BlockIronChest:0>, <refinedrelocation:sortingUpgrade>]);
//recipes.addShapeless(<refinedrelocation:sorting_iron_chest:1>, [<ironchest:BlockIronChest:1>, <refinedrelocation:sortingUpgrade>]);
//recipes.addShapeless(<refinedrelocation:sorting_iron_chest:2>, [<ironchest:BlockIronChest:2>, <refinedrelocation:sortingUpgrade>]);
//recipes.addShapeless(<refinedrelocation:sorting_iron_chest:3>, [<ironchest:BlockIronChest:3>, <refinedrelocation:sortingUpgrade>]);
//recipes.addShapeless(<refinedrelocation:sorting_iron_chest:4>, [<ironchest:BlockIronChest:4>, <refinedrelocation:sortingUpgrade>]);
//recipes.addShapeless(<refinedrelocation:sorting_iron_chest:5>, [<ironchest:BlockIronChest:5>, <refinedrelocation:sortingUpgrade>]);
//recipes.addShapeless(<refinedrelocation:sorting_iron_chest:6>, [<ironchest:BlockIronChest:6>, <refinedrelocation:sortingUpgrade>]);
//recipes.addShapeless(<refinedrelocation:sorting_iron_chest:7>, [<ironchest:BlockIronChest:7>, <refinedrelocation:sortingUpgrade>]);

// Iron Chests (halve metal cost)
// Wood > Iron > Gold > Diamond (8 iron, 8 gold, 2 diamond)
// Wood > Copper > Silver > Diamond (8 copper, 8 silver, 3 diamond)
// Remove recipes
recipes.remove(<ironchest:BlockIronChest:0>); // Iron
recipes.remove(<ironchest:BlockIronChest:1>); // Gold
recipes.remove(<ironchest:BlockIronChest:3>); // Copper
recipes.remove(<ironchest:BlockIronChest:4>); // Silver
recipes.remove(<ironchest:woodCopperUpgrade>);
recipes.remove(<ironchest:woodIronUpgrade>);
recipes.remove(<ironchest:copperIronUpgrade>);
recipes.remove(<ironchest:copperSilverUpgrade>);
recipes.remove(<ironchest:ironGoldUpgrade>);
recipes.remove(<ironchest:silverGoldUpgrade>);

// Add back chest recipes
recipes.addShaped(<ironchest:BlockIronChest:3>, [[null, <ore:ingotCopper>, null], [<ore:ingotCopper>, <ore:chestWood>, <ore:ingotCopper>], [null, <ore:ingotCopper>, null]]); // Wood to copper (8)
recipes.addShaped(<ironchest:BlockIronChest:0>, [[null, <ore:ingotIron>, null], [<ore:ingotIron>, <ore:chestWood>, <ore:ingotIron>], [null, <ore:ingotIron>, null]]); // Wood to iron (8)
recipes.addShaped(<ironchest:BlockIronChest:0>, [[null, <ore:plankWood>, null], [<ore:ingotIron>, <ironchest:BlockIronChest:3>, <ore:ingotIron>], [null, <ore:plankWood>, null]]); // Copper to iron (4)
recipes.addShaped(<ironchest:BlockIronChest:4>, [[null, <ore:ingotSilver>, null], [<ore:ingotSilver>, <ironchest:BlockIronChest:3>, <ore:ingotSilver>], [null, <ore:ingotSilver>, null]]); // Copper to silver (8)
recipes.addShaped(<ironchest:BlockIronChest:4>, [[null, <ore:plankWood>, null], [<ore:ingotSilver>, <ironchest:BlockIronChest:0>, <ore:ingotSilver>], [null, <ore:plankWood>, null]]); // Iron to silver (4)
recipes.addShaped(<ironchest:BlockIronChest:1>, [[null, <ore:ingotGold>, null], [<ore:ingotGold>, <ironchest:BlockIronChest:0>, <ore:ingotGold>], [null, <ore:ingotGold>, null]]); // Iron to gold (8)
recipes.addShaped(<ironchest:BlockIronChest:1>, [[null, <ore:plankWood>, null], [<ore:ingotGold>, <ironchest:BlockIronChest:4>, <ore:ingotGold>], [null, <ore:plankWood>, null]]); // Silver to gold (4)

// Add direct upgrade recipes
recipes.addShaped(<ironchest:woodCopperUpgrade>, [[null, <ore:ingotCopper>, null], [<ore:ingotCopper>, <tconstruct:pattern>, <ore:ingotCopper>], [null, <ore:ingotCopper>, null]]); // (8)
recipes.addShaped(<ironchest:woodIronUpgrade>, [[null, <ore:ingotIron>, null], [<ore:ingotIron>, <tconstruct:pattern>, <ore:ingotIron>], [null, <ore:ingotIron>, null]]); // (8)
recipes.addShaped(<ironchest:copperIronUpgrade>, [[null, <ore:plankWood>, null], [<ore:ingotIron>, <tconstruct:pattern>, <ore:ingotIron>], [null, <ore:plankWood>, null]]); // (4)
recipes.addShaped(<ironchest:copperSilverUpgrade>, [[null, <ore:ingotSilver>, null], [<ore:ingotSilver>, <tconstruct:pattern>, <ore:ingotSilver>], [null, <ore:ingotSilver>, null]]); // (8)
recipes.addShaped(<ironchest:ironGoldUpgrade>, [[null, <ore:ingotGold>, null], [<ore:ingotGold>, <tconstruct:pattern>, <ore:ingotGold>], [null, <ore:ingotGold>, null]]); // (8)
recipes.addShaped(<ironchest:silverGoldUpgrade>, [[null, <ore:plankWood>, null], [<ore:ingotGold>, <tconstruct:pattern>, <ore:ingotGold>], [null, <ore:plankWood>, null]]); // (4)
