package js.echarts.graphic;

import js.echarts.graphic.Gradient;

@:native("echarts.graphic.RadialGradient")
extern class RadialGradient extends Gradient {
	var x: Float;
	var y: Float;
	var r: Float;
	var global:Bool;
	var type: String;
	function new(
		x:Float = .5,
		y:Float = .5,
		r:Float = .5,
		colorStops: Array<ColorStop> = null,
		globalCoord:Bool = false
	);
}