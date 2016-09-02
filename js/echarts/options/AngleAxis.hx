package js.echarts.options;

import haxe.extern.EitherType;
import js.echarts.options.Data;
import js.echarts.options.Axis;
/**
极坐标系的角度轴。
*/
typedef AngleAxis = {

	> Axis,

	/**
	 角度轴所在的极坐标系的索引，默认使用第一个极坐标系。

	 `default: 0`
	*/
	@:optional var polarIndex: Int;


	/**
	 起始刻度的角度，默认为 90 度，即圆心的正上方。0 度为圆心的正右方。

	 `default: 90`
	*/
	@:optional var startAngle: Float;

	/**
	  刻度增长是否按顺时针，默认顺时针。

	  `default: true`
	*/
	@:optional var clockwise: Float;

	/**
	坐标轴轴线相关设置

	 show: 是否显示坐标轴轴线。

	 lineStyle:
	 - color: "#333"
	 - width: 1
	 - type: "solid"
	*/
	@:optional var axisLine: AxisLine;
}