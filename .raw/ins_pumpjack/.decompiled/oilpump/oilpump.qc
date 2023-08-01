// Created by Crowbar 0.74

$modelname "iraq/oilpump.mdl"

$staticprop

$bodygroup "studio"
{
	studio "oilpump.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition -2.032 -40.91 168.404

$cdmaterials "models\iraq\"

$cbox 0 0 0 0 0 0

$bbox -264.25 -105.581 -37.668 343.24 104.25 376.25

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"oilpump_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 15
	loop
}

$collisionmodel "oilpump_physics.smd"
{
	$mass 100
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 20

}
