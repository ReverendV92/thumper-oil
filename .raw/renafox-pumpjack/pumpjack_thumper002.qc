
$opaque
$ambientboost
$origin 55 11 0 0

$modelname props_combine/combinethumper002

$model pumpjack pumpjack_reference
$model combine pumpjack_buttonpanel_reference

$lod 75
{
	replacemodel pumpjack_reference pumpjack_reference_lod1
	replacebone "cable" "root"
	nofacial
}
$lod 150
{
	replacemodel pumpjack_reference pumpjack_reference_lod2
	replacebone "cable" "root"
	nofacial
}
$lod 300
{
	replacemodel pumpjack_reference pumpjack_reference_lod2
	replacebone "cable" "root"
	replacebone "head" "root"
	replacebone "armature" "root"
	replacebone "counterweight" "root"
	nofacial
}
$shadowlod
{
	replacemodel pumpjack_reference pumpjack_reference_lod1
	replacebone "cable" "root"
	nofacial
}

$surfaceprop metal

$contents solid

$illumposition 0 0 64

$cdmaterials models/v92/props_industrial/pumpjack
$cdmaterials models/props_combine

$attachment "hammer" "cable" 0 0 0 rotate 0 0 0

$sequence idle {
	pumpjack_animations
	frames 0 64
	activity "ACT_IDLE" 1
	{ event AE_CL_PLAYSOUND 42 "coast.thumper_top" }
	{ event AE_THUMPER_THUMP 45 "" }
	fadein 0
	fadeout 0
	snap
	fps 23
	loop
}

$sequence static {
	pumpjack_animations
	frames 64 65
	snap
	fps 1
	loop
}

$collisionjoints pumpjack_physics
{
	$mass 100
	$inertia 10
	$damping 0.01
	$rotdamping 1.5
	$rootbone "root"
	$animatedfriction 1 400 0.5 0.0 0.3
	$concaveperjoint
	// $maxconvexpieces 6

}

// $collisionmodel pumpjack_physics
// {
	// $mass 100
	// $inertia 10
	// $damping 0.01
	// $rotdamping 1.5
	// $rootbone " "
// }

$keyvalues
{
	prop_data 
	{
		"base" "metal.Large"
	}
}
