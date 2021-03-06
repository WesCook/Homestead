// Craft rock path from rocks
recipes.remove(<furniture:rock_path>);
recipes.addShapeless(<furniture:rock_path> * 64, [<immcraft:rock>, <immcraft:rock>]);

// Rock tooltips
<undergroundbiomes:igneous_stone:*>.addTooltip("Igneous rock formed from cooled magma.");
<undergroundbiomes:igneous_stone:*>.addTooltip("Very slow to break.");

<undergroundbiomes:igneous_cobble:*>.addTooltip("Igneous rock formed from cooled magma.");
<undergroundbiomes:igneous_cobble:*>.addTooltip("Very slow to break.");

<undergroundbiomes:metamorphic_stone:*>.addTooltip("Metamorphic rock formed under high pressures.");
<undergroundbiomes:metamorphic_stone:*>.addTooltip("Slow to break.");

<undergroundbiomes:metamorphic_cobble:*>.addTooltip("Metamorphic rock formed under high pressures.");
<undergroundbiomes:metamorphic_cobble:*>.addTooltip("Slow to break.");

<undergroundbiomes:sedimentary_stone:*>.addTooltip("Sedimentary rock formed by erosion.");
<undergroundbiomes:sedimentary_stone:*>.addTooltip("Quick to break.");

// Remove dirt/sand/gravel piles
recipes.remove(<betterwithmods:dirt_pile>);
recipes.remove(<betterwithmods:gravel_pile>);
recipes.remove(<betterwithmods:sand_pile>);

// Remove their reassembly recipes
recipes.removeShapeless(<betterwithmods:dirt_slab>, [<betterwithmods:dirt_pile>, <betterwithmods:dirt_pile>]);
recipes.removeShapeless(<minecraft:dirt>, [<betterwithmods:dirt_pile>, <betterwithmods:dirt_pile>, <betterwithmods:dirt_pile>, <betterwithmods:dirt_pile>]);
recipes.removeShapeless(<minecraft:gravel>, [<betterwithmods:gravel_pile>, <betterwithmods:gravel_pile>, <betterwithmods:gravel_pile>, <betterwithmods:gravel_pile>]);
recipes.removeShapeless(<minecraft:sand>, [<betterwithmods:sand_pile>, <betterwithmods:sand_pile>, <betterwithmods:sand_pile>, <betterwithmods:sand_pile>]);
