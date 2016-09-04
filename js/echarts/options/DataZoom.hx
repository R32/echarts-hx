package js.echarts.options;

import haxe.extern.EitherType;
import js.echarts.options.Data;
import js.echarts.options.Base;

/**
用于区域缩放，从而能自由关注细节的数据信息，或者概览数据整体，或者去除离群点的影响。

根据 type 值的不同，而表现形式不一样
*/
typedef DataZoom = {
	var type: DataZoomType;
}

/**
内置型数据区域缩放组件
- 平移：在坐标系中滑动拖拽进行数据区域平移。
- 缩放：
  - PC端：鼠标在坐标系范围内滚轮滚动（MAC触控板类同）
  - 移动端：在移动端触屏上，支持两指滑动缩放。
*/
typedef Inside = {

	> DataZoom,

	/**
	 设置 dataZoom-inside 组件控制的 x 轴

	 不指定时，当 dataZoom-inside.orient 为 'horizontal'时，默认控制和 dataZoom 平行的第一个 xAxis。
	 但是不建议使用默认值，建议显式指定

	 如果是 number 表示控制一个轴，如果是 Array 表示控制多个轴。

	 `default: null`
	*/
	@:optional var xAxisIndex: OrArray<Int>;

	/**
	 设置 dataZoom-inside 组件控制的 y 轴

	 `default: null`
	*/
	@:optional var yAxisIndex: OrArray<Int>;

	/**
	 dataZoom 的运行原理是通过 数据过滤 来达到 数据窗口缩放 的效果。
	 数据过滤模式的设置不同，效果也不同。

	 `default: 'filter'`
	*/
	@:optional var filterMode: FilterMode;

	/**
	 数据窗口范围的起始百分比。范围是：0 ~ 100。表示 0% ~ 100%。
	*/
	@:optional var start: Int;

	/**
	 数据窗口范围的结束百分比。范围是：0 ~ 100。
	*/
	@:optional var end: Int;

	/**
	 数据窗口范围的起始数值。如果设置了 dataZoom-inside.start 则 startValue 失效。

	 dataZoom-inside.startValue 和 dataZoom-inside.endValue 共同用 绝对数值 的形式定义了数据窗口范围。

	 注意，如果轴的类型为 category，则 startValue 既可以设置为 axis.data 数组的 index，
	 也可以设置为数组值本身。 但是如果设置为数组值本身，会在内部自动转化为数组的 index。

	 `default: null` number, string, Date
	*/
	@:optional var startValue: Either3<String, Float, Date>;

	/**
	 数据窗口范围的结束数值。如果设置了 dataZoom-inside.end 则 endValue 失效。

	 dataZoom-inside.startValue 和 dataZoom-inside.endValue 共同用 绝对数值 的形式定义了数据窗口范围。

	 注意，如果轴的类型为 category，则 endValue 即可以设置为 axis.data 数组的 index，
	 也可以设置为数组值本身。 但是如果设置为数组值本身，会在内部自动转化为数组的 index。

	 `default: null` number, string, Date
	*/
	@:optional var endValue: Either3<String, Float, Date>;

	/**
	布局方式是横还是竖。不仅是布局方式，对于直角坐标系而言，
	也决定了，缺省情况控制横向数轴还是纵向数轴。
	*/
	@:optional var orient: Orient;

	/**
	 是否锁定选择区域（或叫做数据窗口）的大小。

	 如果设置为 true 则锁定选择区域的大小，也就是说，只能平移，不能缩放。

	 `default: false`
	*/
	@:optional var zoomLock: Bool;


	/**
	 设置触发视图刷新的频率。单位为毫秒（ms）。
	*/
	@:optional var throttle: Int;
}


/**
滑动条型数据区域缩放组件（dataZoomSlider）
*/
typedef Slider = {

	> Inside,

	/**
	 是否显示 组件。如果设置为 false，不会显示，但是数据过滤的功能还存在

	 `default: true`
	*/
	@:optional var show: Int;

	/**
	 组件的背景颜色。

	 `default: 'rgba(47,69,84,0)'`
	*/
	@:optional var backgroundColor: String;

	@:optional var dataBackground: {
		// opacity: 0.3, color: #2f4554, width: 0.5
		?lineStyle: LineStyle<Color>,
		// opacity: 0.3, color: rgba(47,69,84,0.3,
		?areaStyle: AreaStyle<Color>
	};

	/**
	 选中范围的填充颜色。

	 `default: 'rgba(167,183,204,0.4)'`
	*/
	@:optional var fillerColor: String;

	/**
	 边框颜色。

	 `default: '#ddd'`
	*/
	@:optional var borderColor: String;

	/**
	 手柄的 icon 形状，支持路径字符串，默认为：

	 ```
	 'M8.2,13.6V3.9H6.3v9.7H3.1v14.9h3.3v9.7h1.8v-9.7h3.3V13.6H8.2z M9.7,24.4H4.8v-1.4h4.9V24.4z M9.7,19.1H4.8v-1.4h4.9V19.1z'
	 ```
	*/
	@:optional var handleIcon: String;

	/**
	 控制手柄的尺寸，可以是像素大小，
	 也可以是相对于 dataZoom 组件宽度的百分比，默认跟 dataZoom 宽度相同。

	 `default: '100%'`
	*/
	@:optional var handleSize: Value;

	/**
	 手柄的样式配置
	*/
	@:optional var handleStyle: IconStyle;


	/**
	 显示label的小数精度。默认根据数据自动决定。

	 `default: 'auto'`
	*/
	@:optional var labelPrecision: Float;

	/**
	 显示的label的格式化器。

	 - 如果为 string，表示模板，例如：aaaa{value}bbbb，其中{value}会被替换为实际的数值。

	 - 如果为 Function，表示回调函数，例如：

	 ```js
	 labelFormatter: function (value) {
	 	return 'aaa' + value + 'bbb'; // 返回最终的label内容。
	 }
	 ```
	*/
	@:optional var labelFormatter: EitherType<String, String->String>;

	/**
	 是否显示label，即拖拽时候显示详细数值信息。

	 `default: true`
	*/
	@:optional var showDetail: Bool;

	/**
	 是否在 dataZoom-silder 组件中显示数据阴影。数据阴影可以简单得反应数据走势。

	 `default: 'auto'`
	*/
	@:optional var showDataShadow: String; // TODO: Is a Bool?


	/**
	 拖动时，是否实时更新系列的视图。如果设置为 false，则只在拖拽结束的时候更新。

	 `default: true`
	*/
	@:optional var realtime: Bool;

	/**
	 default: color: #333, fontSize: 12
	*/
	@:optional var textStyle: TextStyle;


	/**
	 X 轴所有图形的 zlevel 值。

	 `default: 0`
	*/
	@:optional var zlevel: Int;

	/**
	 组件的所有图形的z值。控制图形的前后顺序。z值小的图形会被z值大的图形覆盖。

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
	@:optional var left: EitherType<Value, TextAlign>;

	/**
	 `default: "auto"`
	*/
	@:optional var top: EitherType<Value, TextVAlign>;

	/**
	 值可以是像 20 这样的具体像素值，可以是像 '20%' 这样相对于容器高宽的百分比。

	 `default: "auto"`
	*/
	@:optional var right: Value;

	/**
	 `default: "auto"`
	*/
	@:optional var bottom: Value;
}