// Constants
val blasting_oil = <betterwithmods:material:29>;

// Remove Railcraft Saltpeter oredict
<ore:dustSaltpeter>.remove(<railcraft:dust:2>);

// Remove Railcraft Saltpeter > Niter recipe
mods.immersiveengineering.Crusher.removeRecipe(<betterwithmods:material:26>);

// Fire Charge made cheaper
recipes.remove(<minecraft:fire_charge>);
recipes.addShapeless(<minecraft:fire_charge> * 3, [<minecraft:coal>, <ore:dustSaltpeter>]);
recipes.addShapeless(<minecraft:fire_charge> * 3, [<ore:charcoal>, <ore:dustSaltpeter>]);

// Removing explosive ingredient recipes
recipes.remove(<wtfcore:itemSulfur>);
recipes.remove(<minecraft:gunpowder>);
mods.betterwithmods.Cauldron.remove(<minecraft:gunpowder>);
mods.betterwithmods.Cauldron.remove(<betterwithmods:material:28>); // Explosive fuse
mods.betterwithmods.Cauldron.remove(<betterwithmods:material:29>); // Blasting Oil in crucible

// Adding explosive ingredient recipes
recipes.addShapeless(<minecraft:gunpowder> * 2, [<ore:dustSulfur>, <ore:dustSaltpeter>, <betterwithmods:material:39>]);
recipes.addShapeless(blasting_oil * 2, [<minecraft:gunpowder>, <ore:dustWood>]); // Blasting oil

// Removing explosive recipes
recipes.remove(<immersiveengineering:woodenDevice0:4>); // Gunpowder Barrel
recipes.remove(<tconstruct:throwball:1>); // Remove EFLN (has 4x yields of dense ore)
recipes.remove(<minecraft:tnt>);
recipes.remove(<betterwithmods:mining_charge>);
recipes.remove(<betterwithmods:dynamite>);

// Adding back explosive recipes
recipes.addShaped(<minecraft:tnt>, [[blasting_oil, blasting_oil], [blasting_oil, blasting_oil]]);
recipes.addShaped(<betterwithmods:mining_charge> * 4, [[blasting_oil, blasting_oil, blasting_oil]]);
recipes.addShaped(<immersiveengineering:woodenDevice0:4> * 8, [[blasting_oil, blasting_oil, blasting_oil], [blasting_oil, <immersiveengineering:woodenDevice0:0>, blasting_oil], [blasting_oil, blasting_oil, blasting_oil]]);

// Adding oredict
<ore:dustSaltpeter>.add(<wtfcore:itemNitre>);

// Removing bonemeal from salpetre recipe (can't remove just it, so removing all and recreating others)
recipes.remove(<minecraft:dye:15>);
recipes.addShapeless(<minecraft:dye:15> * 3, [<minecraft:bone>]);
recipes.addShapeless(<minecraft:dye:15> * 9, [<minecraft:bone_block>]);
recipes.addShapeless(<minecraft:dye:15>, [<undergroundbiomes:fossil_piece:*>]);

// Tooltips
<immersiveengineering:woodenDevice0:4>.addTooltip("Large, chaotic explosions");
<betterwithmods:mining_charge>.addTooltip("Controlled explosions");
<wtfcore:itemNitre>.addTooltip("Can be mined from Nitre ore");
<betterwithmods:material:26>.addTooltip("Dropped by Creepers");
<minecraft:fire_charge>.addTooltip("Consumed to create a roaring fire");
<railcraft:ore:0>.addTooltip("Formed around lava pools");
<railcraft:dust:1>.addTooltip("Formed around lava pools");
