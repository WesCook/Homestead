// Constants
val clay = <minecraft:clay_ball>;

// Clay Bucket
recipes.remove(<ceramics:unfired_clay>);
recipes.addShaped(<ceramics:clay_bucket>, [[clay, null, clay], [null, clay, null]]);
furnace.remove(<ceramics:clay_bucket>);

// Remove duplicate clay pot recipe (can craft vanilla flower > terraqueous one instead)
recipes.removeShaped(<terraqueous:flowerpot>, [[<minecraft:brick>, null, <minecraft:brick>], [null, <minecraft:brick>, null]]);
