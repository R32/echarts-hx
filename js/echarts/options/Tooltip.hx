package js.echarts.options;

import haxe.extern.EitherType;
import js.echarts.options.Data;
import js.echarts.options.Base;
import haxe.Constraints.Function;

typedef Tooltip = {
	/**
	 是否显示提示框组件，包括提示框浮层和 axisPointer。

	 `default: true`
	*/
	@:optional var show: Bool;

	/**
	 是否显示提示框浮层，默认显示。只需tooltip触发事件或显示axisPointer而不需要显示内容时可配置该项为false。

	 `default: true`
	*/
	@:optional var showContent: Bool;

	/**
	 触发类型。

	 `default: "item"`
	*/
	@:optional var trigger: TriggerType;

	@:optional var triggerOn: TriggerOn;

	/**
	 是否永远显示提示框内容，默认情况下在移出可触发提示框区域后 一定时间 后隐藏，
	 设置为 true 可以保证一直显示提示框内容。

	 `default: false`
	*/
	@:optional var alwaysShowContent: Bool;

	/**
	 浮层显示的延迟，单位为 ms，默认没有延迟，也不建议设置。在 triggerOn 为 'mousemove' 时有效。

	 `default: 0`
	*/
	@:optional var showDelay: Int;

	/**
	 浮层隐藏的延迟，单位为 ms，在 alwaysShowContent 为 true 的时候无效。

	 `default: 100`
	*/
	@:optional var hideDelay: Int;

	/**
	 鼠标是否可进入提示框浮层中，默认为false，如需详情内交互，如添加链接，按钮，可设置为 true。

	 `default: false`
	*/
	@:optional var enterable: Bool;

	/**
	 提示框浮层的位置，默认不设置时位置会跟随鼠标的位置。

	 ```js
	 // 绝对位置，相对于容器左侧 10px, 上侧 10 px
	 position: [10, 10]
	 // 相对位置，放置在容器正中间
	 position: ['50%', '50%']

	 position: (point: Array, params: Object|Array.<Object>, dom: HTMLDomElement, rect: Object) => Array

	 position: TPosition
	 ```
	*/
	@:optional var position: Either3<TPosition, Function, Array<EitherType<String, Int>>>;


	/**
	 提示框浮层的移动动画过渡时间，单位是 s，设置为 0 的时候会紧跟着鼠标移动。

	 `default: 0.4`
	*/
	@:optional var transitionDuration: Float;

	/**
	 提示框浮层内容格式器，支持字符串模板和回调函数两种形式。

	 http://echarts.baidu.com/option.html#tooltip.formatter
	*/
	@:optional var formatter: EitherType<String, Function>;

	/**
	 提示框浮层的背景颜色。

	 `default: 'rgba(50, 50, 50,0.7)'`
	*/
	@:optional var backgroundColor: String;

	/**
	 提示框浮层的边框颜色。

	 `default: '#333'`
	*/
	@:optional var borderColor: String;

	/**
	 提示框浮层的边框宽。

	 `default: 0`
	*/
	@:optional var borderWidth: String;

	/**
	 提示框浮层内边距，单位px。`全 | [上下, 左右] | [上, 右, 下, 左]`

	 `default: 5`
	*/
	@:optional var padding: EitherType<Float, Array<Float>>;

	/**
	 提示框浮层的文本样式。

	 color: #fff, fontSize: 14
	*/
	@:optional var textStyle: TextStyle;

	/**
	 额外附加到浮层的 css 样式。如下为浮层添加阴影的示例：

	 ```js
	 extraCssText: 'box-shadow: 0 0 3px rgba(0, 0, 0, 0.3);'
	 ```
	*/
	@:optional var extraCssText: String;

	/**
	 坐标轴指示器配置项，在 trigger 为 'axis' 时有效。
	*/
	@:optional var axisPointer: AxisPointer;
}