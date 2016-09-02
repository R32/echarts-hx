package js.echarts.options;

import haxe.extern.EitherType;
import js.echarts.options.Data;

/**
 区域选择组件，用户可以选择图中一部分数据，从而便于向用户展示被选中数据，
 或者他们的一些统计计算结果。
*/
typedef Brush = {

	/**
	 使用在 toolbox 中的按钮。

	 `default: ['rect', 'polygon', 'keep', 'clear']`
	*/
	@:optional var toolbox: Array<ToolBrushType>;

	/**
	 不同系列间，选中的项可以联动。`default: null]`

	 brushLink 配置项是一个数组，内容是 seriesIndex，指定了哪些 series 可以被联动。
	*/
	@:optional var brushLink: EitherType<BrushAll, Array<Int>>;

	/**
	 指定哪些 series 可以被刷选。`default: 'all'`
	*/
	@:optional var seriesIndex: Either3<BrushAll, Array<Int>, Int>;

	/**
	 指定哪些 geo 可以被刷选。`default: null`
	*/
	@:optional var geoIndex: Either3<BrushAll, Array<Int>, Int>;

	/**
	 指定哪些 xAxisIndex 可以被刷选。`default: null`
	*/
	@:optional var xAxisIndex: Either3<BrushAll, Array<Int>, Int>;

	@:optional var yAxisIndex: Either3<BrushAll, Array<Int>, Int>;

	/**
	 默认的刷子类型 `default: 'rect'`
	*/
	@:optional var brushType: BrushType;

	/**
	 默认的刷子的模式。`default: 'single'`
	*/
	@:optional var brushMode: SelectedMode;

	/**
	 已经选好的选框是否可以被调整形状或平移

	 `default: true`
	*/
	@:optional var transformable: Bool;



	/**
	 选框的默认样式
	*/
	@:optional var brushStyle: {
		?borderWidth:Float,  // 1
		?color: String,      // 'rgba(120,140,180,0.3)'
		?borderColor: String,// 'rgba(120,140,180,0.8)'
		?width: Float        // null
	};

	/**
	 默认情况，刷选或者移动选区的时候，会不断得发 brushSelected 事件，从而告诉外界选中的内容。

	 但是频繁的事件可能导致性能问题，或者动画效果很差。所以 brush 组件提供了 brush.throttleType，brush.throttleDelay 来解决这个问题。

	 `default: 'fixRate'`
	*/
	@:optional var throttleType: ThrottleType;

	/**
	默认为 0 表示不开启 throttle。
	*/
	@:optional var throttleDelay: Float;

	/**
	 在 brush.brushMode 为 'single' 的情况下，是否支持『单击清除所有选框』

	 `default: true`
	*/
	@:optional var removeOnClick: Bool;

	/**
	 定义 在选中范围中 的视觉元素。
	*/
	@:optional var inBrush: SymbolDt;

	/**
	 定义 在选中范围外 的视觉元素。
	*/
	@:optional var outOfBrush: SymbolDt;
}