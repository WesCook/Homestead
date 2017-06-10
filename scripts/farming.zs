// Remove truffle auction table
recipes.remove(<rockhounding_surface:truffleAuction>);

// Leads only require string, not slime
recipes.remove(<minecraft:lead>);
recipes.addShaped(<minecraft:lead>, [[<ore:string>, <ore:string>, null], [<ore:string>, <ore:string>, null], [null, null, <ore:string>]]);

// Make nests use hay slabs
recipes.remove(<animania:block_nest>);
recipes.addShaped(<animania:block_nest>, [[<minecraft:hay_block>, <minecraft:hay_block>]]);

// Remove dung from brown oredict
<ore:dyeBrown>.remove(<betterwithmods:material:5>);

// Increase frequency of wheat seeds
vanilla.seeds.removeSeed(<minecraft:wheat_seeds>);
vanilla.seeds.addSeed(<minecraft:wheat_seeds>.weight(90));

// Increase frequency of hemp seeds
vanilla.seeds.removeSeed(<immersiveengineering:seed:0>);
vanilla.seeds.addSeed(<immersiveengineering:seed:0>.weight(140));

// Remove Infinite water (use sink instead)
recipes.remove(<harvestcraft:well>);

// These are also seeds
<ore:listAllseed>.add(<immersiveengineering:seed:0>);
<ore:listAllseeds>.remove(<rockhounding_surface:ricegrassSeeds>); // Mod typo
<ore:listAllseed>.add(<rockhounding_surface:ricegrassSeeds>);

// Remove Charcoal Pit fertilizer
recipes.remove(<charcoal_pit:item_fertilizer>);

// Craft ash into potash
recipes.addShapeless(<betterwithmods:material:21> * 3, [<ore:dustAsh>, <ore:listAllwater>]);

// Ash + Bone recipe
recipes.addShapeless(<minecraft:dye:15> * 5, [<ore:dustAsh>, <ore:bone>]);

// Slightly less bonemeal from Mill
mods.betterwithmods.Mill.remove(<minecraft:dye:15>);
mods.betterwithmods.Mill.add(<minecraft:dye:15> * 4, null, [<ore:bone>]);

// Valid slop milk types (exclude HarvestCraft fresh milk as it doesn't use a bucket)
<ore:slopMilk>.add(<minecraft:milk_bucket>);
<ore:slopMilk>.add(<animania:friesian_bucket_milk>);
<ore:slopMilk>.add(<animania:holstein_bucket_milk>);

// Slop recipe
recipes.remove(<animania:bucket_slop>);
recipes.addShapeless(<animania:bucket_slop>, [<ore:slopMilk>, <ore:listAllveggie>, <ore:listAllveggie>]);
recipes.addShapeless(<animania:bucket_slop>, [<ore:slopMilk>, <ore:listAllveggie>, <ore:bread>]);
recipes.addShapeless(<animania:bucket_slop>, [<harvestcraft:freshmilkitem>, <minecraft:bucket>, <ore:listAllveggie>, <ore:listAllveggie>]);
recipes.addShapeless(<animania:bucket_slop>, [<harvestcraft:freshmilkitem>, <minecraft:bucket>, <ore:listAllveggie>, <ore:bread>]);

// Slop tooltip
<animania:bucket_slop>.addTooltip("Requires milk and two veggies (Hold shift for more)");
<animania:bucket_slop>.addShiftTooltip("- Fresh milk can also be used, but requires");
<animania:bucket_slop>.addShiftTooltip("  an empty bucket to mix slop with");

// Corn compatibility
//<ore:cropCorn>.add(<simplecorn:corncob>);
//<ore:listAllveggie>.add(<simplecorn:corncob>);
//<ore:listAllveggie>.add(<simplecorn:roastedcorn>);
//<ore:listAllveggie>.add(<simplecorn:cornchowder>);
//<ore:listAllveggie>.add(<simplecorn:chickencornchowder>);
//<ore:seedCorn>.add(<simplecorn:kernels>);
//<ore:listAllseed>.add(<simplecorn:kernels>);

// Redo Simple Corn recipes to support corn oredict
//furnace.remove(<simplecorn:roastedcorn>);
//furnace.addRecipe(<simplecorn:roastedcorn>, <ore:cropCorn>);
//recipes.remove(<simplecorn:cornchowder>);
//recipes.addShapeless(<simplecorn:cornchowder>, [<minecraft:bowl>, <ore:listAllmilk>, <ore:seedCorn>, <ore:seedCorn>]);
//recipes.remove(<simplecorn:chickencornchowder>);
//recipes.addShapeless(<simplecorn:chickencornchowder>, [<minecraft:bowl>, <ore:listAllmilk>, <ore:seedCorn>, <ore:seedCorn>, <ore:listAllchickencooked>]);
//recipes.addShapeless(<simplecorn:chickencornchowder>, [<simplecorn:cornchowder>, <ore:listAllchickencooked>]);
//mods.betterwithmods.Cauldron.remove(<harvestcraft:popcornitem>);
