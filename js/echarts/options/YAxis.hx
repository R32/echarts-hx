package js.echarts.options;

import haxe.extern.EitherType;
import js.echarts.options.Data;

/**
直角坐标系 grid 中的 y 轴，一般情况下单个 grid 组件最多只能放左右两个 y 轴，

多于两个 y 轴需要通过配置 offset 属性防止同个位置多个 Y 轴的重叠。
*/
typedef YAxis = {
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
	 坐标轴类型

	 `default: "value"`
	*/
	@:optional var type: AxisType;

	/**
	 坐标轴名称。
	*/
	@:optional var name: String;

	/**
	 坐标轴名称显示位置。

	 `default: "end"`
	*/
	@:optional var nameLocation: AxisNameLocal;

	/**

	 坐标轴名称的文字样式。default:

	 ```js
	 {
		color:  axisLine.lineStyle.color
		fontStyle: "normal"
		fontWeight: "normal"
		fontFamily: "sans-serif"
		fontSize: 12
	 }
	 ```
	*/
	@:optional var nameTextStyle: TextStyle;

	/**
	 坐标轴名称与轴线之间的距离。

	 `default: 15`
	*/
	@:optional var nameGap: Float;

	/**
	 坐标轴名字旋转，角度值

	 `default: null`
	*/
	@:optional var nameRotate: Float;

	/**
	 是否是反向坐标轴。ECharts 3 中新加。

	 `default: false`
	*/
	@:optional var inverse: Bool;

	/**
	 坐标轴两边留白策略，类目轴和非类目轴的设置和表现不一样。
	*/
	@:optional var boundaryGap: EitherType<Bool, Array<EitherType<Float, String>>>;

	/**
	 坐标轴刻度最小值，在类目轴中无效。

	 可以设置成特殊值 'dataMin'，此时取数据在该轴上的最小值作为最小刻度。

	 不设置时会自动计算最小值保证坐标轴刻度的均匀分布。

	 `default: auto`
	*/
	@:optional var min: EitherType<Float, String>;

	/**
	 坐标轴刻度最大值，在类目轴中无效。

	 可以设置成特殊值 'dataMax'，此时取数据在该轴上的最大值作为最大刻度。

	 不设置时会自动计算最大值保证坐标轴刻度的均匀分布。

	 `default: auto`
	*/
	@:optional var max: EitherType<Float, String>;

	/**
	 只在数值轴中（type: 'value'）有效。

	 是否是脱离 0 值比例。设置成 true 后坐标刻度不会强制包含零刻度。在双数值轴的散点图中比较有用。

	 在设置 min 和 max 之后该配置项无效。

	 `default: false`
	*/
	@:optional var scale: Bool;
}