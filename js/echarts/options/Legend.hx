package js.echarts.options;

import haxe.extern.EitherType;
import js.echarts.options.Data;

/**
图例组件。

图例组件展现了不同系列的标记(symbol)，颜色和名字。可以通过点击图例控制哪些系列不显示。

ECharts 3 中单个 echarts 实例中可以存在多个图例组件，会方便多个图例的布局。
*/
typedef Legend = {

	/**
	 `default: true`
	*/
	@:optional var show: Bool;

	/**
	 所有图形的 zlevel 值。大的 Canvas 会放在 zlevel 小的 Canvas 的上面。

	 zlevel用于 Canvas 分层，不同zlevel值的图形会放置在不同的 Canvas 中，
	 Canvas 分层是一种常见的优化手段。我们可以把一些图形变化频繁（例如有动画）
	 的组件设置成一个单独的 zlevel。需要注意的是过多的 Canvas 会引起内存开销的增大，
	 在手机端上需要谨慎使用以防崩溃。

	 `default: 0`
	*/
	@:optional var zlevel: Int;

	/**
	 组件的所有图形的 z 值。控制图形的前后顺序。z 值小的图形会被 z 值大的图形覆盖。

	 z 相比 zlevel 优先级更低，而且不会创建新的 Canvas。

	 `default: 2`
	*/
	@:optional var z: Int;

	/**
	 图例组件离容器左侧的距离。

	 left 的值可以是像 20 这样的具体像素值，可以是像 '20%' 这样相对于容器高宽的百分比，
	 也可以是 'left', 'center', 'right'

	 如果 left 的值为'left', 'center', 'right'，组件会根据相应的位置自动对齐。

	 `default: "auto"`
	*/
	@:optional var left: Either3<Float, TextAlign, String>;

	/**
	 `default: "auto"`
	*/
	@:optional var top: Either3<Float, TextVAlign, String>;

	/**
	 值可以是像 20 这样的具体像素值，可以是像 '20%' 这样相对于容器高宽的百分比。

	 `default: "auto"`
	*/
	@:optional var right: EitherType<Float, String>;

	/**
	 `default: "auto"`
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
	 图例列表的布局朝向。 default: 'horizontal'
	*/
	@:optional var orient: Orient;

	/**
	 图例标记和文本的对齐。默认自动，根据组件的位置和 orient 决定，
	 当组件的 left 值为 'right' 以及纵向布局（orient 为 'vertical'）的时候为右对齐，及为 'right'。

	 `default: 'auto'`
	*/
	@:optional var align: Align;

	/**
	 图例内边距，单位px。`全 | [上下, 左右] | [上, 右, 下, 左]`

	 `default: 5`
	*/
	@:optional var padding: EitherType<Float, Array<Float>>;

	/**
	 图例每项之间的间隔。横向布局时为水平间隔，纵向布局时为纵向间隔。

	 `default: 10`
	*/
	@:optional var itemGap: Float;

	/**
	 图例标记的图形宽度。

	 `default: 25`
	*/
	@:optional var itemWidth: Float;

	/**
	 图例标记的图形高度。

	 `default: 14`
	*/
	@:optional var itemHeight: Float;

	/**
	 图例文本的内容格式器，支持 **字符串模板** 和 **回调函数** 两种形式。

	 `default: null`

	 ```js
	 // 使用字符串模板，模板变量为图例名称 {name}
	 formatter: 'Legend {name}'

	 // 使用回调函数
	 formatter: function (name) {
		return 'Legend ' + name;
	 }
	 ```
	*/
	@:optional var formatter: EitherType<String, String -> String>; // TODO: Rest<String> -> String

	/**
	 图例选择的模式，默认开启图例选择，可以设成 false 关闭。

	 除此之外也可以设成 'single' 或者 'multiple' 使用单选或者多选模式。

	 `default: true`
	*/
	@:optional var selectedMode: EitherType<Bool, SelectedMode>;

	/**
	 图例关闭时的颜色。支持的值类型参见 `backgroundColor`

	 `default: "#ccc"`
	*/
	@:optional var inactiveColor: String;

	/**
	 图例选中状态表。

	 ```js
	 selected: {
	 	// 选中'系列1'
	 	'系列1': true,
	 	// 不选中'系列2'
	 	'系列2': false
	 }
	 ```
	*/
	@:optional var selected: Dynamic<Bool>;


	/**
	 图例的公用文本样式

	 default:

	 ```js
	 {
		color:  "#aaa"
		fontStyle: "normal"
		fontWeight: "normal"
		fontFamily: "sans-serif"
		fontSize: 12
	 }
	 ```
	*/
	@:optional var textStyle: TextStyle;

	/**
	  图例的 tooltip 配置，配置项同 `Tooltip`。默认不显示，
	  可以在 legend 文字很多的时候对文字做裁剪并且开启 tooltip，如下示例：

	 ```js
	 legend: {
		formatter: function (name) {
			return echarts.format.truncateText(name, 40, '14px Microsoft Yahei', '…');
	 },
	 tooltip: {
		show: true
	 }
	  ```
	*/
	@:optional var tooltip: Tooltip;

	/**
	 图例的数据数组。数组项通常为一个字符串，每一项代表一个系列的 name（如果是饼图，也可以是饼图单个数据的 name）。
	 图例组件会自动获取对应系列的颜色，图形标记（symbol）作为自己绘制的颜色和标记，
	 特殊字符串 ''（空字符串）或者 '\n' (换行字符串)用于图例的换行。

	 如果要设置单独一项的样式，也可以把该项写成配置项对象。此时必须使用 name 属性对应表示系列的 name。

	 示例:

	 ```js
	 data: [{
		name: '系列1',
		// 强制设置图形为圆。
		icon: 'circle',
		// 设置文本为红色
		textStyle: {
			color: 'red'
		}
	 }]
	```
	*/
	@:optional var data: Array<EitherType<String, {
		name: String,
		?icon: String, // TODO:
		?textStyle: TextStyle
	}>> ;

	/**
	 图例背景色。 例: 'rgb(128, 128, 128)' | 'rgba(128, 128, 128, 0.5)' | '#ccc'

	 `default: 'transparent'`
	*/
	@:optional var backgroundColor: String;

	/**
	 图例的边框颜色。参见 backgroundColor

	 `default: '#ccc'`
	*/
	@:optional var borderColor: String;

	/**
	 `default: 0`
	*/
	@:optional var borderWidth: Float;

	/**
	图形阴影的模糊大小。该属性配合 shadowColor,shadowOffsetX, shadowOffsetY 一起设置图形的阴影效果。

	注意：此配置项生效的前提是，设置了 show: true 以及值不为 tranparent 的背景色 backgroundColor。
	*/
	@:optional var shadowBlur: Float;

	/**
	 阴影颜色。支持的格式同color。注意：此配置项生效的前提是，设置了 show: true
	*/
	@:optional var shadowColor: String;

	/**
	 阴影水平方向上的偏移距离。注意：此配置项生效的前提是，设置了 show: true。

	 `default: 0`
	*/
	@:optional var shadowOffsetX: Float;

	/**
	 阴影垂直方向上的偏移距离。注意：此配置项生效的前提是，设置了 show: true。

	 `default: 0`
	*/
	@:optional var shadowOffsetY: Float;
}