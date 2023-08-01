// Created by Crowbar 0.74

$modelname "iraq/oilpump_animated_peribstk.mdl"

$bodygroup "studio"
{
	studio "oilpump_animated.smd"
}

$lod 150
{
	replacemodel "oilpump_animated.smd" "oilpump_animated_lod1.smd"
	nofacial
}
$lod 300
{
	replacemodel "oilpump_animated.smd" "oilpump_animated_lod2.smd"
	replacebone "oilpump.pipe" "oilpump.masterbone"
	nofacial
}

$surfaceprop "metal"

$contents "solid"

$illumposition -5.826 311.85 171.41

$cdmaterials "models\iraq\"

$cbox 0 0 0 0 0 0

$bbox -525.056 -102.464 -138.785 -98.395 90.812 481.605

$definebone "oilpump.masterbone" "" 2 277 0.000012 0 -90.182765 0 0 0 0 0 0 0
$definebone "oilpump.head" "oilpump.masterbone" 211.00531 -1.326947 280 -16.122576 0.182774 -89.999982 0 0 0 0 0 0
$definebone "oilpump.connection" "oilpump.head" 115.520523 0.082584 0 0 93.824014 0 0 0 0 0 0 0
$definebone "oilpump.counterweight" "oilpump.masterbone" 369.004517 -0.822962 40 -89.999982 -89.817206 0 0 0 0 0 0 0
$definebone "oilpump.engine" "oilpump.masterbone" 587.003418 -0.127591 33 -89.999982 -89.817206 0 0 0 0 0 0 0
$definebone "oilpump.pipe" "oilpump.masterbone" 83.005959 -1.735238 284 89.373831 -179.817229 90.000016 0 0 0 0 0 0


$sequence "idle" {
	"oilpump_animated_peribstk_anims\idle.smd"
	activity "ACT_idle" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "pump" {
	"oilpump_animated_peribstk_anims\pump.smd"
	activity "ACT_pump" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "oilpump_animated_peribstk_physics.smd"
{
	$mass 100
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}

$keyvalues
{
	prop_data 
	{
		"base" "metal.Large"
	}
}
