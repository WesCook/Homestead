// Remove Harvestcraft Honeycomb
recipes.remove(<harvestcraft:honeycombitem>);
recipes.remove(<harvestcraft:honeycomb>);

// Remove Harvestcraft Waxcomb
recipes.remove(<harvestcraft:waxcombitem>);
recipes.remove(<harvestcraft:waxcomb>);

// Remove Harvestcraft apiary
recipes.remove(<harvestcraft:apiary>);

// Remove Harvestcraft queen bee
recipes.remove(<harvestcraft:queenbeeitem>);

// Remove Harvestcraft Royal Jelly
recipes.remove(<harvestcraft:royaljellyitem>);

// Rustic honeycomb to Harvestcraft honey
recipes.addShapeless(<harvestcraft:honeyitem>, [<rustic:honeycomb>]);

// Remove various tallow
mods.betterwithmods.StokedCauldron.remove(<betterwithmods:material:13>); // BWM Tallow in cauldron
mods.betterwithmods.Cauldron.remove(<rustic:tallow>); // Rustic Tallow in cauldron
furnace.remove(<rustic:tallow>); // Rustic tallow in furnace

// Tooltips
<rustic:bee>.addTooltip("Can be found in beehives");
<rustic:bee>.addShiftTooltip(format.italic("Beads?"));
<rustic:honeycomb>.addTooltip("Acquired from bees working in an apiary");
<rustic:honeycomb>.addTooltip("Can be used to make honey and beeswax");
<rustic:apiary>.addTooltip("Allows bees to produce honeycombs");
