package js.echarts.graphic;

import js.echarts.graphic.Gradient;

/**
x, y, x2, y2 are all percent from 0 to 1
*/
@:native("echarts.graphic.LinearGradient")
extern class LinearGradient extends Gradient {
	var x: Float;
	var y: Float;
	var x2: Float;
	var y2: Float;
	var global:Bool;
	var type: String;
	function new(
		x:Float = 0,
		y:Float = 0,
		x2:Float = 1,
		y2:Float = 0,
		colorStops: Array<ColorStop> = null,
		globalCoord:Bool = false
	);
}