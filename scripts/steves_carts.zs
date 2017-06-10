// The goals here were to make Steve's Carts substantially cheaper,
// to encourage its use.  And remove all the tedious micro-crafting.

// Constants
val conveyor = <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"});
val blank_upgrade = <stevescarts:ModuleComponents:59>;
val simple_pcb = <stevescarts:ModuleComponents:9>;
val advanced_pcb = <stevescarts:ModuleComponents:16>;

////////////////////
// Ore Dictionary //
////////////////////

// Farmer
<ore:steveFarmer>.add(<stevescarts:CartModule:14>); // Basic Farmer
<ore:steveFarmer>.add(<stevescarts:CartModule:84>); // Galgadorian Farmer

// Wood Cutter
<ore:steveWoodcutter>.add(<stevescarts:CartModule:15>); // Basic Wood Cutter
<ore:steveWoodcutter>.add(<stevescarts:CartModule:79>); // Hardened Wood Cutter
<ore:steveWoodcutter>.add(<stevescarts:CartModule:80>); // Galgadorian Wood Cutter

// Drill
<ore:steveDrill>.add(<stevescarts:CartModule:8>); // Basic Drill
<ore:steveDrill>.add(<stevescarts:CartModule:9>); // Galgadorian Drill
<ore:steveDrill>.add(<stevescarts:CartModule:42>); // Iron Drill
<ore:steveDrill>.add(<stevescarts:CartModule:43>); // Hardened Drill

// Hull
<ore:steveHull>.add(<stevescarts:CartModule:37>); // Wooden Hull
<ore:steveHull>.add(<stevescarts:CartModule:38>); // Standard Hull
<ore:steveHull>.add(<stevescarts:CartModule:39>); // Reinforced Hull
<ore:steveHull>.add(<stevescarts:CartModule:62>); // Mechanical Pig
<ore:steveHull>.add(<stevescarts:CartModule:81>); // Galgadorian Hull

// Engine
<ore:steveEngine>.add(<stevescarts:CartModule:44>); // Tiny Coal Engine
<ore:steveEngine>.add(<stevescarts:CartModule:0>); // Coal Engine
<ore:steveEngine>.add(<stevescarts:CartModule:69>); // Thermal Engine
<ore:steveEngine>.add(<stevescarts:CartModule:70>); // Advanced Thermal Engine
<ore:steveEngine>.add(<stevescarts:CartModule:45>); // Basic Solar Engine
<ore:steveEngine>.add(<stevescarts:CartModule:1>); // Solar Engine
<ore:steveEngine>.add(<stevescarts:CartModule:56>); // Compact Solar Engine


/////////////
// Recipes //
/////////////

// Components
recipes.remove(<stevescarts:ModuleComponents:0>); // Wooden Wheels
recipes.remove(<stevescarts:ModuleComponents:1>); // Iron Wheels
recipes.remove(<stevescarts:ModuleComponents:2>); // Red Pigment
recipes.remove(<stevescarts:ModuleComponents:3>); // Green Pigment
recipes.remove(<stevescarts:ModuleComponents:4>); // Blue Pigment
recipes.remove(<stevescarts:ModuleComponents:11>); // Raw Handle
furnace.remove(<stevescarts:ModuleComponents:12>); // Refined Handle
recipes.remove(<stevescarts:ModuleComponents:15>); // Saw Blaze
recipes.remove(<stevescarts:ModuleComponents:17>); // Wood Cutting Core
recipes.remove(<stevescarts:ModuleComponents:18>); // Raw Hardener
furnace.remove(<stevescarts:ModuleComponents:19>); // Refined Hardener
recipes.remove(<stevescarts:ModuleComponents:20>); // Hardeneed Mesh
recipes.remove(<stevescarts:ModuleComponents:21>); // Stabalized Metal
recipes.remove(<stevescarts:ModuleComponents:22>); // Reinforced Metal
furnace.remove(<stevescarts:ModuleComponents:22>); // Reinforced Metal/Furnace
recipes.remove(<stevescarts:ModuleComponents:23>); // Reinforced Wheels
recipes.remove(<stevescarts:ModuleComponents:29>); // Tri Torch
recipes.remove(<stevescarts:ModuleComponents:30>); // Chest Pane
recipes.remove(<stevescarts:ModuleComponents:31>); // Large Chest Pane
recipes.remove(<stevescarts:ModuleComponents:32>); // Huge Chest Pane
recipes.remove(<stevescarts:ModuleComponents:33>); // Chest Lock
recipes.remove(<stevescarts:ModuleComponents:34>); // Iron Pane
recipes.remove(<stevescarts:ModuleComponents:35>); // Large Iron Pane
recipes.remove(<stevescarts:ModuleComponents:36>); // Huge Iron Pane
recipes.remove(<stevescarts:ModuleComponents:37>); // Dynamic Pane
recipes.remove(<stevescarts:ModuleComponents:38>); // Large Dynamic Pane
recipes.remove(<stevescarts:ModuleComponents:39>); // Huge Dynamic Pane
recipes.remove(<stevescarts:ModuleComponents:45>); // Eye of Galgador
recipes.remove(<stevescarts:ModuleComponents:46>); // Lump of Galgador
recipes.remove(<stevescarts:ModuleComponents:47>); // Galgadorian Metal
furnace.remove(<stevescarts:ModuleComponents:47>); // Galgadorian Metal/Furnace
recipes.remove(<stevescarts:ModuleComponents:48>); // Large Lump of Galgador
recipes.remove(<stevescarts:ModuleComponents:49>); // Enhanced Galgadorian Metal
furnace.remove(<stevescarts:ModuleComponents:49>); // Enhanced Galgadorian Metal/Furnace
recipes.remove(<stevescarts:ModuleComponents:80>); // Hardened Saw Blaze
recipes.remove(<stevescarts:ModuleComponents:81>); // Galgadorian Saw Blaze
recipes.remove(<stevescarts:ModuleComponents:82>); // Galgadorian Wheels

// Remove Oak Log recipe
recipes.removeShaped(<minecraft:planks:0> * 2, [[<stevescarts:ModuleComponents:72>]]);

// Blocks
recipes.remove(<stevescarts:BlockMetalStorage:0>); // Reinforced Metal Block
recipes.remove(<stevescarts:BlockMetalStorage:1>); // Galgadorian Block
recipes.remove(<stevescarts:BlockMetalStorage:2>); // Enhanced Galgadorian Block

// Cart Assembler
recipes.remove(<stevescarts:BlockCartAssembler>);
recipes.addShaped(<stevescarts:BlockCartAssembler>, [[<ore:stone>, <ore:paneGlassColorless>, <ore:stone>], [<ore:paneGlassColorless>, <immersiveengineering:tool:0>, <ore:paneGlassColorless>], [<ore:stone>, <ore:paneGlassColorless>, <ore:stone>]]);

// Cargo Manager
recipes.remove(<stevescarts:BlockCargoManager>);
recipes.addShaped(<stevescarts:BlockCargoManager>, [[<ore:stone>, conveyor, <ore:stone>], [conveyor, <minecraft:crafting_table>, conveyor], [<ore:stone>, conveyor, <ore:stone>]]);

// Colorizer
recipes.remove(<stevescarts:CartModule:41>);
recipes.addShaped(<stevescarts:CartModule:41>, [[<ore:dyeRed>, <ore:dyeGreen>, <ore:dyeBlue>], [<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>], [null, <ore:ingotIron>, null]]);

// Brake Handle
recipes.remove(<stevescarts:CartModule:26>);
recipes.addShaped(<stevescarts:CartModule:26>, [[null, null, <ore:dyeRed>], [<ore:ingotIron>, <ore:stickIron>, null], [<ore:dustRedstone>, <ore:ingotIron>, null]]);

// Speed Handle
recipes.remove(<stevescarts:ModuleComponents:13>);
recipes.addShaped(<stevescarts:ModuleComponents:13>, [[null, null, <ore:dyeBlue>], [<ore:ingotIron>, <ore:stickIron>, null], [<ore:dustRedstone>, <ore:ingotIron>, null]]);

// Divine Shield
recipes.remove(<stevescarts:CartModule:32>);
recipes.addShaped(<stevescarts:CartModule:32>, [[<ore:obsidian>, <ore:gemDiamond>, <ore:obsidian>], [<ore:gemDiamond>, <ore:gemDiamond>, <ore:gemDiamond>], [<ore:obsidian>, <ore:gemDiamond>, <ore:obsidian>]]);

// Iron Drill (T1)
recipes.remove(<stevescarts:CartModule:42>);
recipes.addShaped(<stevescarts:CartModule:42>, [[<ore:plankWood>, <ore:ingotIron>, null], [null, <ore:plankWood>, <ore:ingotIron>], [<ore:plankWood>, <ore:ingotIron>, null]]);

// Basic Drill (T2)
recipes.remove(<stevescarts:CartModule:8>);
recipes.addShaped(<stevescarts:CartModule:8>, [[<ore:ingotIron>, <ore:ingotIron>, null], [null, <ore:ingotIron>, <ore:gemDiamond>], [<ore:ingotIron>, <ore:ingotIron>, null]]);

// Hardened Drill (T3)
recipes.remove(<stevescarts:CartModule:43>);
recipes.addShaped(<stevescarts:CartModule:43>, [[<ore:ingotSteel>, <ore:ingotSteel>, null], [null, <ore:ingotSteel>, <ore:gemDiamond>], [<ore:ingotSteel>, <ore:ingotSteel>, null]]);

// Galgadorian Drill (T4)
recipes.remove(<stevescarts:CartModule:9>);
recipes.addShaped(<stevescarts:CartModule:9>, [[<ore:ingotSoulforgedSteel>, <ore:ingotSoulforgedSteel>, null], [null, <ore:ingotSoulforgedSteel>, <ore:gemDiamond>], [<ore:ingotSoulforgedSteel>, <ore:ingotSoulforgedSteel>, null]]);

// Basic Wood Cutter
recipes.remove(<stevescarts:CartModule:15>);
recipes.addShaped(<stevescarts:CartModule:15>, [[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>], [<minecraft:flint>, <betterwithmods:material:9>, <minecraft:flint>], [null, <ore:stickWood>, null]]);

// Hardened Wood Cutter
recipes.remove(<stevescarts:CartModule:79>);
recipes.addShaped(<stevescarts:CartModule:79>, [[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>], [<ore:ingotSteel>, <betterwithmods:material:9>, <ore:ingotSteel>], [null, <ore:stickIron>, null]]);

// Galgadorian Wood Cutter
recipes.remove(<stevescarts:CartModule:80>);
recipes.addShaped(<stevescarts:CartModule:80>, [[<ore:ingotSoulforgedSteel>, <ore:ingotSoulforgedSteel>, <ore:ingotSoulforgedSteel>], [<ore:ingotSoulforgedSteel>, <betterwithmods:material:9>, <ore:ingotSoulforgedSteel>], [null, <ore:stickSteel>, null]]);

// Side Chests
recipes.remove(<stevescarts:CartModule:2>);
recipes.addShaped(<stevescarts:CartModule:2>, [[<ore:chestWood>, <ore:slimeball>, <ore:chestWood>]]);

// Top Chest
recipes.remove(<stevescarts:CartModule:3>);
recipes.addShaped(<stevescarts:CartModule:3>, [[<ore:chestWood>], [<ore:slimeball>]]);

// Front Chest
recipes.remove(<stevescarts:CartModule:4>);
recipes.addShaped(<stevescarts:CartModule:4>, [[<ore:slimeball>, <ore:chestWood>, <ore:slimeball>]]);

// Internal Storage
recipes.remove(<stevescarts:CartModule:5>);
recipes.addShaped(<stevescarts:CartModule:5>, [[<ore:slimeball>, <ironchest:BlockIronChest>, <ore:slimeball>]]);

// Extracting Chests
recipes.remove(<stevescarts:CartModule:6>);
recipes.addShaped(<stevescarts:CartModule:6>, [[<ore:dyeRed>, <stevescarts:CartModule:2>, <ore:dyeRed>]]);

// Ore Extractor
recipes.remove(<stevescarts:CartModule:83>);
recipes.addShaped(<stevescarts:CartModule:83>, [[<minecraft:redstone_torch>, null, <minecraft:redstone_torch>], [<minecraft:ender_eye>, <minecraft:repeater>, <minecraft:ender_eye>]]);

// Blank Upgrade
recipes.remove(blank_upgrade);
mods.immersiveengineering.MetalPress.addRecipe(blank_upgrade * 2, <ore:stone>, <immersiveengineering:mold:0>, 500, 1);

// Upgrade: <pdule Knowledge
recipes.remove(<stevescarts:upgrade:2>);
recipes.addShaped(<stevescarts:upgrade:2>, [[<minecraft:book>, <minecraft:sugar>, <minecraft:book>], [<minecraft:sugar>, blank_upgrade, <minecraft:sugar>], [<minecraft:book>, <minecraft:sugar>, <minecraft:book>]]);

// Upgrade: Industrial Espionage
recipes.remove(<stevescarts:upgrade:3>);
recipes.addShaped(<stevescarts:upgrade:3>, [[<ore:bookshelf>, <ore:gemDiamond>, <ore:bookshelf>], [<ore:gemDiamond>, <stevescarts:upgrade:2>, <ore:gemDiamond>], [<ore:bookshelf>, <ore:gemDiamond>, <ore:bookshelf>]]);

// Upgrade: Experienced Assembler
recipes.remove(<stevescarts:upgrade:4>);
recipes.addShaped(<stevescarts:upgrade:4>, [[<ore:ingotCopper>, <minecraft:sugar>, <ore:ingotCopper>], [<minecraft:sugar>, blank_upgrade, <minecraft:sugar>], [<ore:ingotCopper>, <minecraft:sugar>, <ore:ingotCopper>]]);

// Upgrade: New Era
recipes.remove(<stevescarts:upgrade:5>);
recipes.addShaped(<stevescarts:upgrade:5>, [[<ore:ingotSoulforgedSteel>, <minecraft:sugar>, <ore:ingotSoulforgedSteel>], [<minecraft:sugar>, <stevescarts:upgrade:4>, <minecraft:sugar>], [<ore:ingotSoulforgedSteel>, <minecraft:sugar>, <ore:ingotSoulforgedSteel>]]);

// Upgrade: Quick Demolisher
recipes.remove(<stevescarts:upgrade:15>);
recipes.addShaped(<stevescarts:upgrade:15>, [[null, <minecraft:flint>, null], [<minecraft:flint>, blank_upgrade, <minecraft:flint>], [null, <minecraft:flint>, null]]);

// Upgrade: Entropy
recipes.remove(<stevescarts:upgrade:16>);
recipes.addShaped(<stevescarts:upgrade:16>, [[null, <ore:obsidian>, null], [<ore:obsidian>, <stevescarts:upgrade:15>, <ore:obsidian>], [null, <ore:obsidian>, null]]);

// Upgrade: Cart Modifier
recipes.remove(<stevescarts:upgrade:11>);
recipes.addShaped(<stevescarts:upgrade:11>, [[<immersiveengineering:tool:0>], [blank_upgrade], [<immersiveengineering:tool:1>]]);

// Upgrade: Production Line
recipes.remove(<stevescarts:upgrade:9>);
recipes.addShaped(<stevescarts:upgrade:9>, [[<ore:dyeBlue>], [blank_upgrade], [advanced_pcb]]);

// Simple PCB
recipes.remove(simple_pcb);
mods.immersiveengineering.MetalPress.addRecipe(simple_pcb, <redstonepaste:redstonepaste>, <immersiveengineering:mold:0>, 500, 1);

// Advanced PCB
recipes.remove(advanced_pcb);
recipes.addShaped(advanced_pcb, [[null, <ore:dustRedstone>, null], [simple_pcb, <ore:gemDiamond>, simple_pcb], [null, <ore:dustRedstone>, null]]);

// Wooden Hull
recipes.remove(<stevescarts:CartModule:37>);
recipes.addShaped(<stevescarts:CartModule:37>, [[<ore:plankWood>, null, <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<ore:gearWood>, null, <ore:gearWood>]]);

// Mechanical Pig
recipes.remove(<stevescarts:CartModule:62>);
recipes.addShaped(<stevescarts:CartModule:62>, [[<ore:listAllporkraw>, null, <ore:listAllporkraw>], [<ore:listAllporkraw>, <ore:listAllporkraw>, <ore:listAllporkraw>], [<ore:gearWood>, null, <ore:gearWood>]]);

// Standard Hull
recipes.remove(<stevescarts:CartModule:38>);
recipes.addShaped(<stevescarts:CartModule:38>, [[<ore:ingotIron>, null, <ore:ingotIron>], [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>], [<ore:gearWood>, null, <ore:gearWood>]]);

// Reinforced Hull
recipes.remove(<stevescarts:CartModule:39>);
recipes.addShaped(<stevescarts:CartModule:39>, [[<ore:ingotSteel>, null, <ore:ingotSteel>], [<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>], [<ore:gearWood>, null, <ore:gearWood>]]);

// Galgadorian Hull
recipes.remove(<stevescarts:CartModule:81>);
recipes.addShaped(<stevescarts:CartModule:81>, [[<ore:ingotSoulforgedSteel>, null, <ore:ingotSoulforgedSteel>], [<ore:ingotSoulforgedSteel>, <ore:ingotSoulforgedSteel>, <ore:ingotSoulforgedSteel>], [<ore:gearWood>, null, <ore:gearWood>]]);

// Basic Farmer
recipes.remove(<stevescarts:CartModule:14>);
recipes.addShaped(<stevescarts:CartModule:14>, [[null, <ore:ingotIron>, null], [<ore:ingotIron>, <ore:string>, <ore:ingotIron>], [<ore:stickWood>, <ore:ingotIron>, null]]);

// Galgadorian Farmer
recipes.remove(<stevescarts:CartModule:84>);
recipes.addShaped(<stevescarts:CartModule:84>, [[null, <ore:ingotSteel>, null], [<ore:ingotSteel>, <ore:string>, <ore:ingotSteel>], [<ore:stickSteel>, <ore:ingotSteel>, null]]);

// Enchanter
recipes.remove(<stevescarts:CartModule:82>);
recipes.addShaped(<stevescarts:CartModule:82>, [[null, <minecraft:enchanting_table>, null], [<minecraft:book>, advanced_pcb, <minecraft:book>]]);

// Chunk Loader
recipes.remove(<stevescarts:CartModule:49>);
recipes.addShaped(<stevescarts:CartModule:49>, [[simple_pcb, <weirdinggadget:weirding_gadget>, simple_pcb]]);

// Advanced Thermal Engine
recipes.remove(<stevescarts:CartModule:70>);
recipes.addShaped(<stevescarts:CartModule:70>, [[<minecraft:nether_brick>, <minecraft:nether_brick>, <minecraft:nether_brick>], [<ore:ingotSteel>, <stevescarts:CartModule:69>, <ore:ingotSteel>], [<minecraft:nether_brick>, <minecraft:nether_brick>, <minecraft:nether_brick>]]);

// Torch Placer
recipes.remove(<stevescarts:CartModule:7>);
recipes.addShaped(<stevescarts:CartModule:7>, [[<ore:torch>, null, <ore:torch>], [<ore:ingotIron>, null, <ore:ingotIron>], [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]]);
