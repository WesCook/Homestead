// Constants
val lv_coil = <immersiveengineering:wirecoil:0>;
val mv_coil = <immersiveengineering:wirecoil:1>;
val hv_coil = <immersiveengineering:wirecoil:2>;
val conveyor = <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"});
val cut_leather = <betterwithmods:material:32>;
val tanned_cut_leather = <betterwithmods:material:33>;

// Remove charcoal recipes in favor of the charcoal pit
furnace.remove(<ore:charcoal>);

// Charcoal Pit tooltip
<ore:charcoal>.addTooltip(format.darkAqua("Created in a Charcoal Pit or Coke Oven"));
<ore:charcoal>.addTooltip("Regular Furnace will not work");

// Treated wood can be crafted from creosote bottles
val clay_creosote = <ceramics:clay_bucket>.withTag({fluids: {FluidName: "creosote", Amount: 1000}});
recipes.addShaped(<immersiveengineering:treatedWood:0>, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<ore:plankWood>, <railcraft:fluid_bottle_creosote>, <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);
recipes.addShaped(<immersiveengineering:treatedWood:0>, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<ore:plankWood>, clay_creosote, <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

// Remove creosote furnace recipe
furnace.remove(<railcraft:fluid_bottle_creosote>);

// Creosote tooltip
<railcraft:fluid_bottle_creosote>.addTooltip("Glass Bottle placed in a Coke Oven");

// Routing Detector cheaper
recipes.remove(<railcraft:detector:13>);
recipes.addShaped(<railcraft:detector:13>, [[<ore:gemQuartz>, <ore:gemQuartz>, <ore:gemQuartz>], [<ore:gemQuartz>, <minecraft:stone_pressure_plate>, <ore:gemQuartz>], [<ore:gemQuartz>, <ore:gemQuartz>, <ore:gemQuartz>]]);

// Villager detector uses tanned leather
recipes.remove(<railcraft:detector:11>);
recipes.addShaped(<railcraft:detector:11>, [[<ore:leather>, <ore:leather>, <ore:leather>], [<ore:leather>, <minecraft:stone_pressure_plate>, <ore:leather>], [<ore:leather>, <ore:leather>, <ore:leather>]]);

// Remove Shovel from Adv. Item Loader
recipes.remove(<railcraft:manipulator:2>);
recipes.addShaped(<railcraft:manipulator:2>, [[<ore:ingotSteel>, <ore:dustRedstone>, <ore:ingotSteel>], [<ore:dustRedstone>, <railcraft:manipulator:0>, <ore:dustRedstone>], [<ore:ingotSteel>, <ore:dustRedstone>, <ore:ingotSteel>]]);

// Remove Shovel from Adv. Item Unloader
recipes.remove(<railcraft:manipulator:3>);
recipes.addShaped(<railcraft:manipulator:3>, [[<ore:ingotSteel>, <ore:dustRedstone>, <ore:ingotSteel>], [<ore:dustRedstone>, <railcraft:manipulator:1>, <ore:dustRedstone>], [<ore:ingotSteel>, <ore:dustRedstone>, <ore:ingotSteel>]]);

// Remove Pickaxes from Track Relayer Cart
recipes.remove(<railcraft:mow_track_relayer>);
recipes.addShaped(<railcraft:mow_track_relayer>, [[<ore:dyeYellow>, <minecraft:redstone_lamp>, <ore:dyeYellow>], [<ore:rodBlaze>, <ore:blockSteel>, <ore:rodBlaze>], [<ore:partPickHead>, <minecraft:minecart>, <ore:partPickHead>]]);

// Remove Shovels from Undercutter Cart
recipes.remove(<railcraft:mow_undercutter>);
recipes.addShaped(<railcraft:mow_undercutter>, [[<ore:dyeYellow>, <minecraft:redstone_lamp>, <ore:dyeYellow>], [<minecraft:piston>, <ore:blockSteel>, <minecraft:piston>], [<tconstruct:shovel_head:*>, <minecraft:minecart>, <tconstruct:shovel_head:*>]]);

// Remove obsidian dust
mods.immersiveengineering.Crusher.removeRecipe(<railcraft:dust:0>);

// Abyssal Stone recipe
recipes.addShaped(<railcraft:generic:8> * 8, [[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>], [<ore:cobblestone>, <ore:charcoal>, <ore:cobblestone>], [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]]);

// Quarried Stone recipe
recipes.addShaped(<railcraft:generic:9> * 8, [[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>], [<ore:cobblestone>, <ore:gemQuartz>, <ore:cobblestone>], [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]]);

// Blast Brick uses concentrated hellfire (and divides evenly)
recipes.removeShaped(<immersiveengineering:stoneDecoration:1>, [[<ore:ingotBrickNether>, <ore:ingotBrick>, <ore:ingotBrickNether>], [<ore:ingotBrick>, <minecraft:blaze_powder>, <ore:ingotBrick>], [<ore:ingotBrickNether>, <ore:ingotBrick>, <ore:ingotBrickNether>]]);
recipes.addShaped(<immersiveengineering:stoneDecoration:1> * 3, [[<ore:ingotBrickNether>, <ore:ingotBrick>, <ore:ingotBrickNether>], [<ore:ingotBrick>, <ore:ingotHellfire>, <ore:ingotBrick>], [<ore:ingotBrickNether>, <ore:ingotBrick>, <ore:ingotBrickNether>]]);

// Infinite burning block oredict for quest
<ore:infiniteBurning>.add(<quark:charcoal_block>);
<ore:infiniteBurning>.add(<minecraft:netherrack>);

// Coke Brick slightly cheaper, and requires charcoal (and divides evenly)
recipes.removeShaped(<immersiveengineering:stoneDecoration:0> * 2, [[<minecraft:clay_ball>, <ore:ingotBrick>, <minecraft:clay_ball>], [<ore:ingotBrick>, <ore:sandstone>, <ore:ingotBrick>], [<minecraft:clay_ball>, <ore:ingotBrick>, <minecraft:clay_ball>]]);
recipes.addShaped(<immersiveengineering:stoneDecoration:0> * 3, [[<minecraft:clay_ball>, <ore:ingotBrick>, <minecraft:clay_ball>], [<ore:ingotBrick>, <ore:charcoal>, <ore:ingotBrick>], [<minecraft:clay_ball>, <ore:ingotBrick>, <minecraft:clay_ball>]]);

// Engineer's Hammer
recipes.remove(<immersiveengineering:tool:0>);
recipes.addShaped(<immersiveengineering:tool:0>, [[null, <ore:ingotIron>, <ore:string>], [null, <ore:stickWood>, <ore:ingotIron>], [<ore:stickWood>, null, null]]);

// Conveyor Belt
recipes.removeShaped(conveyor, [[<minecraft:leather>, <minecraft:leather>, <minecraft:leather>], [<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>]]);
recipes.removeShaped(conveyor, [[cut_leather, cut_leather, cut_leather], [<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>]]);
recipes.addShaped(conveyor * 8, [[tanned_cut_leather, tanned_cut_leather, tanned_cut_leather], [<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>]]);

// Coil Blocks
recipes.remove(<immersiveengineering:metalDecoration0:0>); // Copper
recipes.remove(<immersiveengineering:metalDecoration0:1>); // Electrum
recipes.remove(<immersiveengineering:metalDecoration0:2>); // HV
recipes.addShaped(<immersiveengineering:metalDecoration0:0>, [[lv_coil, lv_coil, lv_coil], [lv_coil, <ore:ingotSteel>, lv_coil], [lv_coil, lv_coil, lv_coil]]); // Copper
recipes.addShaped(<immersiveengineering:metalDecoration0:1>, [[mv_coil, mv_coil, mv_coil], [mv_coil, <ore:ingotSteel>, mv_coil], [mv_coil, mv_coil, mv_coil]]); // Electrum
recipes.addShaped(<immersiveengineering:metalDecoration0:2>, [[hv_coil, hv_coil, hv_coil], [hv_coil, <ore:ingotSteel>, hv_coil], [hv_coil, hv_coil, hv_coil]]); // HV

// Block Placer more expensive
recipes.remove(<va:blockplacer>);
recipes.addShaped(<va:blockplacer>, [[<ore:ingotIron>, <betterwithmods:material:49>, <ore:ingotIron>], [<ore:ingotIron>, <ore:chest>, <ore:ingotIron>], [<ore:ingotIron>, <minecraft:piston>, <ore:ingotIron>]]);

// Expanded Industry Tooltips
<expindustry:machine_wood_hopper>.addTooltip("Can only move items downward");
<expindustry:machine_distributor>.addTooltip("Evenly distributes items");
<expindustry:machine_filter>.addTooltip("Filter items by side");
<expindustry:machine_cart_loader>.addTooltip("Holds carts while filling");

// Filtering Hopper has no recipe, for some reason
recipes.addShaped(<expindustry:machine_filter>, [[<ore:ingotGold>, null, <ore:ingotGold>], [<ore:ingotGold>, <minecraft:hopper>, <ore:ingotGold>], [null, <ore:ingotGold>, null]]);

// Steel rod recipes are cheaper in Metal Press
mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:material:1>); // Iron Rod
mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:material:2>); // Steel Rod
mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:material:3>); // Aluminum Rod
mods.immersiveengineering.MetalPress.addRecipe(<immersiveengineering:material:1> * 4, <ore:ingotIron>, <immersiveengineering:mold:2>, 500, 1); // Iron Rod
mods.immersiveengineering.MetalPress.addRecipe(<immersiveengineering:material:2> * 4, <ore:ingotSteel>, <immersiveengineering:mold:2>, 500, 1); // Steel Rod
mods.immersiveengineering.MetalPress.addRecipe(<immersiveengineering:material:3> * 4, <ore:ingotAluminum>, <immersiveengineering:mold:2>, 500, 1); // Aluminum Rod
recipes.remove(<immersiveengineering:material:1>); // Iron Rod
recipes.remove(<immersiveengineering:material:2>); // Steel Rod
recipes.remove(<immersiveengineering:material:3>); // Aluminum Rod
recipes.addShaped(<immersiveengineering:material:1> * 2, [[<ore:ingotIron>], [<ore:ingotIron>]]); // Iron Rod
recipes.addShaped(<immersiveengineering:material:2> * 2, [[<ore:ingotSteel>], [<ore:ingotSteel>]]); // Steel Rod
recipes.addShaped(<immersiveengineering:material:3> * 2, [[<ore:ingotAluminum>], [<ore:ingotAluminum>]]); // Aluminum Rod
<immersiveengineering:material:1>.addTooltip("Constructed more efficiently in a Metal Press");
<immersiveengineering:material:2>.addTooltip("Constructed more efficiently in a Metal Press");
<immersiveengineering:material:3>.addTooltip("Constructed more efficiently in a Metal Press");

// Engineering blocks are cheaper
recipes.remove(<immersiveengineering:metalDecoration0:3>); // Redstone Engineering Block
recipes.remove(<immersiveengineering:metalDecoration0:4>); // Light Engineering Block
recipes.remove(<immersiveengineering:metalDecoration0:5>); // Heavy Engineering Block
recipes.addShaped(<immersiveengineering:metalDecoration0:3> * 4, [[null, <ore:dustRedstone>, null], [<ore:dustRedstone>, <ore:ingotCopper>, <ore:dustRedstone>], [null, <ore:dustRedstone>, null]]); // Redstone Engineering Block
recipes.addShaped(<immersiveengineering:metalDecoration0:4> * 2, [[null, <ore:ingotCopper>, null], [<ore:ingotCopper>, <ore:ingotIron>, <ore:ingotCopper>], [null, <ore:ingotCopper>, null]]); // Light Engineering Block
recipes.addShaped(<immersiveengineering:metalDecoration0:5> * 2, [[null, <ore:ingotSteel>, null], [<ore:ingotSteel>, <ore:ingotElectrum>, <ore:ingotSteel>], [null, <ore:ingotSteel>, null]]); // Heavy Engineering Block

// Scaffolding is cheaper
recipes.remove(<immersiveengineering:woodenDecoration:1>); // Treated wood
recipes.remove(<immersiveengineering:metalDecoration1:1>); // Steel Scaffolding
recipes.remove(<immersiveengineering:metalDecoration1:5>); // Aluminium Scaffolding
recipes.addShaped(<immersiveengineering:woodenDecoration:1>, [[<ore:stickTreatedWood>, <ore:stickTreatedWood>], [<ore:stickTreatedWood>, <ore:stickTreatedWood>]]); // Treated wood
recipes.addShaped(<immersiveengineering:metalDecoration1:1>, [[<ore:stickSteel>, <ore:stickSteel>], [<ore:stickSteel>, <ore:stickSteel>]]); // Steel Scaffolding
recipes.addShaped(<immersiveengineering:metalDecoration1:5>, [[<ore:stickAluminum>, <ore:stickAluminum>], [<ore:stickAluminum>, <ore:stickAluminum>]]); // Aluminium Scaffolding

// Radiator blocks (late game Immersive Engineering) requires Soulforged Steel
recipes.remove(<immersiveengineering:metalDecoration0:7>);
recipes.addShaped(<immersiveengineering:metalDecoration0:7> * 3, [[<ore:ingotSoulforgedSteel>, <ore:ingotCopper>, <ore:ingotSoulforgedSteel>], [<ore:ingotCopper>, <ore:listAllwater>, <ore:ingotCopper>], [<ore:ingotSoulforgedSteel>, <ore:ingotCopper>, <ore:ingotSoulforgedSteel>]]);
<immersiveengineering:metalDecoration0:7>.addTooltip("Used in several late-game machines");

// Steel fence is cheaper
recipes.remove(<immersiveengineering:metalDecoration1:0>);
recipes.addShaped(<immersiveengineering:metalDecoration1:0> * 6, [[<ore:ingotSteel>, <ore:stickSteel>, <ore:ingotSteel>], [<ore:ingotSteel>, <ore:stickSteel>, <ore:ingotSteel>]]);

// Cheaper LV Capacitor
recipes.remove(<immersiveengineering:metalDevice0:0>);
recipes.addShaped(<immersiveengineering:metalDevice0:0>, [[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>], [<ore:ingotCopper>, <ore:ingotLead>, <ore:ingotCopper>], [<ore:plankWood>, <ore:dustRedstone>, <ore:plankWood>]]);

// Add corn to fermenter
mods.immersiveengineering.Fermenter.addRecipe(null, <liquid:ethanol> * 160, <harvestcraft:cornitem>, 80);

// Remove Wood Incubator
recipes.remove(<rockhounding_surface:woodIncubator>);

// Add harvestcraft seeds to squeezer
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:artichokeseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:asparagusseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:bambooshootseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:barleyseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:beanseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:beetseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:bellpepperseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:blackberryseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:blueberryseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:broccoliseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:brusselsproutseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:cabbageseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:cactusfruitseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:candleberryseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:cantaloupeseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:cauliflowerseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:celeryseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:chilipepperseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:coffeeseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:cornseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:cranberryseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:cucumberseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:curryleafseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:eggplantseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:garlicseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:gingerseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:grapeseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:kiwiseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:leekseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:lettuceseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:mustardseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:oatsseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:okraseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:onionseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:parsnipseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:peanutseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:peasseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:pineappleseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:radishseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:raspberryseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:rhubarbseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:riceseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:rutabagaseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:ryeseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:scallionseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:seaweedseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:sesameseedsseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:soybeanseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:spiceleafseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:spinachseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:strawberryseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:sweetpotatoseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:teaseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:tomatoseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:turnipseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:waterchestnutseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:wintersquashseeditem>, 240);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:plantoil> * 80, <harvestcraft:zucchiniseeditem>, 240);
