// Constants
val seared_brick = <tconstruct:materials:0>;

// Seared Tank
recipes.remove(<tconstruct:seared_tank:0>);
recipes.addShaped(<tconstruct:seared_tank:0>, [[null, seared_brick, null], [seared_brick, null, seared_brick], [null, seared_brick, null]]);

// Seared Brick
furnace.remove(seared_brick);
recipes.remove(<tconstruct:soil>);
recipes.addShapeless(seared_brick * 2, [<minecraft:clay_ball>, <minecraft:gravel>, <ore:sand>]);
recipes.addShapeless(seared_brick * 8, [<minecraft:gravel>, <ore:sand>, <minecraft:gravel>, <ore:sand>, <minecraft:clay>, <ore:sand>, <minecraft:gravel>, <ore:sand>, <minecraft:gravel>]);

// Tooltip
<tconstruct:soil>.addTooltip("Seared brick can be crafted directly");
