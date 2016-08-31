package js.echarts;

import js.echarts.options.*;
import haxe.extern.EitherType;

typedef SetOptions = {
	@:optional var backgroundColor: String;
	@:optional var blendMode : BlendMode;          // "source-over"
	@:optional var color: Array<String>;
	@:optional var animation: Bool;
	@:optional var animationThreshold : Float;
	@:optional var animationDuration : Float;
	@:optional var animationEasing : Easing;       // TODO: ??? cubicOut
	@:optional var animationDelay : EitherType<Float, Int->Float>;
	@:optional var animationDurationUpdate : Float;// 300
	@:optional var animationEasingUpdate : Easing; // TODO: ??? cubicOut
	@:optional var animationDelayUpdate : EitherType<Float, Int->Float>;
	@:optional var progressive : Float;            // 400
	@:optional var progressiveThreshold : Float;   // 3000
	@:optional var hoverLayerThreshold : Float;    // 3000


	@:optional var title : Title;
	@:optional var legend : Legend;
	@:optional var grid : Array<Grid>;
	@:optional var xAxis : EitherType<XAxis, Array<XAxis>>;
	@:optional var yAxis : EitherType<YAxis, Array<YAxis>>;

	// TODO:

	@:optional var polar : Dynamic;
	@:optional var radiusAxis : Dynamic;
	@:optional var angleAxis : Dynamic;
	@:optional var radar : Dynamic;
	@:optional var dataZoom : Dynamic;
	@:optional var visualMap : Dynamic;
	@:optional var tooltip : Dynamic;
	@:optional var toolbox : Dynamic;
	@:optional var brush : Dynamic;
	@:optional var geo : Dynamic;
	@:optional var parallel : Dynamic;
	@:optional var parallelAxis : Dynamic;
	@:optional var singleAxis : Dynamic;
	@:optional var timeline : Dynamic;
	@:optional var series : Dynamic;
}


@:enum abstract Easing(String) to String{
	var LINEAR = "linear";
	var QUADRATICIN = "quadraticIn";
	var QUADRATICOUT = "quadraticOut";
	var QUADRATICINOUT = "quadraticInOut";
	var CUBICIN = "cubicIn";
	var CUBICOUT = "cubicOut";
	var CUBICINOUT = "cubicInOut";
	var QUARTICIN = "quarticIn";
	var QUARTICOUT = "quarticOut";
	var QUARTICINOUT = "quarticInOut";
	var QUINTICIN = "quinticIn";
	var QUINTICOUT = "quinticOut";
	var QUINTICINOUT = "quinticInOut";
	var SINUSOIDALIN = "sinusoidalIn";
	var SINUSOIDALOUT = "sinusoidalOut";
	var SINUSOIDALINOUT = "sinusoidalInOut";
	var EXPONENTIALIN = "exponentialIn";
	var EXPONENTIALOUT = "exponentialOut";
	var EXPONENTIALINOUT = "exponentialInOut";
	var CIRCULARIN = "circularIn";
	var CIRCULAROUT = "circularOut";
	var CIRCULARINOUT = "circularInOut";
	var ELASTICIN = "elasticIn";
	var ELASTICOUT = "elasticOut";
	var ELASTICINOUT = "elasticInOut";
	var BACKIN = "backIn";
	var BACKOUT = "backOut";
	var BACKINOUT = "backInOut";
	var BOUNCEIN = "bounceIn";
	var BOUNCEOUT = "bounceOut";
	var BOUNCEINOUT = "bounceInOut";
}

/**
 https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/globalCompositeOperation
*/
@:enum abstract BlendMode(String) to String{
	var SOURCE_OVER = "source-over";
	var SOURCE_IN = "source-in";
	var SOURCE_OUT = "source-out";
	var SOURCE_ATOP = "source-atop";
	var DESTINATION_OVER = "destination-over";
	var DESTINATION_IN = "destination-in";
	var DESTINATION_OUT = "destination-out";
	var DESTINATION_ATOP = "destination-atop";
	var LIGHTER = "lighter";
	var COPY = "copy";
	var XOR = "xor";
	var MULTIPLY = "multiply";
	var SCREEN = "screen";
	var OVERLAY = "overlay";
	var DARKEN = "darken";
	var LIGHTEN = "lighten";
	var COLOR_DODGE = "color-dodge";
	var COLOR_BURN = "color-burn";
	var HARD_LIGHT = "hard-light";
	var SOFT_LIGHT = "soft-light";
	var DIFFERENCE = "difference";
	var EXCLUSION = "exclusion";
	var HUE = "hue";
	var SATURATION = "saturation";
	var COLOR = "color";
	var LUMINOSITY = "luminosity";
}