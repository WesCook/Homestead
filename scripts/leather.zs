// Constants
val tanned_leather = <betterwithmods:material:6>;
val tanned_cut_leather = <betterwithmods:material:33>;

// Require tanned leather for usual recipes
<ore:leather>.add(<betterwithmods:material:6>);
<ore:leather>.remove(<minecraft:leather>);

// Saddle
recipes.addShaped(<minecraft:saddle>, [[tanned_cut_leather, null, tanned_cut_leather], [tanned_leather, tanned_leather, tanned_leather]]);

// Remove easy leather from Squeezer
mods.immersiveengineering.Squeezer.removeItemRecipe(<minecraft:leather>);

// Cut leather
recipes.addShapeless(<betterwithmods:material:32> * 2, [<betterwithmods:knife>.anyDamage(), <minecraft:leather>]); // Cut leather
recipes.addShapeless(<betterwithmods:material:33> * 2, [<betterwithmods:knife>.anyDamage(), <betterwithmods:material:6>]); // Cut leather (Tanned)
recipes.addShapeless(<betterwithmods:material:34> * 2, [<betterwithmods:knife>.anyDamage(), <betterwithmods:material:7>]); // Cut leather (Scoured)
recipes.addShapeless(<betterwithmods:material:8> * 4, [<betterwithmods:knife>.anyDamage(), <betterwithmods:material:33>]); // Leather strip

// Hardened Leather requires Iron (makes it slightly cheaper than regular iron armor (34 vs 24 ingots))
recipes.remove(<harvestcraft:hardenedleatheritem>);
recipes.addShaped(<harvestcraft:hardenedleatheritem>, [[<ore:nuggetIron>, <ore:nuggetIron>, <ore:nuggetIron>], [<ore:nuggetIron>, <ore:leather>, <ore:nuggetIron>], [<ore:nuggetIron>, <ore:nuggetIron>, <ore:nuggetIron>]]);

// Item Frame
recipes.remove(<minecraft:item_frame>);
recipes.addShaped(<minecraft:item_frame>, [[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], [<ore:stickWood>, tanned_leather, <ore:stickWood>], [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]]);
recipes.addShaped(<minecraft:item_frame>, [[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], [<ore:stickWood>, tanned_cut_leather, <ore:stickWood>], [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]]);

// Canteen
recipes.removeShaped(<toughasnails:canteen>, [[null, <minecraft:leather>, null], [<minecraft:leather>, null, <minecraft:leather>], [<minecraft:leather>, <minecraft:leather>, <minecraft:leather>]]);
recipes.addShaped(<toughasnails:canteen>, [[null, <betterwithmods:material:8>, null], [<ore:leather>, null, <ore:leather>], [null, <ore:leather>, null]]);

// Steve's Carts Fertilizer fixed leather oredict
recipes.remove(<stevescarts:CartModule:18>);
recipes.addShaped(<stevescarts:CartModule:18>, [[<minecraft:dye:15>, null, <minecraft:dye:15>], [<minecraft:glass_bottle>, <ore:leather>, <minecraft:glass_bottle>], [<ore:leather>, <stevescarts:ModuleComponents:9>, <ore:leather>]]);

// Dog Tag fixed leather oredict
recipes.remove(<sophisticatedwolves:SWDogTag>);
recipes.addShaped(<sophisticatedwolves:SWDogTag>, [[<ore:string>], [<ore:leather>]]);

// Totemist Drum fixed leather oredict
recipes.remove(<totemic:totemDrum>);
recipes.addShaped(<totemic:totemDrum>, [[<ore:leather>, <ore:leather>, <ore:leather>], [<ore:logWood>, <minecraft:wool:*>, <ore:logWood>], [<minecraft:wool:*>, <ore:logWood>, <minecraft:wool:*>]]);

// Totem Whittling Knife requires leather
recipes.remove(<totemic:totemWhittlingKnife>);
recipes.addShaped(<totemic:totemWhittlingKnife>, [[null, null, <betterwithmods:material:41>], [null, <ore:stickWood>, null], [<betterwithmods:material:8>, null, null]]);

// Remove leather from leather scraps
recipes.removeShaped(<minecraft:leather>, [[<terraqueous:item_main:100>, <terraqueous:item_main:100>], [<terraqueous:item_main:100>, <terraqueous:item_main:100>]]);

// Tooltips
<minecraft:leather>.addTooltip("Raw leather, needs to be scoured");
<betterwithmods:material:7>.addTooltip("Scoured but not tanned"); // Scoured Leather
<betterwithmods:material:6>.addTooltip("Useful for crafting or cutting into strips"); // Tanned Leather
