// Use hemp fiber instead of wool
recipes.remove(<yurtmod:bed_wall_piece>);
recipes.addShaped(<yurtmod:bed_wall_piece>, [[<ore:fabricHemp>, <ore:stickWood>, <ore:fabricHemp>], [<ore:fabricHemp>, <ore:stickWood>, <ore:fabricHemp>]]);

// Make mallets cheaper
recipes.remove(<yurtmod:mallet>);
recipes.addShaped(<yurtmod:mallet>, [[null, <ore:plankWood>, <ore:stickWood>], [null, <ore:stickWood>, <ore:plankWood>], [<ore:stickWood>, null, null]]);
//recipes.remove(<yurtmod:super_mallet>);
recipes.addShaped(<yurtmod:super_mallet>, [[null, <ore:ingotGold>, <ore:stickTreatedWood>], [null, <ore:stickTreatedWood>, <ore:ingotGold>], [<ore:stickTreatedWood>, null, null]]);

// Canvas can use any wool color
recipes.remove(<yurtmod:tent_canvas>);
recipes.addShaped(<yurtmod:tent_canvas>, [[<minecraft:wool:*>], [<minecraft:wool:*>]]);

// Use leather oredict
recipes.remove(<yurtmod:tepee_wall_piece>);
recipes.addShaped(<yurtmod:tepee_wall_piece>, [[<ore:leather>, <ore:stickWood>, <ore:leather>], [<ore:leather>, <ore:stickWood>, <ore:leather>]]);

// Use stick oredict
recipes.remove(<yurtmod:yurt_wall_piece>);
recipes.addShaped(<yurtmod:yurt_wall_piece>, [[<yurtmod:tent_canvas>, <ore:stickWood>, <yurtmod:tent_canvas>], [<yurtmod:tent_canvas>, <ore:stickWood>, <yurtmod:tent_canvas>]]);

// Architect's Sawbench made cheaper
recipes.remove(<architecturecraft:sawbench>);
recipes.addShaped(<architecturecraft:sawbench>, [[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>], [<ore:stickWood>, <ore:gearWood>, <ore:stickWood>], [<ore:stickWood>, null, <ore:stickWood>]]);

// Yurt Mod Tooltips
<yurtmod:mallet>.anyDamage().addTooltip("Used to construct nomadic tents");
<yurtmod:mallet>.anyDamage().addTooltip("Right click a completed tent's door to pick it up");
<yurtmod:super_mallet>.anyDamage().addTooltip("Can construct an entire tent at once");
<yurtmod:super_mallet>.anyDamage().addTooltip("Right click a completed tent's door to pick it up");

// Remove Invitation recipe (must be found in loot chests)
recipes.remove(<villagebox:invitation>);

// VillageBox Tooltips
<villagebox:invitation>.addTooltip(format.green("Can be found in dungeon loot"));
<villagebox:bronze_coin>.addTooltip("Currency for villagers, acquired by killing mobs");
<villagebox:silver_coin>.addTooltip("Can be traded for with a banker");
<villagebox:gold_coin>.addTooltip("Can be traded for with a banker");

// Spinet Piano recipe change
recipes.remove(<mxtune:block_piano>);
recipes.addShaped(<mxtune:block_piano>, [[<minecraft:iron_trapdoor>, <minecraft:iron_trapdoor>, <minecraft:iron_trapdoor>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

// Chimney Oredict
<ore:chimney>.add(<adchimneys:bedrock>);
<ore:chimney>.add(<adchimneys:brick>);
<ore:chimney>.add(<adchimneys:coal_block>);
<ore:chimney>.add(<adchimneys:cobblestone>);
<ore:chimney>.add(<adchimneys:cobblestone_mossy>);
<ore:chimney>.add(<adchimneys:diamond_block>);
<ore:chimney>.add(<adchimneys:emerald_block>);
<ore:chimney>.add(<adchimneys:end_bricks>);
<ore:chimney>.add(<adchimneys:end_stone>);
<ore:chimney>.add(<adchimneys:glowstone>);
<ore:chimney>.add(<adchimneys:gold_block>);
<ore:chimney>.add(<adchimneys:iron_block>);
<ore:chimney>.add(<adchimneys:lapis_block>);
<ore:chimney>.add(<adchimneys:magma>);
<ore:chimney>.add(<adchimneys:netherrack>);
<ore:chimney>.add(<adchimneys:nether_brick>);
<ore:chimney>.add(<adchimneys:nether_wart_block>);
<ore:chimney>.add(<adchimneys:obsidian>);
<ore:chimney>.add(<adchimneys:prismarine_bricks>);
<ore:chimney>.add(<adchimneys:prismarine_dark>);
<ore:chimney>.add(<adchimneys:prismarine_rough>);
<ore:chimney>.add(<adchimneys:purpur_block>);
<ore:chimney>.add(<adchimneys:quartz_block_side>);
<ore:chimney>.add(<adchimneys:red_nether_brick>);
<ore:chimney>.add(<adchimneys:red_sandstone_normal>);
<ore:chimney>.add(<adchimneys:red_sandstone_smooth>);
<ore:chimney>.add(<adchimneys:sandstone_normal>);
<ore:chimney>.add(<adchimneys:sandstone_smooth>);
<ore:chimney>.add(<adchimneys:soul_sand>);
<ore:chimney>.add(<adchimneys:stone>);
<ore:chimney>.add(<adchimneys:stonebrick>);
<ore:chimney>.add(<adchimneys:stone_andesite>);
<ore:chimney>.add(<adchimneys:stone_andesite_smooth>);
<ore:chimney>.add(<adchimneys:stone_diorite>);
<ore:chimney>.add(<adchimneys:stone_diorite_smooth>);
<ore:chimney>.add(<adchimneys:stone_granite>);
<ore:chimney>.add(<adchimneys:stone_granite_smooth>);
<ore:chimney>.add(<adchimneys:bone_block_side>);
<ore:chimney>.add(<adchimneys:clay>);
<ore:chimney>.add(<adchimneys:coarse_dirt>);
<ore:chimney>.add(<adchimneys:dirt>);
<ore:chimney>.add(<adchimneys:hardened_clay>);
<ore:chimney>.add(<adchimneys:hardened_clay_stained_black>);
<ore:chimney>.add(<adchimneys:hardened_clay_stained_blue>);
<ore:chimney>.add(<adchimneys:hardened_clay_stained_brown>);
<ore:chimney>.add(<adchimneys:hardened_clay_stained_cyan>);
<ore:chimney>.add(<adchimneys:hardened_clay_stained_gray>);
<ore:chimney>.add(<adchimneys:hardened_clay_stained_green>);
<ore:chimney>.add(<adchimneys:hardened_clay_stained_light_blue>);
<ore:chimney>.add(<adchimneys:hardened_clay_stained_lime>);
<ore:chimney>.add(<adchimneys:hardened_clay_stained_magenta>);
<ore:chimney>.add(<adchimneys:hardened_clay_stained_orange>);
<ore:chimney>.add(<adchimneys:hardened_clay_stained_purple>);
<ore:chimney>.add(<adchimneys:hardened_clay_stained_red>);
<ore:chimney>.add(<adchimneys:hardened_clay_stained_silver>);
<ore:chimney>.add(<adchimneys:hardened_clay_stained_white>);
<ore:chimney>.add(<adchimneys:hardened_clay_stained_yellow>);
<ore:chimney>.add(<adchimneys:hardened_clay_stained_pink>);
<ore:chimney>.add(<adchimneys:quartz_block_chiseled>);
<ore:chimney>.add(<adchimneys:quartz_block_lines>);
<ore:chimney>.add(<adchimneys:red_sandstone_carved>);
<ore:chimney>.add(<adchimneys:sandstone_carved>);
<ore:chimney>.add(<adchimneys:sea_lantern>);
<ore:chimney>.add(<adchimneys:stonebrick_mossy>);
<ore:chimney>.add(<adchimneys:stonebrick_cracked>);


// Coffee Table Oredict
<ore:coffeeTable>.add(<furniture:coffee_table_oak>);
<ore:coffeeTable>.add(<furniture:coffee_table_spruce>);
<ore:coffeeTable>.add(<furniture:coffee_table_birch>);
<ore:coffeeTable>.add(<furniture:coffee_table_jungle>);
<ore:coffeeTable>.add(<furniture:coffee_table_acacia>);
<ore:coffeeTable>.add(<furniture:coffee_table_dark_oak>);
