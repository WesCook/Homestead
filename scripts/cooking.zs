// Imports
import minetweaker.item.IItemStack;

// Constants
val water_bottle = <minecraft:potion>.withTag({Potion: "minecraft:water"});
val clay_water_bucket = <ceramics:clay_bucket>.withTag({fluids: {FluidName: "water", Amount: 1000}});

////////////////////
// Ore Dictionary //
////////////////////

// Remove Pam's flour in favor of BWM
recipes.remove(<harvestcraft:flouritem>);
<ore:foodFlour>.remove(<harvestcraft:flouritem>);
<ore:flourEqualswheat>.remove(<harvestcraft:flouritem>);

// Remove Rockhounding flour in favor of BWM
recipes.remove(<rockhounding_surface:gypsumItems:5>);
<ore:foodFlour>.remove(<rockhounding_surface:gypsumItems:5>);
<ore:flourEqualswheat>.remove(<rockhounding_surface:gypsumItems:5>);

// Support ricegrass as a wheat
mods.betterwithmods.Mill.add(<betterwithmods:material:37>, null, [<rockhounding_surface:ricegrassItem>]);

// Milk compatibility
<ore:listAllmilk>.add(<minecraft:milk_bucket>);
<ore:listAllmilk>.add(<animania:friesian_bucket_milk>);
<ore:listAllmilk>.add(<animania:holstein_bucket_milk>);
<ore:listAllmilk>.add(<ceramics:clay_bucket:1>);
<ore:listAllmilk>.remove(<harvestcraft:soymilkitem>);

// Remove Harvestcraft cheese in favor of Animania's
recipes.remove(<harvestcraft:cheeseitem>);
<ore:foodCheese>.remove(<harvestcraft:cheeseitem>);

// Use raw eggs in recipes instead
<ore:egg>.remove(<minecraft:egg>);
<ore:egg>.remove(<animania:brown_egg>);
<ore:egg>.add(<betterwithmods:raw_egg>);
<ore:listAllegg>.remove(<animania:brown_egg>);
<ore:listAllegg>.remove(<minecraft:egg>);
<ore:listAllegg>.add(<betterwithmods:raw_egg>);

// New oredict for uncracked eggs
<ore:eggUncracked>.add(<minecraft:egg>);
<ore:eggUncracked>.add(<animania:brown_egg>);

// Create raw eggs
recipes.addShapeless(<betterwithmods:raw_egg>, [<harvestcraft:mixingbowlitem>, <ore:eggUncracked>]);

// Create boiled eggs
recipes.remove(<harvestcraft:boiledeggitem>);
recipes.addShapeless(<harvestcraft:boiledeggitem>, [<harvestcraft:potitem>, <ore:eggUncracked>]);

// New mushroom oredict
<ore:mushroom>.add(<minecraft:brown_mushroom>);
<ore:mushroom>.add(<minecraft:red_mushroom>);

// Add all smoothies to oredict
<ore:listAllsmoothie>.add(<harvestcraft:apricotsmoothieitem>);
<ore:listAllsmoothie>.add(<harvestcraft:figsmoothieitem>);
<ore:listAllsmoothie>.add(<harvestcraft:grapefruitsmoothieitem>);
<ore:listAllsmoothie>.add(<harvestcraft:persimmonsmoothieitem>);
<ore:listAllsmoothie>.add(<harvestcraft:applesmoothieitem>);
<ore:listAllsmoothie>.add(<harvestcraft:coconutsmoothieitem>);
<ore:listAllsmoothie>.add(<harvestcraft:cranberrysmoothieitem>);
<ore:listAllsmoothie>.add(<harvestcraft:grapesmoothieitem>);
<ore:listAllsmoothie>.add(<harvestcraft:pearsmoothieitem>);
<ore:listAllsmoothie>.add(<harvestcraft:plumsmoothieitem>);
<ore:listAllsmoothie>.add(<rockhounding_surface:purplepear_smoothie>);


/////////////
// Recipes //
/////////////

// Regular and clay buckets grant 4 fresh water
recipes.remove(<harvestcraft:freshwateritem>);
recipes.addShapeless(<harvestcraft:freshwateritem> * 4, [<minecraft:water_bucket>]);
recipes.addShapeless(<harvestcraft:freshwateritem> * 4, [clay_water_bucket]);

// Salt is easier to make
recipes.remove(<harvestcraft:saltitem>);
recipes.addShapeless(<harvestcraft:saltitem> * 4, [<ore:toolPot>, <minecraft:water_bucket>]);
recipes.addShapeless(<harvestcraft:saltitem>, [<ore:toolPot>, <harvestcraft:freshwateritem>]);

// Remove Cooking for Blockheads books
recipes.remove(<cookingforblockheads:recipeBook:*>);
furnace.remove(<cookingforblockheads:recipeBook:*>);

// Simplify Cooking Table recipe
recipes.remove(<cookingforblockheads:cookingTable>);
recipes.addShaped(<cookingforblockheads:cookingTable>, [[<minecraft:hardened_clay>, <minecraft:hardened_clay>, <minecraft:hardened_clay>], [<ore:logWood>, <ore:workbench>, <ore:logWood>], [<ore:logWood>, <ore:logWood>, <ore:logWood>]]);

// Simplify Oven recipe
recipes.remove(<cookingforblockheads:oven>);
recipes.addShaped(<cookingforblockheads:oven>, [[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>], [<ore:ingotIron>, <minecraft:furnace>, <ore:ingotIron>], [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]]);

// Simplify kitchen counter recipe
recipes.remove(<cookingforblockheads:counter>);
recipes.addShaped(<cookingforblockheads:counter>, [[<minecraft:hardened_clay>], [<ore:chestWood>]]);

// Simplify fridge recipe
recipes.remove(<cookingforblockheads:fridge>);
recipes.addShaped(<cookingforblockheads:fridge> * 2, [[<ore:plankWood>, <ore:ingotIron>], [<ore:plankWood>, <ore:ingotIron>], [<ore:plankWood>, <ore:ingotIron>]]);

// Remove Bakeware Recipe
recipes.removeShapeless(<minecraft:bread>, [<harvestcraft:bakewareitem>, <harvestcraft:doughitem>]);
recipes.removeShapeless(<harvestcraft:toastitem>, [<harvestcraft:bakewareitem>, <minecraft:bread>]);
recipes.removeShapeless(<harvestcraft:roastedpumpkinseedsitem>, [<harvestcraft:bakewareitem>, <minecraft:pumpkin_seeds>]);
recipes.removeShapeless(<harvestcraft:grilledmushroomitem>, [<harvestcraft:bakewareitem>, <minecraft:brown_mushroom>]);
recipes.removeShapeless(<harvestcraft:grilledmushroomitem>, [<harvestcraft:bakewareitem>, <minecraft:red_mushroom>]);
recipes.removeShapeless(<harvestcraft:grilledasparagusitem>, [<harvestcraft:bakewareitem>, <harvestcraft:asparagusitem>]);
recipes.removeShapeless(<harvestcraft:ricecakeitem>, [<harvestcraft:bakewareitem>, <harvestcraft:riceitem>]);
recipes.removeShapeless(<harvestcraft:popcornitem>, [<harvestcraft:bakewareitem>, <harvestcraft:cornitem>]);
recipes.removeShapeless(<harvestcraft:bakedsweetpotatoitem>, [<harvestcraft:bakewareitem>, <harvestcraft:sweetpotatoitem>]);
recipes.removeShapeless(<harvestcraft:grilledeggplantitem>, [<harvestcraft:bakewareitem>, <harvestcraft:eggplantitem>]);
recipes.removeShapeless(<harvestcraft:raisinsitem>, [<harvestcraft:bakewareitem>, <harvestcraft:grapeitem>]);
recipes.removeShapeless(<harvestcraft:toastedcoconutitem>, [<harvestcraft:bakewareitem>, <harvestcraft:coconutitem>]);
recipes.removeShapeless(<harvestcraft:vanillaitem>, [<harvestcraft:bakewareitem>, <harvestcraft:vanillabeanitem>]);
recipes.removeShapeless(<harvestcraft:roastedchestnutitem>, [<harvestcraft:bakewareitem>, <harvestcraft:chestnutitem>]);
recipes.removeShapeless(<harvestcraft:toastedsesameseedsitem>, [<harvestcraft:bakewareitem>, <harvestcraft:sesameseedsitem>]);

// Replace Backware recipes with furnace instead
furnace.addRecipe(<minecraft:bread>, <harvestcraft:doughitem>);
furnace.addRecipe(<harvestcraft:toastitem>, <minecraft:bread>);
furnace.addRecipe(<harvestcraft:roastedpumpkinseedsitem>, <minecraft:pumpkin_seeds>);
furnace.addRecipe(<harvestcraft:grilledmushroomitem>, <minecraft:brown_mushroom>);
furnace.addRecipe(<harvestcraft:grilledmushroomitem>, <minecraft:red_mushroom>);
furnace.addRecipe(<harvestcraft:grilledasparagusitem>, <harvestcraft:asparagusitem>);
furnace.addRecipe(<harvestcraft:ricecakeitem>, <harvestcraft:riceitem>);
furnace.addRecipe(<harvestcraft:popcornitem>, <harvestcraft:cornitem>);
furnace.addRecipe(<harvestcraft:bakedsweetpotatoitem>, <harvestcraft:sweetpotatoitem>);
furnace.addRecipe(<harvestcraft:grilledeggplantitem>, <harvestcraft:eggplantitem>);
furnace.addRecipe(<harvestcraft:raisinsitem>, <harvestcraft:grapeitem>);
furnace.addRecipe(<harvestcraft:toastedcoconutitem>, <harvestcraft:coconutitem>);
furnace.addRecipe(<harvestcraft:vanillaitem>, <harvestcraft:vanillabeanitem>);
furnace.addRecipe(<harvestcraft:roastedchestnutitem>, <harvestcraft:chestnutitem>);
furnace.addRecipe(<harvestcraft:toastedsesameseedsitem>, <harvestcraft:sesameseedsitem>);

// Remove easy cake recipe
recipes.remove(<minecraft:cake>);
recipes.remove(<betterwithmods:raw_pastry:0>);
recipes.addShaped(<betterwithmods:raw_pastry:0>, [[<ore:listAllsugar>, <ore:listAllsugar>, <ore:listAllsugar>], [<ore:listAllmilk>, <ore:egg>, <ore:listAllmilk>], [<ore:foodFlour>, <ore:foodFlour>, <ore:foodFlour>]]);

// Remove easy bread recipes
recipes.remove(<minecraft:bread>); // Removes 3x wheat and ricegrass
furnace.remove(<minecraft:bread>, <ore:foodFlour>); // Remove plain flour recipe (requires dough)
mods.betterwithmods.Cauldron.remove(<minecraft:bread>, [<ore:foodFlour>]); // Remove bread from cauldron

// Remove easy pumpkin pie recipe
recipes.remove(<minecraft:pumpkin_pie>);

// Truffle Vodka requires clean water
recipes.remove(<rockhounding_surface:truffle_vodka>);
recipes.addShapeless(<rockhounding_surface:truffle_vodka>, [water_bottle, <ore:cropTruffle>, <ore:cropPotato>, <minecraft:sugar>]);

// Use HarvestCraft's Scrambled Eggs
recipes.remove(<betterwithmods:raw_scrambled_egg>);
furnace.remove(<betterwithmods:cooked_scrambled_egg>);
mods.betterwithmods.Cauldron.remove(<betterwithmods:cooked_scrambled_egg>);

// Prefer Animania's omelette over HarvestCraft
recipes.remove(<harvestcraft:omeletitem>);

// Make Animania's omelette harder to craft
furnace.remove(<animania:plain_omelette>);
recipes.addShapeless(<animania:plain_omelette>, [<harvestcraft:skilletitem>, <ore:egg>, <ore:listAllmilk>]);

// Remove Rockhounding Truffled Omelette for Animania's Truffle Omelette
recipes.remove(<rockhounding_surface:truffle_omelette>);

// Remove BetterWithMods omelette too
recipes.remove(<betterwithmods:raw_omelet>);
furnace.remove(<betterwithmods:cooked_omelet>);
mods.betterwithmods.Cauldron.remove(<betterwithmods:cooked_omelet>);

// Truffles
<ore:cropTruffle>.add(<animania:truffle>);
<ore:cropTruffle>.remove(<rockhounding_surface:truffles:*>);

// Missing Harvestcraft cook food recipes
furnace.addRecipe(<harvestcraft:venisoncookeditem>, <harvestcraft:venisonrawitem>); // Veniso
furnace.addRecipe(<harvestcraft:cookedtofenisonitem>, <harvestcraft:rawtofenisonitem>); // Fenison
furnace.addRecipe(<harvestcraft:cookedtofurkeyitem>, <harvestcraft:rawtofurkeyitem>); // Tofurkey
furnace.addRecipe(<harvestcraft:cookedtofabbititem>, <harvestcraft:rawtofabbititem>); // Tofabbit
furnace.addRecipe(<harvestcraft:cookedtofickenitem>, <harvestcraft:rawtofickenitem>); // Toficken
furnace.addRecipe(<harvestcraft:cookedtofuttonitem>, <harvestcraft:rawtofuttonitem>); // Tofutton
furnace.addRecipe(<harvestcraft:cookedtofeegitem>, <harvestcraft:rawtofeegitem>); // Okedtofeeg
furnace.addRecipe(<harvestcraft:cookedtofishitem>, <harvestcraft:rawtofishitem>); // Okedtofish
furnace.addRecipe(<harvestcraft:cookedtofaconitem>, <harvestcraft:rawtofaconitem>); // Edtofacon
furnace.addRecipe(<harvestcraft:cookedtofeakitem>, <harvestcraft:rawtofeakitem>); // Okedtofeak

// Iced tea uses real ice
recipes.addShapeless(<harvestcraft:raspberryicedteaitem>, [<harvestcraft:tealeafitem>, <toughasnails:ice_cube>, <harvestcraft:raspberryitem>]);


/////////////////
// Edible Bugs //
/////////////////

// Remove machines
recipes.remove(<ediblebugs:bugZapper>);
recipes.remove(<ediblebugs:EBfryerIdle>);
recipes.remove(<ediblebugs:vegetableoil>);

// Bugs are cooked in furnace instead

// Sand
furnace.addRecipe(<ediblebugs:cookedBugs:0>, <ediblebugs:sandBugs:0>); // Scarab
furnace.addRecipe(<ediblebugs:cookedBugs:1>, <ediblebugs:sandBugs:1>); // Centipede
furnace.addRecipe(<ediblebugs:cookedBugs:2>, <ediblebugs:sandBugs:2>); // Scorpion
furnace.addRecipe(<ediblebugs:cookedBugs:3>, <ediblebugs:sandBugs:3>); // Camel Spider

// Termites
furnace.addRecipe(<ediblebugs:cookedBugs:4>, <ediblebugs:termite>); // Ground Termite

// Wood
furnace.addRecipe(<ediblebugs:cookedBugs:5>, <ediblebugs:woodBugs:0>); // Witchetty Grub
furnace.addRecipe(<ediblebugs:cookedBugs:6>, <ediblebugs:woodBugs:1>); // Jumil Bug
furnace.addRecipe(<ediblebugs:cookedBugs:7>, <ediblebugs:woodBugs:2>); // Wood Termite
furnace.addRecipe(<ediblebugs:cookedBugs:8>, <ediblebugs:woodBugs:3>); // Carpenter Ant

// Dirt
furnace.addRecipe(<ediblebugs:cookedBugs:9>, <ediblebugs:dirtBugs:0>); // Dung Beetle
furnace.addRecipe(<ediblebugs:cookedBugs:10>, <ediblebugs:dirtBugs:1>); // Sow Bug
furnace.addRecipe(<ediblebugs:cookedBugs:11>, <ediblebugs:dirtBugs:2>); // Slugs
furnace.addRecipe(<ediblebugs:cookedBugs:12>, <ediblebugs:dirtBugs:3>); // Fire Ant

// Grass
furnace.addRecipe(<ediblebugs:cookedBugs:13>, <ediblebugs:grassBugs:0>); // Aphid
furnace.addRecipe(<ediblebugs:cookedBugs:14>, <ediblebugs:grassBugs:1>); // Cricket
furnace.addRecipe(<ediblebugs:cookedBugs:15>, <ediblebugs:grassBugs:2>); // Locust
furnace.addRecipe(<ediblebugs:cookedBugs:16>, <ediblebugs:grassBugs:3>); // Grasshopper


//////////////
// Tooltips //
//////////////

// Tooltips
<betterwithmods:creeper_oyster>.addTooltip("Sheared from creepers");
<harvestcraft:wafflesitem>.addShiftTooltip("Don't you mean carrots?");
