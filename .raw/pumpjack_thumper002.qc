
$opaque
$ambientboost
$origin -4 8 0 0

$modelname props_combine/combinethumper002

$model pumpjack pumpjack_thumper002_reference

// $lod 150
// {
	// replacemodel pumpjack_thumper002_reference pumpjack_thumper002_reference_lod1
	// nofacial
// }
// $lod 300
// {
	// replacemodel pumpjack_thumper002_reference pumpjack_thumper002_reference_lod2
	// replacebone "oilpump.pipe" "oilpump.masterbone"
	// nofacial
// }

$surfaceprop metal

$contents solid

$illumposition 0 0 64

$cdmaterials models/iraq

$attachment "hammer" "hammer" 0 0 0 rotate 0 0 0

$sequence idle {
	pumpjack_thumper002_animation_pump
	activity "ACT_IDLE" 1
	{ event AE_THUMPER_THUMP 49 "" }
	{ event AE_CL_PLAYSOUND 0 "coast.thumper_top" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
	loop
}

// $collisionjoints pumpjack_thumper002_physics
// {
	// $mass 100
	// $inertia 10
	// $damping 0.01
	// $rotdamping 1.5
	// $rootbone "oilpump.masterbone"
	// $animatedfriction 1 400 0.5 0.0 0.3
	// $concaveperjoint
	// $maxconvexpieces 12

// }

$collisionmodel pumpjack_thumper002_physics_static
{
	$mass 100
	$inertia 10
	$damping 0.01
	$rotdamping 1.5
	$rootbone " "
	$concave
	$maxconvexpieces 7

}

$keyvalues
{
	prop_data 
	{
		"base" "metal.Large"
	}
}
