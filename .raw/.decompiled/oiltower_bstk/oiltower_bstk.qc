// Created by Crowbar 0.74

$modelname "iraq/oiltower_bstk.mdl"

$staticprop

$bodygroup "studio"
{
	studio "oiltower.smd"
}

$lod 80
{
	replacemodel "oiltower.smd" "oiltower_lod1.smd"
	nofacial
}
$lod 160
{
	replacemodel "oiltower.smd" "oiltower_lod2.smd"
	nofacial
}

$surfaceprop "metal"

$contents "solid"

$illumposition 0 0 108.992

$cdmaterials "models\iraq\"

$cbox 0 0 0 0 0 0

$bbox -84 -84 -192.25 84 84 410

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"oiltower_bstk_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 15
	loop
}

$collisionmodel "oiltower_bstk_physics.smd"
{
	$mass 5000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 21

}
