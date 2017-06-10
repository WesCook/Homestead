// Add easier journal recipe
mods.astralsorcery.Altar.removeAltarRecipe(<astralsorcery:ItemJournal>, 0); // Remove altar crafting
recipes.addShapeless(<astralsorcery:ItemJournal>, [<minecraft:book>, <astralsorcery:ItemCraftingComponent:0>]); // Add regular crafting

// Marble Oredict for most Astral Sorcery recipes
<ore:stoneMarble>.add(<undergroundbiomes:metamorphic_stone:2>);
<ore:blockMarble>.add(<undergroundbiomes:metamorphic_stone:2>);

// Marble Tooltips for clarity
<astralsorcery:BlockMarble:0>.addTooltip("Able to reflect starlight");
<undergroundbiomes:metamorphic_stone:2>.addTooltip("Can be crafted into another type of marble");

// Direct Marble conversion for any edge cases
<ore:stone>.remove(<undergroundbiomes:metamorphic_stone:2>); // Remove ore dict so 1 marble doesn't become a button
recipes.addShapeless(<astralsorcery:BlockMarble:0>, [<undergroundbiomes:metamorphic_stone:2>]); // Add marble > marble conversion

// Sooty marble recipe seems broken.  Recreate it.
recipes.remove(<astralsorcery:BlockBlackMarble>);
recipes.addShaped(<astralsorcery:BlockBlackMarble> * 8, [[<ore:stoneMarble>, <ore:stoneMarble>, <ore:stoneMarble>], [<ore:stoneMarble>, <minecraft:coal>, <ore:stoneMarble>], [<ore:stoneMarble>, <ore:stoneMarble>, <ore:stoneMarble>]]);

// Floating Crystal tooltip
<astralsorcery:BlockCollectorCrystal>.addTooltip("Shrine on you crazy diamond");

// Weirding Gadget - Chunk Loader
recipes.remove(<weirdinggadget:weirding_gadget>);
recipes.addShaped(<weirdinggadget:weirding_gadget>, [[null, <minecraft:ender_eye>, null], [<stevescarts:ModuleComponents:9>, <minecraft:enchanting_table>, <stevescarts:ModuleComponents:9>], [<ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>]]);
