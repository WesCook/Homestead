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
<ore:slopMilk>.add(<animania:sheep_bucket_milk>);
<ore:slopMilk>.add(<animania:goat_bucket_milk>);

// Slop recipe
recipes.remove(<animania:bucket_slop>);
recipes.addShapeless(<animania:bucket_slop>, [<ore:slopMilk>.noReturn(), <ore:listAllveggie>, <ore:listAllveggie>]);
recipes.addShapeless(<animania:bucket_slop>, [<ore:slopMilk>.noReturn(), <ore:listAllveggie>, <ore:bread>]);
recipes.addShapeless(<animania:bucket_slop>, [<harvestcraft:freshmilkitem>, <minecraft:bucket>, <ore:listAllveggie>, <ore:listAllveggie>]);
recipes.addShapeless(<animania:bucket_slop>, [<harvestcraft:freshmilkitem>, <minecraft:bucket>, <ore:listAllveggie>, <ore:bread>]);

// Slop tooltip
<animania:bucket_slop>.addTooltip("Requires milk and two veggies (Hold shift for more)");
<animania:bucket_slop>.addShiftTooltip("- Fresh milk can also be used, but requires");
<animania:bucket_slop>.addShiftTooltip("  an empty bucket to mix slop with");

// New market recipes
recipes.remove(<harvestcraft:market>);
recipes.remove(<farmingforblockheads:market>);

// Market retains original Harvestcraft recipe
recipes.addShaped(<farmingforblockheads:market>, [[<ore:plankWood>, <ore:blockWool>, <ore:plankWood>], [<ore:blockWool>, <ore:gemEmerald>, <ore:blockWool>], [<ore:plankWood>, <ore:blockWool>, <ore:plankWood>]]);

// Allow conversion between Harvestcraft Market and FarmingForBlockheads market
// Leaving in the old item for those servers who don't update their quest books
recipes.addShapeless(<farmingforblockheads:market>, [<harvestcraft:market>]);
recipes.addShapeless(<harvestcraft:market>, [<farmingforblockheads:market>]);

// Harvestcraft tooltips
<harvestcraft:market>.addTooltip(format.red("Outdated. Can be crafted into improved market."));
<farmingforblockheads:market>.addTooltip("Buy seeds and saplings");
<harvestcraft:shippingbin>.addTooltip("Sell your produce for emeralds");
