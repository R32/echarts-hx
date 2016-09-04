package js.echarts.options;

import haxe.extern.EitherType;
import js.echarts.options.Data;
import js.echarts.options.Base;

/**
visualMap 是视觉映射组件，用于进行『视觉编码』，也就是将数据映射到视觉元素（视觉通道）

http://echarts.baidu.com/option.html#visualMap
*/
typedef VisualMap = {

	@:optional var type: VisualMapType;
	/**
	 是否反转 visualMap 组件
	*/
	@:optional var inverse: Bool;

	/**
	 数据展示的小数精度，默认为0，无小数点。`default: 0`
	*/
	@:optional var precision: Float;

	/**
	 图形的宽度 `default: 20`
	*/
	@:optional var itemWidth: Float;

	@:optional var itemHeight: Float;

	/**
	 两端的文本，如 ['High', 'Low']
	*/
	@:optional var text: Array<String>;

	/**
	 两端文字主体之间的距离，单位为px . `default: 10`
	*/
	@:optional var textGap: Float;

	/**
	 是否显示, `default: true`
	*/
	@:optional var show: Bool;

	/**
	 指定用数据的『哪个维度』，映射到视觉元素上,
	 数据』即 series.data。 可以把 series.data 理解成一个二维数组

	 `default: 0`
	*/
	@:optional var dimension: Int;

	/**
	 指定取哪个系列的数据，即哪个系列的 series.data。
	*/
	@:optional var seriesIndex: OrArray<Int>;

	/**
	 打开 hoverLink 功能时，鼠标悬浮到 visualMap 组件上时，
	 鼠标位置对应的数值在图表中对应的图形元素，会高亮。

	 反之，鼠标悬浮到图表中的图形元素上时，在 visualMap 组件的相应位置会有三角提示其所对应的数值。

	 `default: true`
	*/
	@:optional var hoverLink: Bool;

	/**
	 定义 在选中范围中 的视觉元素。（用户可以和 visualMap 组件交互，用鼠标或触摸选择范围）
	*/
	@:optional var inRange: SymbolDt;

	/**
	 定义 在选中范围外 的视觉元素。（用户可以和 visualMap 组件交互，用鼠标或触摸选择范围）
	*/
	@:optional var outOfRange: SymbolDt;


	/**
	 visualMap 组件中，控制器 的 inRange outOfRange 设置。如果没有这个 controller 设置，
	 控制器 会使用外层的 inRange outOfRange 设置；如果有这个 controller 设置，
	 则会采用这个设置。适用于一些控制器视觉效果需要特殊定制或调整的场景
	*/
	@:optional var controller: {
		?inRange: SymbolDt,
		?outOfRange: SymbolDt,
	};

	/**
	 `default: 0`
	*/
	@:optional var zlevel: Int;

	/**
	 `default: 4`
	*/
	@:optional var z: Int;

	/**
	 距离容器左侧的距离。

	 `default: 0`
	*/
	@:optional var left: EitherType<Value, TextAlign>;

	/**
	 `default: "auto"`
	*/
	@:optional var top: EitherType<Value, TextVAlign>;

	/**
	 `default: "auto"`
	*/
	@:optional var right: Value;

	/**
	 `default: 0`
	*/
	@:optional var bottom: Value;

	/**
	 如何放置 visualMap 组件，水平（'horizontal'）或者竖直（'vertical'）。

	 `default: "vertical"`
	*/
	@:optional var orient: Orient;

	/**
	 内边距，单位px。`全 | [上下, 左右] | [上, 右, 下, 左]`

	 `default: 5`
	*/
	@:optional var padding: OrArray<Float>;

	/**
	 背景色。

	 `default: 'rgba(0,0,0,0)'`
	*/
	@:optional var backgroundColor: String;

	/**
	 边框颜色

	 `default: '#ccc'`
	*/
	@:optional var borderColor: String;

	/**
	 `default: 0`
	*/
	@:optional var borderWidth: Float;

	/**
	 这个配置项，是为了兼容 ECharts2 而存在，ECharts3 中已经不推荐使用。

	 `default: ['#bf444c', '#d88273', '#f6efa6']`
	*/
	@:optional var color: Array<String>;

	@:optional var textStyle: TextStyle;
}

typedef Continuous = {

	> VisualMap,

	/**
	 指定 visualMapContinuous 组件的允许的最小值。'min' 必须用户指定。
	*/
	var min: Float;

	/**
	 指定 visualMapContinuous 组件的允许的最大值。'max' 必须用户指定。
	 [visualMap.min, visualMax.max] 形成了视觉映射的『定义域』。
	*/
	var max: Float;
	/**
	 指定手柄对应数值的位置。range 应在 min max 范围内。

	 如果 range 不设置（或设置为 null）则 range 默认为 [min, max]
	*/
	@:optional var range: Array<Float>;

	/**
	 是否显示拖拽用的手柄（手柄能拖拽调整选中范围）

	 `default: false`
	*/
	@:optional var calculable: Bool;

	/**
	 拖拽时，是否实时更新。`default: true`
	*/
	@:optional var realtime: Bool;

	@:optional var align: HVAlign;

	@:optional var formatter: EitherType<String, Float->String>;
}

typedef Piecewise = {
	> VisualMap,

	/**
	 对于连续型数据，自动平均切分成几段。默认为5段。 连续数据的范围需要 max 和 min 来指定。

	 如果设置了 visualMap-piecewise.pieces 或者 visualMap-piecewise.categories，则 splitNumber 无效。

	 `default: 5`
	*/
	@:optional var splitNumber: Int;

	/**
	 自定义『分段式视觉映射组件（visualMapPiecewise）』的每一段的范围，以及每一段的文字，以及每一段的特别的样式。例如

	 ```js
	 pieces: [
		{min: 1500}, // 不指定 max，表示 max 为无限大（Infinity）。
		{min: 900, max: 1500},
		{min: 310, max: 1000},
		{min: 200, max: 300},
		{min: 10, max: 200, label: '10 到 200（自定义label）'},
		{value: 123, label: '123（自定义特殊颜色）', color: 'grey'}, // 表示 value 等于 123 的情况。
		{max: 5}     // 不指定 min，表示 min 为无限大（-Infinity）。
	 ]
	 ```

	 注意，如果两个 piece 的区间重叠，则会自动进行去重。


	*/
	@:optional var pieces: Array<Piece>;


	/**
	 用于表示离散型数据（或可以称为类别型数据、枚举型数据）的全集。

	 当所指定的维度（visualMap-piecewise.dimension）的数据为离散型数据时，

	 例如数据值为『优』、『良』等，那么可如下配置：
	*/
	@:optional var categories: Array<String>;

	/**
	 指定 visualMapPiecewise 组件的最小值。
	*/
	@:optional var min: Float;

	/**
	 指定 visualMapPiecewise 组件的最大值。参见 visualMap-piecewise.splitNumber
	*/
	@:optional var max: Float;

	/**
	 选择模式 `default: 'multiple'`
	*/
	@:optional var selectedMode: SelectedMode ;

	/**
	 指定组件中图形（比如小方块）和文字的摆放关系，可选值为
	*/
	@:optional var align: Align;

	/**
	 每两个图元之间的间隔距离，单位为px。`default: 10`
	*/
	@:optional var itemGap: Float;

	/**
	 默认的图形。可选值为
	*/
	@:optional var itemSymbol: IconType;

	@:optional var formatter: EitherType<String, Float->Float->String>;
}

typedef Piece = {
	> SymbolDt,
	?min : Float, // 不指定 max，表示 max 为无限大（Infinity）
	?max : Float, // 不指定 min，表示 min 为无限大（-Infinity）
	?value : Float,
	?label : String,
	?gt : Float,  // 大于
	?gte : Float, // 大于等于
	?lt : Float,
	?lte : Float,
}

@:enum abstract VisualMapType(String) to String {
	var CONTINUOUS = "continuous";
	var PIECEWISE = "piecewise";
}