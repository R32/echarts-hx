package js.echarts;

import js.echarts.options.*;
import js.echarts.options.Data;
import js.echarts.options.Base;
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
	@:optional var timeline : EitherType<Timeline, Array<Timeline>>;
	// TODO:
	@:optional var series : EitherType<Dynamic, Array<Dynamic>>;

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
	var markArea: Array<MarkArea>;
	var markLine: Array<MarkLine>;
	var markPoint: Array<MarkPoint>;
	var marker: Array<Dynamic>;
}