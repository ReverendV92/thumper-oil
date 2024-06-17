
$opaque
$ambientboost

$modelname props_combine/combinethumper001a

$model Thumper ins_oilrig_thumper001a_reference
$model Tower ins_oilrig_tower

$lod 32
{
	replacemodel ins_oilrig_tower ins_oilrig_tower_lod1
	nofacial
}

$lod 55
{
	replacemodel ins_oilrig_tower ins_oilrig_tower_lod2
	nofacial
}

$surfaceprop metal_barrel

$contents solid

$illumposition 0 0 64

$cdmaterials models/iraq
$cdmaterials models/props_combine

$attachment "hammer" "drill" 0 0 0 rotate 0 0 0

$sequence idle {
	anim_tower_drill
	activity ACT_IDLE 1
	{ event AE_THUMPER_THUMP 10 "" }
	{ event AE_CL_PLAYSOUND 10 "coast.thumper_top" }
	fps 10
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
