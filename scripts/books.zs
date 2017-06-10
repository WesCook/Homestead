// Constants
val tanned_leather = <betterwithmods:material:6>;
val tanned_cut_leather = <betterwithmods:material:33>;

// Regular books
recipes.removeShapeless(<minecraft:book>, [<betterwithmods:material>, <minecraft:paper>, <minecraft:paper>, <minecraft:paper>]); // Seems to remove all regardless of ID on material
recipes.addShapeless(<minecraft:book>, [tanned_leather, <minecraft:paper>, <minecraft:paper>, <minecraft:paper>]);
recipes.addShapeless(<minecraft:book>, [tanned_cut_leather, <minecraft:paper>, <minecraft:paper>, <minecraft:paper>]);

// Add recipe to questing book
recipes.addShaped(<bqt:bqbook>, [[<ore:stickWood>], [<ore:paper>]]);

// Questing book tooltip
<bqt:bqbook>.addTooltip("View your current progress");

// Bibliocraft Atlas
recipes.removeShaped(<bibliocraft:AtlasBook>, [[<ore:paper>, <bibliocraft:maptool>, <ore:paper>], [<ore:paper>, <bibliocraft:SlottedBook>, <ore:paper>], [<ore:paper>, <minecraft:map>, <ore:paper>]]);
recipes.addShaped(<bibliocraft:AtlasBook>, [[<bibliocraft:maptool>], [<minecraft:map>]]);

// Make Maps cheaper
recipes.removeShaped(<minecraft:map>, [[<ore:paper>, <ore:paper>, <ore:paper>], [<ore:paper>, <minecraft:compass>, <ore:paper>], [<ore:paper>, <ore:paper>, <ore:paper>]]);
recipes.addShapeless(<minecraft:map> * 4, [<ore:paper>, <ore:dyeBlack>]);

// Drafting Compass only requires nuggets
recipes.addShaped(<bibliocraft:maptool>, [[null, <ore:nuggetIron>, null], [<ore:nuggetIron>, null,<ore:nuggetIron>], [<ore:stickWood>, null, <ore:stickWood>]]);

// Bookshelf Oredict
<ore:bookshelf>.add(<minecraft:bookshelf>);
<ore:bookshelf>.add(<immcraft:bookshelf>);
