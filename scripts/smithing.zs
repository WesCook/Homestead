// Constants
val tanned_cut_leather = <betterwithmods:material:33>;
val leather_strap = <betterwithmods:material:8>;
val soulforged_steel = <betterwithmods:material:14>;
val soulforged_armor_plate = <betterwithmods:material:46>;
val chain_mail = <betterwithmods:material:50>;

// Make steel anvil cheaper
recipes.remove(<betterwithmods:steel_anvil>);
recipes.addShaped(<betterwithmods:steel_anvil>, [[<ore:blockSteel>, <ore:blockSteel>, <ore:blockSteel>], [null, <ore:ingotSteel>, null], [<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>]]);
mods.betterwithmods.StokedCrucible.remove(soulforged_steel, [<betterwithmods:steel_anvil>]); // Don't give back soulforged steel if melted down

// Soulforged Steel Armor Plate
mods.betterwithmods.SteelAnvil.remove(<betterwithmods:material:46>);
recipes.addShaped(<betterwithmods:material:46>, [[leather_strap, <ore:ingotSoulforgedSteel>, leather_strap]]);

// Soulforged steel takes regular steel
mods.betterwithmods.StokedCrucible.remove(soulforged_steel, [<ore:dustCoal>, <betterwithmods:urn:8>, <ore:ingotIron>, <betterwithmods:material:42>]);
mods.betterwithmods.StokedCrucible.add(soulforged_steel, null, [<ore:dustCoal>, <betterwithmods:urn:8>, <ore:ingotSteel>, <betterwithmods:material:42>]);
soulforged_steel.addTooltip("Forged from steel and souls");

#########
# Armor #
#########

// Remove armors
recipes.remove(<minecraft:iron_helmet>);
recipes.remove(<minecraft:iron_chestplate>);
recipes.remove(<minecraft:iron_leggings>);
recipes.remove(<minecraft:iron_boots>);

recipes.remove(<minecraft:golden_helmet>);
recipes.remove(<minecraft:golden_chestplate>);
recipes.remove(<minecraft:golden_leggings>);
recipes.remove(<minecraft:golden_boots>);

recipes.remove(<minecraft:chainmail_helmet>);
recipes.remove(<minecraft:chainmail_chestplate>);
recipes.remove(<minecraft:chainmail_leggings>);
recipes.remove(<minecraft:chainmail_boots>);

recipes.remove(<minecraft:diamond_helmet>);
recipes.remove(<minecraft:diamond_chestplate>);
recipes.remove(<minecraft:diamond_leggings>);
recipes.remove(<minecraft:diamond_boots>);

mods.betterwithmods.SteelAnvil.remove(<betterwithmods:steel_helmet>);
mods.betterwithmods.SteelAnvil.remove(<betterwithmods:steel_chest>);
mods.betterwithmods.SteelAnvil.remove(<betterwithmods:steel_pants>);
mods.betterwithmods.SteelAnvil.remove(<betterwithmods:steel_boots>);

recipes.remove(<immersiveengineering:faradaySuit_head>);
recipes.remove(<immersiveengineering:faradaySuit_chest>);
recipes.remove(<immersiveengineering:faradaySuit_legs>);
recipes.remove(<immersiveengineering:faradaySuit_feet>);

// Add back in steel anvil
mods.betterwithmods.SteelAnvil.addShaped(<minecraft:iron_helmet>, [[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>], [<ore:ingotIron>, null, null, <ore:ingotIron>], [<ore:ingotIron>, null, null, <ore:ingotIron>], [null, leather_strap, leather_strap, null]]);
mods.betterwithmods.SteelAnvil.addShaped(<minecraft:iron_chestplate>, [[leather_strap, null, null, leather_strap], [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>], [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>], [null, <ore:ingotIron>, <ore:ingotIron>, null]]);
mods.betterwithmods.SteelAnvil.addShaped(<minecraft:iron_leggings>, [[leather_strap, <ore:ingotIron>, <ore:ingotIron>, leather_strap], [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>], [<ore:ingotIron>, null, null, <ore:ingotIron>], [<ore:ingotIron>, null, null, <ore:ingotIron>]]);
mods.betterwithmods.SteelAnvil.addShaped(<minecraft:iron_boots>, [[null, <ore:ingotIron>, <ore:ingotIron>, null], [null, <ore:ingotIron>, <ore:ingotIron>, null], [<ore:ingotIron>, leather_strap, leather_strap, <ore:ingotIron>]]);

mods.betterwithmods.SteelAnvil.addShaped(<minecraft:golden_helmet>, [[<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>], [<ore:ingotGold>, null, null, <ore:ingotGold>], [<ore:ingotGold>, null, null, <ore:ingotGold>], [null, leather_strap, leather_strap, null]]);
mods.betterwithmods.SteelAnvil.addShaped(<minecraft:golden_chestplate>, [[leather_strap, null, null, leather_strap], [<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>], [<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>], [null, <ore:ingotGold>, <ore:ingotGold>, null]]);
mods.betterwithmods.SteelAnvil.addShaped(<minecraft:golden_leggings>, [[leather_strap, <ore:ingotGold>, <ore:ingotGold>, leather_strap], [<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>], [<ore:ingotGold>, null, null, <ore:ingotGold>], [<ore:ingotGold>, null, null, <ore:ingotGold>]]);
mods.betterwithmods.SteelAnvil.addShaped(<minecraft:golden_boots>, [[null, <ore:ingotGold>, <ore:ingotGold>, null], [null, <ore:ingotGold>, <ore:ingotGold>, null], [<ore:ingotGold>, leather_strap, leather_strap, <ore:ingotGold>]]);

mods.betterwithmods.SteelAnvil.addShaped(<minecraft:chainmail_helmet>, [[chain_mail, chain_mail, chain_mail, chain_mail], [chain_mail, null, null, chain_mail], [chain_mail, null, null, chain_mail], [null, leather_strap, leather_strap, null]]);
mods.betterwithmods.SteelAnvil.addShaped(<minecraft:chainmail_chestplate>, [[leather_strap, null, null, leather_strap], [chain_mail, chain_mail, chain_mail, chain_mail], [chain_mail, chain_mail, chain_mail, chain_mail], [null, chain_mail, chain_mail, null]]);
mods.betterwithmods.SteelAnvil.addShaped(<minecraft:chainmail_leggings>, [[leather_strap, chain_mail, chain_mail, leather_strap], [chain_mail, chain_mail, chain_mail, chain_mail], [chain_mail, null, null, chain_mail], [chain_mail, null, null, chain_mail]]);
mods.betterwithmods.SteelAnvil.addShaped(<minecraft:chainmail_boots>, [[null, chain_mail, chain_mail, null], [null, chain_mail, chain_mail, null], [chain_mail, leather_strap, leather_strap, chain_mail]]);

mods.betterwithmods.SteelAnvil.addShaped(<minecraft:diamond_helmet>, [[<ore:gemDiamond>, <ore:gemDiamond>, <ore:gemDiamond>, <ore:gemDiamond>], [<ore:gemDiamond>, null, null, <ore:gemDiamond>], [<ore:gemDiamond>, null, null, <ore:gemDiamond>], [null, leather_strap, leather_strap, null]]);
mods.betterwithmods.SteelAnvil.addShaped(<minecraft:diamond_chestplate>, [[leather_strap, null, null, leather_strap], [<ore:gemDiamond>, <ore:gemDiamond>, <ore:gemDiamond>, <ore:gemDiamond>], [<ore:gemDiamond>, <ore:gemDiamond>, <ore:gemDiamond>, <ore:gemDiamond>], [null, <ore:gemDiamond>, <ore:gemDiamond>, null]]);
mods.betterwithmods.SteelAnvil.addShaped(<minecraft:diamond_leggings>, [[leather_strap, <ore:gemDiamond>, <ore:gemDiamond>, leather_strap], [<ore:gemDiamond>, <ore:gemDiamond>, <ore:gemDiamond>, <ore:gemDiamond>], [<ore:gemDiamond>, null, null, <ore:gemDiamond>], [<ore:gemDiamond>, null, null, <ore:gemDiamond>]]);
mods.betterwithmods.SteelAnvil.addShaped(<minecraft:diamond_boots>, [[null, <ore:gemDiamond>, <ore:gemDiamond>, null], [null, <ore:gemDiamond>, <ore:gemDiamond>, null], [<ore:gemDiamond>, leather_strap, leather_strap, <ore:gemDiamond>]]);

mods.betterwithmods.SteelAnvil.addShaped(<betterwithmods:steel_helmet>, [[soulforged_steel, soulforged_steel, soulforged_steel, soulforged_steel], [soulforged_steel, null, null, soulforged_steel], [soulforged_steel, null, null, soulforged_steel], [null, soulforged_armor_plate, soulforged_armor_plate, null]]);
mods.betterwithmods.SteelAnvil.addShaped(<betterwithmods:steel_chest>, [[soulforged_armor_plate, null, null, soulforged_armor_plate], [soulforged_steel, soulforged_steel, soulforged_steel, soulforged_steel], [soulforged_steel, soulforged_steel, soulforged_steel, soulforged_steel], [null, soulforged_steel, soulforged_steel, null]]);
mods.betterwithmods.SteelAnvil.addShaped(<betterwithmods:steel_pants>, [[soulforged_armor_plate, soulforged_steel, soulforged_steel, soulforged_armor_plate], [soulforged_steel, soulforged_steel, soulforged_steel, soulforged_steel], [soulforged_steel, null, null, soulforged_steel], [soulforged_steel, null, null, soulforged_steel]]);
mods.betterwithmods.SteelAnvil.addShaped(<betterwithmods:steel_boots>, [[null, soulforged_steel, soulforged_steel, null], [null, soulforged_steel, soulforged_steel, null], [soulforged_steel, soulforged_armor_plate, soulforged_armor_plate, soulforged_steel]]);

mods.betterwithmods.SteelAnvil.addShaped(<immersiveengineering:faradaySuit_head>, [[<ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>], [<ore:plateAluminum>, null, null, <ore:plateAluminum>], [<ore:plateAluminum>, null, null, <ore:plateAluminum>], [null, leather_strap, leather_strap, null]]);
mods.betterwithmods.SteelAnvil.addShaped(<immersiveengineering:faradaySuit_chest>, [[leather_strap, null, null, leather_strap], [<ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>], [<ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>], [null, <ore:plateAluminum>, <ore:plateAluminum>, null]]);
mods.betterwithmods.SteelAnvil.addShaped(<immersiveengineering:faradaySuit_legs>, [[leather_strap, <ore:plateAluminum>, <ore:plateAluminum>, leather_strap], [<ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>], [<ore:plateAluminum>, null, null, <ore:plateAluminum>], [<ore:plateAluminum>, null, null, <ore:plateAluminum>]]);
mods.betterwithmods.SteelAnvil.addShaped(<immersiveengineering:faradaySuit_feet>, [[null, <ore:plateAluminum>, <ore:plateAluminum>, null], [null, <ore:plateAluminum>, <ore:plateAluminum>, null], [<ore:plateAluminum>, leather_strap, leather_strap, <ore:plateAluminum>]]);
