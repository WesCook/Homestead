// Constants
val wooden_gear = <betterwithmods:material:0>;
val hemp_fiber = <betterwithmods:material:3>;

// Mill Stone
recipes.remove(<betterwithmods:single_machine>);
recipes.addShaped(<betterwithmods:single_machine>, [[<ore:cobblestone>, <betterwithmods:material>, <ore:cobblestone>], [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>], [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]]);

// Gearbox
recipes.remove(<betterwithmods:gearbox>);
recipes.addShaped(<betterwithmods:gearbox>, [[<ore:plankWood>, wooden_gear, <ore:plankWood>], [wooden_gear, null, wooden_gear], [<ore:plankWood>, wooden_gear, <ore:plankWood>]]);

// Axle
recipes.remove(<betterwithmods:axle>);
recipes.addShaped(<betterwithmods:axle> * 3, [[null, <betterwithmods:wood_moulding:*>, null], [null, <betterwithmods:rope>, null], [null, <betterwithmods:wood_moulding:*>, null]]);
recipes.addShaped(<betterwithmods:axle> * 3, [[null, <ore:plankWood>, null], [null, <betterwithmods:rope>, null], [null, <ore:plankWood>, null]]);

// Windmill Blade
recipes.remove(<betterwithmods:material:11>); // Windmill Blade
recipes.remove(<betterwithmods:material:4>); // Hemp Cloth
recipes.addShaped(<betterwithmods:material:11>, [[hemp_fiber, hemp_fiber, hemp_fiber], [hemp_fiber, hemp_fiber, hemp_fiber], [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]]); // Windmill Blade

// Make BWM Platforms cheaper
recipes.remove(<betterwithmods:platform>);
recipes.addShaped(<betterwithmods:platform> * 3, [[<ore:plankWood>, <betterwithmods:pane:2>, <ore:plankWood>], [null, <ore:plankWood>, null], [<ore:plankWood>, <betterwithmods:pane:2>, <ore:plankWood>]]);
recipes.addShaped(<betterwithmods:platform> * 3, [[<betterwithmods:wood_moulding>, <betterwithmods:pane:2>, <betterwithmods:wood_moulding>], [null, <betterwithmods:wood_moulding>, null], [<betterwithmods:wood_moulding>, <betterwithmods:pane:2>, <betterwithmods:wood_moulding>]]);

// Break down Broken Gearbox into gears
recipes.addShapeless(wooden_gear * 2, [<betterwithmods:broken_gearbox>]);
<betterwithmods:broken_gearbox>.addTooltip("Can be broken down into gears");
