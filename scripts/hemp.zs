// Hemp Processing Order
// IE Hemp Seeds (seed)
// IE Raw Hemp Fiber (crop)
// BWM Hemp Fibers (mill produce)
// IE Tough Fabric (refined)

// Constants
val ie_hemp_fiber = <immersiveengineering:material:4>;
val bwm_hemp_crop = <betterwithmods:material:2>;
val bwm_hemp_fiber = <betterwithmods:material:3>;
val bwm_hemp_cloth = <betterwithmods:material:4>;

// Use Immersive Engineering Hemp Crop
<ore:cropHemp>.remove(bwm_hemp_crop); // Remove Better with Mods hemp (clears Mill recipe)
<ore:cropHemp>.add(ie_hemp_fiber); // Use Immersive Engineering hemp instead (grows faster, looks nicer)
mods.betterwithmods.Mill.remove(bwm_hemp_fiber); // First remove BWM hemp crop recipe
mods.betterwithmods.Mill.add(bwm_hemp_fiber * 3, null, [ie_hemp_fiber]); // Then add IE hemp

// Use Better with Mods Hemp Fiber
<ore:fiberHemp>.remove(ie_hemp_fiber);

// Use Immersive Engineering's Fabric
<ore:fabricHemp>.remove(bwm_hemp_cloth); // Remove BWM fabric in favor of IE's
recipes.remove(bwm_hemp_cloth);
recipes.remove(<betterwithmods:material:45>); // Remove padding

// Hemp is compatible with string, and can't be crafted into it
<ore:string>.add(bwm_hemp_fiber);
recipes.removeShapeless(<minecraft:string>, [bwm_hemp_fiber, bwm_hemp_fiber, bwm_hemp_fiber]);

// Tooltips
<immersiveengineering:seed>.addTooltip("Found in long grass");
ie_hemp_fiber.addTooltip("Product of Industrial Hemp crops");
bwm_hemp_fiber.addTooltip("Flexible like string");
bwm_hemp_fiber.addTooltip("Obtained from grinding Raw Hemp Fiber");

// Remove wool > string recipe
recipes.removeShaped(<minecraft:string> * 4, [[<minecraft:wool:*>]]);
