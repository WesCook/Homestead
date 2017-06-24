// Constants
val wooden_gear = <betterwithmods:material:0>;
val tanned_cut_leather = <betterwithmods:material:33>;

// Create oredict for boat quest
<ore:boat>.add(<minecraft:boat>);
<ore:boat>.add(<minecraft:spruce_boat>);
<ore:boat>.add(<minecraft:birch_boat>);
<ore:boat>.add(<minecraft:jungle_boat>);
<ore:boat>.add(<minecraft:acacia_boat>);
<ore:boat>.add(<minecraft:dark_oak_boat>);

// Create oredict for step ladders
<ore:stepladder>.add(<literalascension:minecraft/oak_stepladder>);
<ore:stepladder>.add(<literalascension:minecraft/spruce_stepladder>);
<ore:stepladder>.add(<literalascension:minecraft/birch_stepladder>);
<ore:stepladder>.add(<literalascension:minecraft/jungle_stepladder>);
<ore:stepladder>.add(<literalascension:minecraft/acacia_stepladder>);
<ore:stepladder>.add(<literalascension:minecraft/dark_oak_stepladder>);
<ore:stepladder>.add(<literalascension:minecraft/iron_stepladder>);
<ore:stepladder>.add(<literalascension:minecraft/fireworks_stepladder>);

// Hang Glider requires Diamond Ingots
//recipes.remove(<openglider:glider_part:2>);
//recipes.addShaped(<openglider:glider_part:2>, [[null, <ore:ingotIron>, null], [<ore:ingotIron>, null, <ore:ingotIron>], [<betterwithmods:material:49>, <betterwithmods:material:49>, <betterwithmods:material:49>]]);

// Remove Fairy Lights ladder
recipes.remove(<fairylights:ladder>);

// Create oredict for tents quest
<ore:tent>.add(<yurtmod:tent:*>);

// Make rails cheaper
recipes.remove(<tconstruct:wood_rail>);
recipes.remove(<minecraft:rail>);
recipes.addShaped(<minecraft:rail> * 32, [[<ore:ingotIron>, null, <ore:ingotIron>], [<ore:ingotIron>, <ore:stickWood>, <ore:ingotIron>], [<ore:ingotIron>, null, <ore:ingotIron>]]);
recipes.remove(<minecraft:golden_rail>);
recipes.addShaped(<minecraft:golden_rail> * 16, [[<ore:ingotGold>, null, <ore:ingotGold>], [<ore:ingotGold>, <ore:stickWood>, <ore:ingotGold>], [<ore:ingotGold>, <ore:dustRedstone>, <ore:ingotGold>]]);
recipes.remove(<minecraft:detector_rail>);
recipes.addShaped(<minecraft:detector_rail> * 16, [[<ore:ingotGold>, null, <ore:ingotGold>], [<ore:ingotGold>, <minecraft:stone_pressure_plate>, <ore:ingotGold>], [<ore:ingotGold>, <ore:dustRedstone>, <ore:ingotGold>]]);
recipes.remove(<minecraft:activator_rail>);
recipes.addShaped(<minecraft:activator_rail> * 16, [[<ore:ingotIron>, <ore:stickWood>, <ore:ingotIron>], [<ore:ingotIron>, <minecraft:redstone_torch>, <ore:ingotIron>], [<ore:ingotIron>, <ore:stickWood>, <ore:ingotIron>]]);
recipes.remove(<betterwithmods:booster>);
recipes.addShapeless(<betterwithmods:booster> * 16, [<minecraft:rail>, <betterwithmods:rope>, wooden_gear]);
recipes.remove(<tconstruct:wood_rail_trapdoor>);
recipes.addShaped(<tconstruct:wood_rail_trapdoor> * 16, [[<ore:plankWood>, null, <ore:plankWood>], [<ore:plankWood>, <ore:trapdoorWood>, <ore:plankWood>], [<ore:plankWood>, null, <ore:plankWood>]]);

// Rail Network Controller cheaper
recipes.remove(<signals:rail_network_controller>);
recipes.addShaped(<signals:rail_network_controller>, [[<ore:stone>, <ore:dustRedstone>, <ore:stone>], [<ore:stone>, <ore:gemLapis>, <ore:stone>], [<ore:stone>, <ore:dustRedstone>, <ore:stone>]]);

// Remove rails from stoked crucible
mods.betterwithmods.StokedCrucible.remove(<minecraft:iron_ingot>, [<minecraft:rail>]);

// Grapple Hooks
recipes.remove(<grapplemod:grapplinghook>); // Grappling Hook
recipes.addShaped(<grapplemod:grapplinghook>, [[null, <ore:partPickHead>], [<betterwithmods:rope>, null]]);
recipes.remove(<grapplemod:hookshot>); // Motorized Grappling Hook
recipes.addShaped(<grapplemod:hookshot>, [[<minecraft:piston>], [<grapplemod:grapplinghook>], [<betterwithmods:material:49>]]);
recipes.remove(<grapplemod:launcheritem>); // Ender Staff
recipes.remove(<grapplemod:enderhook>); // Ender Hook
recipes.addShaped(<grapplemod:enderhook>, [[<minecraft:ender_pearl>], [<grapplemod:grapplinghook>], [<betterwithmods:material:49>]]);
recipes.remove(<grapplemod:repeller>); // Magnetic Forcefield
recipes.remove(<grapplemod:magnetbow>); // Magnetic Grappling Hook


/////////////////////////
// Bridge Building Gun //
/////////////////////////

// Remove materials
recipes.remove(<ropebridge:bridge_builder>);
recipes.remove(<ropebridge:ladder_builder>);
recipes.remove(<ropebridge:bridge_builder_material.hook>);
recipes.remove(<ropebridge:bridge_builder_material.barrel>);
recipes.remove(<ropebridge:bridge_builder_material.handle>);
recipes.remove(<ropebridge:ladder_hook>);

// Remove WIP zipline gun
recipes.remove(<ropebridge:zipline_builder>);

// New gun recipes
recipes.addShaped(<ropebridge:bridge_builder>, [[<ore:partBinding>, <ropebridge:rope>, <ore:stickIron>], [null, null, <minecraft:flint_and_steel>]]);
recipes.addShaped(<ropebridge:ladder_builder>, [[<ore:partPickHead>, <ropebridge:rope>, <ore:stickIron>], [null, null, <minecraft:flint_and_steel>]]);

// Rope
recipes.remove(<ropebridge:rope>);
recipes.addShaped(<ropebridge:rope> * 32, [[<ore:string>, <ore:string>, <ore:string>]]);

// Tooltips
<literalascension:climbing_rope>.addTooltip("Used for quick vertical escapes");
<ropebridge:rope>.addTooltip("Used as ammunition for Bridge and Ladder guns");


///////////////
// Railcraft //
///////////////

// Missing Track Parts recipe
recipes.addShapeless(<railcraft:track_parts>, [<immersiveengineering:tool:0>, <tconstruct:pattern>]);

// Remove steel plate from Steam Locomotive
recipes.remove(<railcraft:locomotive_steam_solid>);
recipes.addShaped(<railcraft:locomotive_steam_solid>, [[<ore:ingotSteel>, <ore:ingotSteel>, <minecraft:furnace>], [<ore:ingotSteel>, <ore:ingotSteel>, <minecraft:furnace>], [<minecraft:iron_bars>, <minecraft:minecart>, <minecraft:minecart>]]);

// Remove steel plate from Dumping Track recipe
val dumpingTrackKit = <railcraft:track_kit:7>.withTag({railcraft: {kit: "railcraft_dumping"}});
recipes.remove(dumpingTrackKit);
recipes.addShapeless(dumpingTrackKit, [<ore:plankWood>, <railcraft:track_parts>, <ore:trapdoorWood>, <ore:dustRedstone>]);

// Wooden TNT cart recipe
recipes.addShaped(<railcraft:cart_tnt_wood>, [[<minecraft:tnt>], [<stevescarts:CartModule:37>]]);
