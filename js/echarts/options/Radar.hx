package js.echarts.options;

import haxe.extern.EitherType;
import js.echarts.options.Data;
import js.echarts.options.Base;
import js.echarts.options.Axis;


typedef Radar = {

	> Polar,

	/**
	 起始刻度的角度，默认为 90 度，即圆心的正上方。0 度为圆心的正右方。

	 `default: 90`
	*/
	@:optional var startAngle: Float;

	/**
	 雷达图每个指示器名称的配置项。

	 对于 formatter 的格式。支持字符串和回调函数，如下示例：

	 ```js
	 // 使用字符串模板，模板变量为指示器名称 {value}
	 formatter: '【{value}】'
	 // 使用回调函数，第一个参数是指示器名称，第二个参数是指示器配置项
	 formatter: function (value, indicator) {
		 return '【' + value + '】';
	 }
	 ```
	*/
	@:optional var name: {
		?show: Bool, // true
		?formatter: EitherType<String, String->Dynamic->String>,
		?textStyle: TextStyle
	};

	/**
	 坐标轴名称与轴线之间的距离。

	 `default: 15`
	*/
	@:optional var nameGap: Float;

	/**
	 坐标轴的分割段数，需要注意的是这个分割段数只是个预估值，
	 最后实际显示的段数会在这个基础上根据分割后坐标轴刻度显示的易读程度作调整

	 在类目轴中无效。

	 `default: 5`
	*/
	@:optional var splitNumber: Float;

	/**
	 雷达图绘制类型，支持 'polygon' 和 'circle'

	 `default: "polygon"`
	*/
	@:optional var shape: ShapeType;

	/**
	 是否是脱离 0 值比例。设置成 true 后坐标刻度不会强制包含零刻度。在双数值轴的散点图中比较有用。

	 `default: false`
	*/
	@:optional var scale: Bool;

	/**
	 坐标轴是否是静态无法交互。

	 `default: false`
	*/
	@:optional var silent: Bool;

	/**
	 坐标轴的标签是否响应和触发鼠标事件，默认不响应。

	 `default: false`
	*/
	@:optional var triggerEvent: Bool;

	/**
	坐标轴轴线相关设置
	*/
	@:optional var axisLine: AxisLine;

	/**
	 坐标轴刻度相关设置

	 show: 是否显示坐标轴刻度

	 alignWithLabel: 类目轴中在 boundaryGap 为 true 的时候有效，可以保证刻度线和标签对齐
	*/
	@:optional var axisTick: {
		?show: Bool,           // true
		?alignWithLabel: Bool, // false
		?inside: Bool,         // false
		?length: Int,          // 5
		?lineStyle: LineStyle<Color>
	};

	/**
	 坐标轴刻度标签的相关设置。
	*/
	@:optional var axisLabel: AxisLabel;

	/**
	 坐标轴在 grid 区域中的分隔线。
	*/
	@:optional var splitLine: {
		?show: Bool,    // true
		?lineStyle: LineStyle<Array<String>>
	};

	/**
	 坐标轴在 grid 区域中的分隔区域，默认不显示。
	*/
	@:optional var splitArea: {
		?show: Bool,    // true
		?areaStyle: AreaStyle<Array<String>>
	};

	/**
	 雷达图的指示器，用来指定雷达图中的多个变量（维度），如下示例。
	*/
	var indicator: Array<{
		name: String,
		?max:Float,
		?min:Float
	}>;
}