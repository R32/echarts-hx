package js.echarts.options;

import haxe.extern.EitherType;
import js.echarts.options.Data;
import js.echarts.options.Base;

/**
 timeline 组件，提供了在多个 ECharts option 间进行切换、播放等操作的功能。
*/
typedef Timeline = {
	/**
	 是否显示 timeline 组件。如果设置为false，不会显示，但是功能还存在。

	 `default: true`
	*/
	@:optional var show: Bool;

	/**
	  这个属性目前只支持为 slider，不需要更改。
	*/
	@:optional var type(default, null): String;

	/**
	 轴的类型 `default: time`
	*/
	@:optional var axisType: AxisTypeLess;

	/**
	 表示当前选中项是哪项。比如，currentIndex 为 0 时，
	 表示当前选中项为 timeline.data[0]（即使用 options[0]）。

	 `default: 0`
	*/
	@:optional var currentIndex: Int;

	/**
	 表示是否自动播放。`default: false`
	*/
	@:optional var autoPlay: Bool;

	/**
	 表示是否反向播放。`default: false`
	*/
	@:optional var rewind: Bool;

	/**
	 表示是否循环播放。`default: true`
	*/
	@:optional var loop: Bool;

	/**
	 表示播放的速度（跳动的间隔），单位毫秒（ms）

	 `default: 2000`
	*/
	@:optional var playInterval: Int;

	/**
	 拖动圆点的时候，是否实时更新视图。`default: true`
	*/
	@:optional var realtime: Int;

	/**
	 表示『播放』按钮的位置。可选值：'left'、'right'。

	 `default: left`
	*/
	@:optional var controlPosition: YPosition;

	/**
	 组件的 zlevel 值。 `default: 0`
	*/
	@:optional var zlevel: Int;

	/**
	 组件的所有图形的z值。 `default: 2`
	*/
	@:optional var z: Int;

	/*
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
	 图例内边距，单位px。`全 | [上下, 左右] | [上, 右, 下, 左]`

	 `default: 5`
	*/
	@:optional var padding: EitherType<Float, Array<Float>>;

	/**
	 摆放方式。 default: 'horizontal'
	*/
	@:optional var orient: Orient;

	/**
	 是否反向放置 timeline，反向则首位颠倒过来。

	 `default: false`
	*/
	@:optional var inverse: Bool;

	/**
	 `default: "emptyCircle"`
	*/
	@:optional var symbol: EitherType<String, SymbolType>;

	/**
	 timeline标记的大小，可以设置成诸如 10 这样单一的数字，也可以用数组分开表示宽和高，
	 例如 [20, 10] 表示标记宽为20，高为10。

	 `default: 10`
	*/
	@:optional var symbolSize: EitherType<Int, Array<Int>>;

	/**
	 timeline标记的旋转角度。注意在 markLine 中当 symbol 为 'arrow' 时
	 会忽略 symbolRotate 强制设置为切线的角度。
	*/
	@:optional var symbolRotate: Float;

	/**
	 timeline标记相对于原本位置的偏移, 例如 [0, '50%'] 就是把自己向上移动了一半的位置

	 `default: [0, 0]`
	*/
	@:optional var symbolOffset: Array<EitherType<Int, String>>;

	/**
	`color: #304654, width: 2, type: solid`
	*/
	@:optional var lineStyle: LineStyle<Color>;

	/**
	 轴的文本标签。有 normal 和 emphasis 两个状态，normal 是文本正常的样式，
	 emphasis 是文本高亮的样式，比如鼠标悬浮或者图例联动高亮
	 的时候会使用 emphasis 作为文本的样式。
	*/
	@:optional var label: {
		> NormalEmphasis<LabelEx>,
		?position: EitherType<Float, HVAlign>,
	};

	/**
	 timeline 图形样式，
	*/
	@:optional var itemStyle: NormalEmphasis<IconStyle>;

	/**
	 『当前项』（checkpoint）的图形样式。
	*/
	@:optional var checkpointStyle: CheckpointStyle;
	/**
	 『控制按钮』的样式。『控制按钮』包括：『播放按钮』、『前进按钮』、『后退按钮』。
	*/
	@:optional var controlStyle: ControlStyle;

	/**
	 timeline 数据。TODO: http://echarts.baidu.com/option.html#timeline.data
	*/
	@:optional var data: Array<Dynamic>;
}

@:enum abstract AxisTypeLess(String) to String {
	var VALUE = "value";
	var CATEGORY = "category";
	var TIME = "time";
}

typedef CheckpointStyle = {
	> Symbol<Array<Int>>,
	?color: String,       // #c23531
	?borderWidth: Int,    // 5
	?borderColor: String, // rgba(194,53,49, 0.5)
	?animation: Bool,     // true
	?animationDuration: Float, // 300
	?animationEasing: Easing,  // quinticInOut
}

typedef ControlStyle = {
	?show: Bool,          // true
	?showPlayBtn: Bool,   // true
	?showPrevBtn: Bool,   // true
	?showNextBtn: Bool,   // true
	?itemSize: Int,       // 22
	?itemGap: Int,        // 12
	// 当 timeline.orient 为 'horizontal'时，'left'、'right'有效。
	// 当 timeline.orient 为 'vertical'时，'top'、'bottom'有效。
	?position: EitherType<XPosition, YPosition>, // left
	?playIcon: String,
	?stopIcon: String,
	?prevIcon: String,
	?nextIcon: String,
	?normal: Border,
	?emphasis: Border,
}

private typedef Border = {
	?color: String,
	?borderColor: String,
	?borderWidth: Int,
}

private typedef LabelEx = {
	> Label,
	?interval: EitherType<String, Float>, // auto
	?rotate: Float,  // 旋转角度。正值表示逆时针旋转
	?formatter: EitherType<String, Any->Int->String>
}