package js.echarts.options;

import haxe.extern.EitherType;
import js.echarts.options.Data;
import js.echarts.options.Axis;

/**
直角坐标系 grid 中的 y 轴，一般情况下单个 grid 组件最多只能放左右两个 y 轴，

多于两个 y 轴需要通过配置 offset 属性防止同个位置多个 Y 轴的重叠。
*/
typedef YAxis = {

	> AxisName,
	> Axis,

	/**
	 y 轴所在的 grid 的索引，默认位于第一个 grid。

	 `default: 0`
	*/
	@:optional var gridIndex: Int;

	/**
	 默认 grid 中的第一个 y 轴在 grid 的左侧（'left'），第二个 y 轴视第一个 y 轴的位置放在另一侧。
	*/
	@:optional var position: YPosition;

	/**
	 Y 轴相对于默认位置的偏移，在相同的 position 上有多个 Y 轴的时候有用。

	 `default: 0`
	*/
	@:optional var offset: Float;

	/**
	 show: 是否显示坐标轴轴线。

	 onZero: X 轴或者 Y 轴的轴线是否在另一个轴的 0 刻度上，只有在另一个轴为数值轴且包含 0 刻度时有效。

	 lineStyle:
	 - color: "#333"
	 - width: 1
	 - type: "solid"
	*/
	@:optional var axisLine: XYAxisLine;
}