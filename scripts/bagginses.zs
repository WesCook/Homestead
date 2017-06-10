// Imports
import minetweaker.item.IItemStack;
import minetweaker.item.IIngredient;

// Constants
val tanned_cut_leather = <betterwithmods:material:33>;

// Ender Bag cost
recipes.remove(<bagginses:ender>);
recipes.addShaped(<bagginses:ender>, [[<minecraft:ender_chest>], [<bagginses:brown>], [<bagginses:upgrade>]]);

// Tier 2/3 Bags Map
val bagDyes = [<ore:dyeBlack>, <ore:dyeBlue>, <ore:dyeBrown>, <ore:dyeCyan>, <ore:dyeGray>, <ore:dyeGreen>, <ore:dyeLightBlue>, <ore:dyeLime>, <ore:dyeMagenta>, <ore:dyeOrange>, <ore:dyePink>, <ore:dyePurple>, <ore:dyeRed>, <ore:dyeSilver>, <ore:dyeWhite>, <ore:dyeYellow>] as IIngredient[];
val bagsT1 = [<bagginses:black>, <bagginses:blue>, <bagginses:brown>, <bagginses:cyan>, <bagginses:gray>, <bagginses:green>, <bagginses:lightBlue>, <bagginses:lime>, <bagginses:magenta>, <bagginses:orange>, <bagginses:pink>, <bagginses:purple>, <bagginses:red>, <bagginses:silver>, <bagginses:white>, <bagginses:yellow>] as IItemStack[];
val bagsT2 = [<bagginses:blackT2>, <bagginses:blueT2>, <bagginses:brownT2>, <bagginses:cyanT2>, <bagginses:grayT2>, <bagginses:greenT2>, <bagginses:lightBlueT2>, <bagginses:limeT2>, <bagginses:magentaT2>, <bagginses:orangeT2>, <bagginses:pinkT2>, <bagginses:purpleT2>, <bagginses:redT2>, <bagginses:silverT2>, <bagginses:whiteT2>, <bagginses:yellowT2>] as IItemStack[];
val bagsT3 = [<bagginses:blackT3>, <bagginses:blueT3>, <bagginses:brownT3>, <bagginses:cyanT3>, <bagginses:grayT3>, <bagginses:greenT3>, <bagginses:lightBlueT3>, <bagginses:limeT3>, <bagginses:magentaT3>, <bagginses:orangeT3>, <bagginses:pinkT3>, <bagginses:purpleT3>, <bagginses:redT3>, <bagginses:silverT3>, <bagginses:whiteT3>, <bagginses:yellowT3>] as IItemStack[];

// Remove base recipes
for i, item in bagsT1 {
	recipes.remove(item);
}

// Add Base recipe
recipes.addShapeless(<bagginses:brown>, [<wearablebackpacks:backpack>, <ore:enderpearl>]);

// Modify upgrade recipes
for i, item in bagsT3 {
	recipes.remove(item); // Remove initial recipe
	recipes.addShaped(item, [[<minecraft:obsidian>, <betterwithmods:material:49>, <minecraft:obsidian>], [<minecraft:obsidian>, bagsT2[i].marked("bag"), <minecraft:obsidian>], [<minecraft:obsidian>, <bagginses:upgrade>, <minecraft:obsidian>]], function(output, inputs, crafting) { // Create new Tier 3 recipes (preserving NBT data)
		return output.withTag(inputs.bag.tag);
	});
}

// Bag dyeing
for i, item in bagsT1 {
	recipes.addShapeless(item, [<bagginses:brown>.marked("bag"), bagDyes[i]], function(output, inputs, crafting) {
		return output.withTag(inputs.bag.tag);
	});
}

// Create oredict entries for each bag
for i, item in bagsT1 {<ore:bag>.add(item);}
for i, item in bagsT2 {<ore:bag>.add(item);}
for i, item in bagsT3 {<ore:bag>.add(item);}

// Add tooltip
for i, item in bagsT1 {
	bagsT1[i].addTooltip("A portable bag with magic properties");
	bagsT2[i].addTooltip("A portable bag with magic properties");
	bagsT3[i].addTooltip("A portable bag with magic properties");
}
<bagginses:brown>.addTooltip("Can be dyed and upgraded");
<bagginses:ender>.addTooltip("Can access your ender chest");
<bagginses:void>.addTooltip("Trashes items placed within");
