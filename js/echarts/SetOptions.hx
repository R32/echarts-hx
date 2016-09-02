package js.echarts;

import js.echarts.options.*;
import js.echarts.options.Data;
import haxe.extern.EitherType;

typedef SetOptions = {

	> Animation,

	@:optional var backgroundColor: String;
	@:optional var blendMode : BlendMode;          // "source-over"
	@:optional var color: Array<String>;
	@:optional var progressive : Float;            // 400
	@:optional var progressiveThreshold : Float;   // 3000
	@:optional var hoverLayerThreshold : Float;    // 3000
	@:optional var textStyle : TextStyle;
	////
	@:optional var title : EitherType<Title, Array<Title>>;
	@:optional var legend : EitherType<Legend, Array<Legend>>;
	@:optional var grid : Array<Grid>;
	@:optional var xAxis : EitherType<XAxis, Array<XAxis>>;
	@:optional var yAxis : EitherType<YAxis, Array<YAxis>>;
	@:optional var polar : EitherType<Polar, Array<Polar>>;
	@:optional var radiusAxis : EitherType<RadiusAxis, Array<RadiusAxis>>;
	@:optional var angleAxis : EitherType<AngleAxis, Array<AngleAxis>>;
	@:optional var radar : EitherType<Radar, Array<Radar>>;
	@:optional var dataZoom : Array<DataZoom>;
	@:optional var visualMap : Array<VisualMap>;
	@:optional var tooltip : EitherType<Tooltip, Array<Tooltip>>;
	@:optional var toolbox : EitherType<Toolbox, Array<Toolbox>>;
	@:optional var brush : EitherType<Brush, Array<Brush>>;
	@:optional var geo : EitherType<Geo, Array<Geo>>;
	@:optional var parallel : EitherType<Parallel, Array<Parallel>>;
	@:optional var parallelAxis : Array<ParallelAxis>;
	@:optional var singleAxis : Array<SingleAxis>;
	// TODO:
	@:optional var timeline : EitherType<Timeline, Timeline>;
	@:optional var series : Array<Dynamic>;

}

typedef GetOptions = {
	> Animation,
	@:optional var backgroundColor: String;
	@:optional var blendMode : BlendMode;
	var color: Array<String>;
	var progressive : Float;
	var progressiveThreshold : Float;
	var hoverLayerThreshold : Float;
	var textStyle : TextStyle;
	// compoment
	@:optional var title : Array<Title>;
	@:optional var legend : Array<Legend>;
	@:optional var grid : Array<Grid>;
	@:optional var xAxis : Array<XAxis>;
	@:optional var yAxis : Array<YAxis>;
	@:optional var polar : Array<Polar>;
	@:optional var radiusAxis : Array<RadiusAxis>;
	@:optional var angleAxis : Array<AngleAxis>;
	@:optional var radar : Array<Radar>;
	@:optional var dataZoom : Array<DataZoom>;
	@:optional var visualMap : Array<VisualMap>;
	@:optional var tooltip : Array<Tooltip>;
	@:optional var toolbox : Array<Toolbox>;
	@:optional var brush : Array<Brush>;
	@:optional var geo : Array<Geo>;
	@:optional var parallel : Array<Parallel>;
	@:optional var parallelAxis : Array<ParallelAxis>;
	@:optional var singleAxis : Array<SingleAxis>;

	@:optional var timeline : Array<Timeline>;
	@:optional var series : Array<Dynamic>;
	// other
	var markArea: Array<Dynamic>;
	var markLine: Array<Dynamic>;
	var markPoint: Array<Dynamic>;
	var marker: Array<Dynamic>;
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