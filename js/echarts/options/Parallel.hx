package js.echarts.options;

import haxe.extern.EitherType;
import js.echarts.options.Data;
import js.echarts.options.Base;
import js.echarts.options.Axis;

/**
平行坐标系（Parallel Coordinates） 是一种常用的可视化高维数据的图表。

http://echarts.baidu.com/option.html#parallel
*/
typedef Parallel = {
	/**
	 `default: 0`
	*/
	@:optional var zlevel: Int;

	/**
	 `default: 2`
	*/
	@:optional var z: Int;

	/**
	 距离容器左侧的距离。

	 `default: auto`
	*/
	@:optional var left: EitherType<Value, TextAlign>;

	/**
	 `default: 60`
	*/
	@:optional var top: EitherType<Value, TextVAlign>;

	/**
	 `default: 80`
	*/
	@:optional var right: Value;

	/**
	 `default: 60`
	*/
	@:optional var bottom: Value;

	/**
	 `default: "auto"`
	*/
	@:optional var width: Value;

	/**
	 `default: "auto"`
	*/
	@:optional var height: Value;

	/**
	 布局方式, 'horizontal'：水平排布各个坐标轴。'vertical'：竖直排布各个坐标轴。

	 `default: horizontal`
	*/
	@:optional var layout: Orient;

	/**
	 维度比较多时，比如有 50+ 的维度，那么就会有 50+ 个轴。那么可能会页面显示不下。

	 `default: false`
	*/
	@:optional var axisExpandable: Bool;

	/**
	 初始时，以哪个轴为中心展开，这里给出轴的 index。没有默认值，需要手动指定。

	 `default: null`
	*/
	@:optional var axisExpandCenter: Int;

	/**
	 初始时，有多少个轴会处于展开状态。建议根据你的维度个数而手动指定。

	 `default: 0`
	*/
	@:optional var axisExpandCount: Int;

	/**
	 在展开状态，轴的间距是多少，单位为像素。

	 `default: 50`
	*/
	@:optional var axisExpandWidth: Int;

	@:optional var parallelAxisDefault: ParallelAxisDefault;
}

typedef ParallelAxisDefault = {
	> AxisName,
	> AxisBase,
	@:optional var axisLine: AxisLine;
}