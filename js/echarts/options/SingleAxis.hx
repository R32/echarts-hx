package js.echarts.options;

import haxe.extern.EitherType;
import js.echarts.options.Data;
import js.echarts.options.Base;
import js.echarts.options.Axis;

/**
单轴。可以被应用到散点图中展现一维数据，
*/
typedef SingleAxis = {
	> AxisName,
	> Axis,

	/**
	 距离容器左侧的距离。

	 `default: auto`
	*/
	@:optional var left: Either3<Float, TextAlign, String>;

	/**
	 `default: "5%"`
	*/
	@:optional var top: Either3<Float, TextVAlign, String>;

	/**
	 `default: "5%"`
	*/
	@:optional var right: EitherType<Float, String>;

	/**
	 `default: 5%`
	*/
	@:optional var bottom: EitherType<Float, String>;


	/**
	 `default: "auto"`
	*/
	@:optional var width: EitherType<Float, String>;

	/**
	 `default: "auto"`
	*/
	@:optional var height: EitherType<Float, String>;

	/**
	 如何放置 visualMap 组件，水平（'horizontal'）或者竖直（'vertical'）。

	 `default: "horizontal"`
	*/
	@:optional var orient: Orient;


	@:optional var axisLine: AxisLine;
}