// Variables
val wool = <minecraft:wool:*>;
val jelled_slime = <toughasnails:jelled_slime>;

// Armor Template
//recipes.addShaped(<helmet>, [[ingot, ingot, ingot], [ingot, null, ingot]]);
//recipes.addShaped(<chestplate>, [[ingot, null, ingot], [ingot, ingot, ingot], [ingot, ingot, ingot]]);
//recipes.addShaped(<leggings>, [[ingot, ingot, ingot], [ingot, null, ingot], [ingot, null, ingot]]);
//recipes.addShaped(<boots>, [[ingot, null, ingot], [ingot, null, ingot]]);

// Remove slime boots
recipes.remove(<tconstruct:slime_boots>);

// Long Fall Boots
recipes.remove(<grapplemod:longfallboots>);
recipes.addShaped(<grapplemod:longfallboots>, [[<betterwithmods:material:49>, <minecraft:diamond_boots>, <betterwithmods:material:49>], [<ore:fabricHemp>, <ore:fabricHemp>, <ore:fabricHemp>]]);

// Wool armor
recipes.remove(<toughasnails:wool_helmet>);
recipes.remove(<toughasnails:wool_chestplate>);
recipes.remove(<toughasnails:wool_leggings>);
recipes.remove(<toughasnails:wool_boots>);
recipes.addShaped(<toughasnails:wool_helmet>, [[null, <minecraft:leather_helmet>, null], [wool, wool, wool]]);
recipes.addShaped(<toughasnails:wool_chestplate>, [[null, <minecraft:leather_chestplate>, null], [wool, wool, wool]]);
recipes.addShaped(<toughasnails:wool_leggings>, [[null, <minecraft:leather_leggings>, null], [wool, wool, wool]]);
recipes.addShaped(<toughasnails:wool_boots>, [[null, <minecraft:leather_boots>, null], [wool, wool, wool]]);

// Remove woven cloth
recipes.remove(<harvestcraft:wovencottonitem>);
<ore:wovenCotton>.remove(<harvestcraft:wovencottonitem>);
recipes.removeShapeless(<minecraft:wool>, [<harvestcraft:wovencottonitem>, <harvestcraft:wovencottonitem>]);

// Leather armor (replaced due to cloth recipes)
recipes.remove(<minecraft:leather_helmet>);
recipes.remove(<minecraft:leather_chestplate>);
recipes.remove(<minecraft:leather_leggings>);
recipes.remove(<minecraft:leather_boots>);
recipes.addShaped(<minecraft:leather_helmet>, [[<ore:leather>, <ore:leather>, <ore:leather>], [<ore:leather>, null, <ore:leather>]]);
recipes.addShaped(<minecraft:leather_chestplate>, [[<ore:leather>, null, <ore:leather>], [<ore:leather>, <ore:leather>, <ore:leather>], [<ore:leather>, <ore:leather>, <ore:leather>]]);
recipes.addShaped(<minecraft:leather_leggings>, [[<ore:leather>, <ore:leather>, <ore:leather>], [<ore:leather>, null, <ore:leather>], [<ore:leather>, null, <ore:leather>]]);
recipes.addShaped(<minecraft:leather_boots>, [[<ore:leather>, null, <ore:leather>], [<ore:leather>, null, <ore:leather>]]);

// Wool armor tooltips
<toughasnails:wool_helmet>.addTooltip("So cozy");
<toughasnails:wool_chestplate>.addTooltip("So cozy");
<toughasnails:wool_leggings>.addTooltip("So cozy");
<toughasnails:wool_boots>.addTooltip("So cozy");

// Jelled slime armor
recipes.remove(<toughasnails:jelled_slime_helmet>);
recipes.remove(<toughasnails:jelled_slime_chestplate>);
recipes.remove(<toughasnails:jelled_slime_leggings>);
recipes.remove(<toughasnails:jelled_slime_boots>);
recipes.addShaped(<toughasnails:jelled_slime_helmet>, [[null, <minecraft:iron_helmet>, null], [jelled_slime, jelled_slime, jelled_slime]]);
recipes.addShaped(<toughasnails:jelled_slime_chestplate>, [[null, <minecraft:iron_chestplate>, null], [jelled_slime, jelled_slime, jelled_slime]]);
recipes.addShaped(<toughasnails:jelled_slime_leggings>, [[null, <minecraft:iron_leggings>, null], [jelled_slime, jelled_slime, jelled_slime]]);
recipes.addShaped(<toughasnails:jelled_slime_boots>, [[null, <minecraft:iron_boots>, null], [jelled_slime, jelled_slime, jelled_slime]]);

// Jelled Slime armor tooltips
<toughasnails:jelled_slime_helmet>.addTooltip("It squishes when you walk");
<toughasnails:jelled_slime_chestplate>.addTooltip("It squishes when you walk");
<toughasnails:jelled_slime_leggings>.addTooltip("It squishes when you walk");
<toughasnails:jelled_slime_boots>.addTooltip("It squishes when you walk");

// Wolf Armor
recipes.remove(<wolfarmor:leather_wolf_armor>);
recipes.remove(<wolfarmor:chain_wolf_armor>);
recipes.remove(<wolfarmor:iron_wolf_armor>);
recipes.remove(<wolfarmor:gold_wolf_armor>);
recipes.remove(<wolfarmor:diamond_wolf_armor>);
recipes.addShaped(<wolfarmor:leather_wolf_armor>, [[<ore:leather>, <ore:leather>, <minecraft:leather_helmet>], [<minecraft:leather_boots>, null, <minecraft:leather_boots>]]);
recipes.addShaped(<wolfarmor:chain_wolf_armor>, [[<betterwithmods:material:50>, <betterwithmods:material:50>, <minecraft:chainmail_helmet>], [<minecraft:chainmail_boots>, null, <minecraft:chainmail_boots>]]);
recipes.addShaped(<wolfarmor:iron_wolf_armor>, [[<ore:ingotIron>, <ore:ingotIron>, <minecraft:iron_helmet>], [<minecraft:iron_boots>, null, <minecraft:iron_boots>]]);
recipes.addShaped(<wolfarmor:gold_wolf_armor>, [[<ore:ingotGold>, <ore:ingotGold>, <minecraft:golden_helmet>], [<minecraft:golden_boots>, null, <minecraft:golden_boots>]]);
recipes.addShaped(<wolfarmor:diamond_wolf_armor>, [[<ore:gemDiamond>, <ore:gemDiamond>, <minecraft:diamond_helmet>], [<minecraft:diamond_boots>, null, <minecraft:diamond_boots>]]);

// Sol Visage tooltip
<mowziesmobs:barakoa_mask>.addShiftTooltip("Praise it!");

// Skeleton tooltip
<minecraft:skull:0>.addTooltip("Don't give up!");
<minecraft:skull:1>.addTooltip("Don't give up!");
