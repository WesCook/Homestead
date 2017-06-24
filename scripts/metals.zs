// Disable ore smelting
furnace.remove(<ore:ingotIron>);
furnace.remove(<ore:ingotGold>);
furnace.remove(<ore:ingotCopper>);
furnace.remove(<ore:ingotAluminum>);
furnace.remove(<ore:ingotLead>);
furnace.remove(<ore:ingotSilver>);
furnace.remove(<ore:ingotNickel>);
furnace.remove(<ore:ingotUranium>);
furnace.remove(<ore:ingotElectrum>);
furnace.remove(<ore:ingotConstantan>);
furnace.remove(<ore:ingotSteel>);
furnace.remove(<ore:gemQuartz>);
furnace.remove(<ore:gemLapis>);
furnace.remove(<ore:gemEmerald>);
furnace.remove(<ore:gemDiamond>);
furnace.remove(<ore:dustRedstone>);
furnace.remove(<minecraft:coal>);

// Remove duplicate iron nugget recipes (prefer Better With Mods)
recipes.remove(<immersiveengineering:metal:29>); // Immersive Engineering
recipes.remove(<totemic:subItems:0>); // Totemic

// Remove duplicate iron nugget oredicts
<ore:nuggetIron>.remove(<immersiveengineering:metal:29>); // Immersive Engineering
<ore:nuggetIron>.remove(<totemic:subItems:0>); // Totemic

// Remove Nugget > Ingot crafting
recipes.removeShaped(<ore:ingotIron>, [[<ore:nuggetIron>, <ore:nuggetIron>, <ore:nuggetIron>], [<ore:nuggetIron>, <ore:nuggetIron>, <ore:nuggetIron>], [<ore:nuggetIron>, <ore:nuggetIron>, <ore:nuggetIron>]]);
recipes.removeShaped(<ore:ingotGold>, [[<ore:nuggetGold>, <ore:nuggetGold>, <ore:nuggetGold>], [<ore:nuggetGold>, <ore:nuggetGold>, <ore:nuggetGold>], [<ore:nuggetGold>, <ore:nuggetGold>, <ore:nuggetGold>]]);
recipes.removeShaped(<ore:gemEmerald>, [[<ore:nuggetEmerald>, <ore:nuggetEmerald>, <ore:nuggetEmerald>], [<ore:nuggetEmerald>, <ore:nuggetEmerald>, <ore:nuggetEmerald>], [<ore:nuggetEmerald>, <ore:nuggetEmerald>, <ore:nuggetEmerald>]]);
recipes.removeShaped(<ore:gemDiamond>, [[<ore:nuggetDiamond>, <ore:nuggetDiamond>, <ore:nuggetDiamond>], [<ore:nuggetDiamond>, <ore:nuggetDiamond>, <ore:nuggetDiamond>], [<ore:nuggetDiamond>, <ore:nuggetDiamond>, <ore:nuggetDiamond>]]);
recipes.removeShaped(<ore:ingotCopper>, [[<ore:nuggetCopper>, <ore:nuggetCopper>, <ore:nuggetCopper>], [<ore:nuggetCopper>, <ore:nuggetCopper>, <ore:nuggetCopper>], [<ore:nuggetCopper>, <ore:nuggetCopper>, <ore:nuggetCopper>]]);
recipes.removeShaped(<ore:ingotLead>, [[<ore:nuggetLead>, <ore:nuggetLead>, <ore:nuggetLead>], [<ore:nuggetLead>, <ore:nuggetLead>, <ore:nuggetLead>], [<ore:nuggetLead>, <ore:nuggetLead>, <ore:nuggetLead>]]);
recipes.removeShaped(<ore:ingotSilver>, [[<ore:nuggetSilver>, <ore:nuggetSilver>, <ore:nuggetSilver>], [<ore:nuggetSilver>, <ore:nuggetSilver>, <ore:nuggetSilver>], [<ore:nuggetSilver>, <ore:nuggetSilver>, <ore:nuggetSilver>]]);
recipes.removeShaped(<ore:ingotAluminum>, [[<ore:nuggetAluminum>, <ore:nuggetAluminum>, <ore:nuggetAluminum>], [<ore:nuggetAluminum>, <ore:nuggetAluminum>, <ore:nuggetAluminum>], [<ore:nuggetAluminum>, <ore:nuggetAluminum>, <ore:nuggetAluminum>]]);
recipes.removeShaped(<ore:ingotNickel>, [[<ore:nuggetNickel>, <ore:nuggetNickel>, <ore:nuggetNickel>], [<ore:nuggetNickel>, <ore:nuggetNickel>, <ore:nuggetNickel>], [<ore:nuggetNickel>, <ore:nuggetNickel>, <ore:nuggetNickel>]]);

// Furnace requires iron
recipes.remove(<minecraft:furnace>);
recipes.addShaped(<minecraft:furnace>, [[<ore:cobblestone>, <ore:ingotIron>, <ore:cobblestone>], [<ore:cobblestone>, null, <ore:cobblestone>], [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]]);

// Immersive Furnace
recipes.remove(<immcraft:furnace>);
recipes.addShaped(<immcraft:furnace>, [[<ore:cobblestone>, <immcraft:rock>, <ore:cobblestone>], [<ore:cobblestone>, null, <ore:cobblestone>], [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]]);

// Remove Railcraft dark ore dictionary entries
<ore:oreDiamond>.remove(<railcraft:ore:2>);
<ore:oreEmerald>.remove(<railcraft:ore:3>);
<ore:oreLapis>.remove(<railcraft:ore:4>);

// Metal armor oredicts for Advanced Combat quest
<ore:metalCap>.add(<minecraft:iron_helmet>);
<ore:metalCap>.add(<minecraft:golden_helmet>);
<ore:metalCap>.add(<minecraft:diamond_helmet>);
<ore:metalCap>.add(<betterwithmods:steel_helmet>);
<ore:metalChestplate>.add(<minecraft:iron_chestplate>);
<ore:metalChestplate>.add(<minecraft:golden_chestplate>);
<ore:metalChestplate>.add(<minecraft:diamond_chestplate>);
<ore:metalChestplate>.add(<betterwithmods:steel_chest>);
<ore:metalLeggings>.add(<minecraft:iron_leggings>);
<ore:metalLeggings>.add(<minecraft:golden_leggings>);
<ore:metalLeggings>.add(<minecraft:diamond_leggings>);
<ore:metalLeggings>.add(<betterwithmods:steel_pants>);
<ore:metalBoots>.add(<minecraft:iron_boots>);
<ore:metalBoots>.add(<minecraft:golden_boots>);
<ore:metalBoots>.add(<minecraft:diamond_boots>);
<ore:metalBoots>.add(<betterwithmods:steel_boots>);

// Tooltips
<ore:ingotIron>.addTooltip("Casted in a Tinkers smeltery");
<ore:nuggetIron>.addTooltip("Melt into an ingot using a Tinkers smeltery");
<ore:nuggetGold>.addTooltip("Melt into an ingot using a Tinkers smeltery");
<ore:powderedHellfire>.addTooltip("Ground Netherrack through a Filtered Hopper"); // Hellfire Dust
<ore:ingotHellfire>.addTooltip("Smelted Hellfire Dust"); // Concentrated Hellfire
