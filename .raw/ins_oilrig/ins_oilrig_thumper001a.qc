
$opaque
$ambientboost

$modelname props_combine/combinethumper001a

$model oilrig ins_oilrig_thumper001a_reference

$lod 32
{
	// replacemodel ins_oilrig_thumper001a_reference ins_oilrig_thumper001a_reference_lod1
	nofacial
}

$lod 55
{
	// replacemodel ins_oilrig_thumper001a_reference ins_oilrig_thumper001a_reference_lod2
	nofacial
}

$surfaceprop metal_barrel

$contents solid

$illumposition 0 0 64

$cdmaterials models/iraq
$cdmaterials models/props_combine

$attachment "hammer" "thumper" 0 0 0 rotate 0 0 0

$sequence idle {
	ins_oilrig_thumper001a_reference
	activity ACT_IDLE 1
	{ event AE_THUMPER_THUMP 0 "" }
	{ event AE_CL_PLAYSOUND 0 "coast.thumper_top" }
	fps 30
	loop
}

$collisionmodel ins_oilrig_thumper001a_physics
{
	$mass 1000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	// $maxconvexpieces 10

}
