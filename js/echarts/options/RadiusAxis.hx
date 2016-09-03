package js.echarts.options;

import js.echarts.options.Axis;

/**
极坐标系的半径轴。
*/
typedef RadiusAxis = {

	> AxisName,
	> Axis,
	/**
	 半径轴所在的极坐标系的索引，默认使用第一个极坐标系。

	 `default: 0`
	*/
	@:optional var polarIndex: Int;


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