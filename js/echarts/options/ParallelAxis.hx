package js.echarts.options;

import haxe.extern.EitherType;
import js.echarts.options.Data;
import js.echarts.options.Axis;

/**
这个组件是平行坐标系中的坐标轴。
*/
typedef ParallelAxis = {

	> AxisName,
	> AxisBase,
	/**
	 坐标轴的维度号。
	*/
	@:optional var dim: Int;

	/**
	 用于定义『坐标轴』对应到哪个『坐标系』中。 `default: 0`
	*/
	@:optional var parallelIndex: Int;

	/**
	 是否坐标轴刷选的时候，实时刷新视图。如果设为 false，则在刷选动作结束时候，才刷新视图。

	 `default: true`
	*/
	@:optional var realtime: Bool;

	/**
	 在坐标轴上可以进行框选，这里是一些框选的设置。
	*/
	@:optional var areaSelectStyle: AreaSelectStyle;

	@:optional var axisLine: AxisLine;
}

typedef AreaSelectStyle = {
	?width: Float,        // 20
	?borderWidth: Float,  // 1
	?borderColor: String, // rgba(160,197,232)
	?color: String,       // rgba(160,197,232)
	?opacity: Float,      // 0.3
}