package js.echarts.options;

import haxe.extern.EitherType;
import js.echarts.options.Data;
import js.echarts.options.Base;

/**
标题组件，包含主标题和副标题。
*/
typedef Title = {

	/**
	 是否显示标题组件。

	 `default: true`
	*/
	@:optional var show: Bool;

	@:optional var text: String;

	@:optional var link: String;

	@:optional var target: LinkTarget;  // "blank"

	/**

	 default:

	 ```js
	 {
		color:  "#333"
		fontStyle: "normal"
		fontWeight: "bolder" ???
		fontFamily: "sans-serif"
		fontSize: 13
	 }
	 ```
	*/
	@:optional var textStyle: TextStyle;

	@:optional var textAlign: TextAlign; // auto

	@:optional var textBaseline: TextVAlign; // auto

	/**
	 副标题
	*/
	@:optional var subtext: String;

	@:optional var sublink: String;

	@:optional var subtarget: LinkTarget;  // "blank"

	/**

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
	@:optional var subtextStyle: TextStyle;

	/**
	 标题内边距，单位px。`全 | [上下, 左右] | [上, 右, 下, 左]`

	 `default: 5`
	*/
	@:optional var padding: EitherType<Float, Array<Float>>;

	/**
	 主副标题之间的间距。

	 `default: 10`
	*/
	@:optional var itemGap: Float;

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
	 距离容器左侧的距离。

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
	 标题背景色。 例: 'rgb(128, 128, 128)' | 'rgba(128, 128, 128, 0.5)' | '#ccc'

	 `default: 'transparent'`
	*/
	@:optional var backgroundColor: String;

	/**
	 标题的边框颜色。参见 backgroundColor

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