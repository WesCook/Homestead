// Remove easy light
recipes.remove(<tconstruct:stone_torch>);
<ore:torch>.remove(<tconstruct:stone_torch>);
recipes.remove(<tconstruct:throwball:0>); // Glowball

// Pumpkin Carving
recipes.remove(<pumpkincarving:litcarvedpumpkin:*>);
recipes.remove(<pumpkincarving:litcarvedpumpkin2:*>);
recipes.addShapeless(<pumpkincarving:litcarvedpumpkin:0>, [<pumpkincarving:carvedpumpkin:0>, <ore:torch>]);
recipes.addShapeless(<pumpkincarving:litcarvedpumpkin:1>, [<pumpkincarving:carvedpumpkin:1>, <ore:torch>]);
recipes.addShapeless(<pumpkincarving:litcarvedpumpkin:2>, [<pumpkincarving:carvedpumpkin:2>, <ore:torch>]);
recipes.addShapeless(<pumpkincarving:litcarvedpumpkin:3>, [<pumpkincarving:carvedpumpkin:3>, <ore:torch>]);
recipes.addShapeless(<pumpkincarving:litcarvedpumpkin2:0>, [<pumpkincarving:carvedpumpkin2:0>, <ore:torch>]);
recipes.addShapeless(<pumpkincarving:litcarvedpumpkin2:1>, [<pumpkincarving:carvedpumpkin2:1>, <ore:torch>]);
recipes.addShapeless(<pumpkincarving:litcarvedpumpkin2:2>, [<pumpkincarving:carvedpumpkin2:2>, <ore:torch>]);
recipes.addShapeless(<pumpkincarving:litcarvedpumpkin2:3>, [<pumpkincarving:carvedpumpkin2:3>, <ore:torch>]);

// Pumpkin tooltip
<minecraft:pumpkin>.addTooltip("Can be carved with shears (hold shift)");
<minecraft:pumpkin>.addShiftTooltip("  Place in a crafting table with shears in the center.");
<minecraft:pumpkin>.addShiftTooltip("  The orientation decides the face to be carved.");
<minecraft:pumpkin>.addShiftTooltip("  A torch can then be added to provide light.");

// Remove unlit torch recipes, so they can be lit by campfire (requires Homestead Companion mod)
recipes.remove(<realistictorches:TorchUnlit>);

// Allow use of lit torches in regular torch recipes
<ore:torch>.add(<realistictorches:TorchLit>);

// Make lanterns cheaper
recipes.removeShaped(<bibliocraft:LanternIron:0>, [[<minecraft:glass_pane>, <*>, <minecraft:glass_pane>], [<*>, <minecraft:torch>, <*>], [<minecraft:glass_pane>, <*>, <minecraft:glass_pane>]]);
recipes.removeShaped(<bibliocraft:LanternGold:0>, [[<minecraft:glass_pane>, <*>, <minecraft:glass_pane>], [<*>, <minecraft:torch>, <*>], [<minecraft:glass_pane>, <*>, <minecraft:glass_pane>]]);
recipes.addShaped(<bibliocraft:LanternIron:0>, [[null, <minecraft:glass_pane>, null], [<minecraft:glass_pane>, <ore:torch>, <minecraft:glass_pane>], [<ore:slabWood>, <ore:ingotIron>, <ore:slabWood>]]);
recipes.addShaped(<bibliocraft:LanternGold:0>, [[null, <minecraft:glass_pane>, null], [<minecraft:glass_pane>, <ore:torch>, <minecraft:glass_pane>], [<ore:slabWood>, <ore:ingotGold>, <ore:slabWood>]]);

// Bibliocraft Desks may use any torch (was hardcoded to vanilla torch)
recipes.remove(<bibliocraft:Desk:*>);
recipes.addShaped(<bibliocraft:Desk:0>, [[<ore:torch>, null, <ore:feather>], [<minecraft:wooden_slab:0>, <minecraft:wooden_slab:0>, <minecraft:wooden_slab:0>], [<minecraft:planks:0>, null, <minecraft:planks:0>]]); // Oak
recipes.addShaped(<bibliocraft:Desk:1>, [[<ore:torch>, null, <ore:feather>], [<minecraft:wooden_slab:1>, <minecraft:wooden_slab:1>, <minecraft:wooden_slab:1>], [<minecraft:planks:1>, null, <minecraft:planks:1>]]); // Spruce
recipes.addShaped(<bibliocraft:Desk:2>, [[<ore:torch>, null, <ore:feather>], [<minecraft:wooden_slab:2>, <minecraft:wooden_slab:2>, <minecraft:wooden_slab:2>], [<minecraft:planks:2>, null, <minecraft:planks:2>]]); // Birch
recipes.addShaped(<bibliocraft:Desk:3>, [[<ore:torch>, null, <ore:feather>], [<minecraft:wooden_slab:3>, <minecraft:wooden_slab:3>, <minecraft:wooden_slab:3>], [<minecraft:planks:3>, null, <minecraft:planks:3>]]); // Jungle
recipes.addShaped(<bibliocraft:Desk:4>, [[<ore:torch>, null, <ore:feather>], [<minecraft:wooden_slab:4>, <minecraft:wooden_slab:4>, <minecraft:wooden_slab:4>], [<minecraft:planks:4>, null, <minecraft:planks:4>]]); // Acacia
recipes.addShaped(<bibliocraft:Desk:5>, [[<ore:torch>, null, <ore:feather>], [<minecraft:wooden_slab:5>, <minecraft:wooden_slab:5>, <minecraft:wooden_slab:5>], [<minecraft:planks:5>, null, <minecraft:planks:5>]]); // Dark Oak
recipes.addShaped(<bibliocraft:Desk:6>, [[<ore:torch>, null, <ore:feather>], [<bibliocraft:FramingBoard>, <bibliocraft:FramingBoard>, <bibliocraft:FramingBoard>], [<bibliocraft:FramingSheet>, null, <bibliocraft:FramingSheet>]]); // Framed

// Vanilla Torches are cheaper than Realistic Torches allows
recipes.remove(<minecraft:torch>);
recipes.addShaped(<minecraft:torch> * 6, [[<realistictorches:GlowstoneCrystal>], [<ore:stickWood>]]);

// Totem Torch may use any torch
recipes.remove(<totemic:totemTorch>);
recipes.addShaped(<totemic:totemTorch>, [[<ore:stickWood>, <ore:torch>, <ore:stickWood>], [<ore:stickWood>, <ore:logWood>, <ore:stickWood>], [null, <ore:stickWood>, null]]);

// Harvestcraft Candle
recipes.remove(<harvestcraft:candledeco1>);
recipes.addShaped(<harvestcraft:candledeco1>, [[<ore:string>], [<rustic:beeswax>], [<ore:ingotSilver>]]);

// Rustic Candle
recipes.removeShaped(<rustic:candle>);
recipes.addShaped(<rustic:candle> * 4, [[<ore:string>], [<rustic:beeswax>], [<ore:ingotIron>]]);

// Rustic Iron Lantern
recipes.removeShaped(<rustic:iron_lantern>);
recipes.addShaped(<rustic:iron_lantern> * 4, [[<ore:ingotIron>], [<ore:torch>], [<ore:ingotIron>]]);

// Tooltips
<minecraft:torch>.addTooltip("A torch upgrade requiring glowstone");
<realistictorches:TorchLit>.addTooltip("Lit by using sticks on a campfire");
<realistictorches:TorchUnlit>.addTooltip("Can be relit with a campfire, torch, or matchbox");
<bibliocraft:LanternIron:0>.addTooltip("Recipe on last page");
<bibliocraft:LanternGold:0>.addTooltip("Recipe on last page");
