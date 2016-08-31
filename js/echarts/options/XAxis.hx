package js.echarts.options;

import haxe.extern.EitherType;
import js.echarts.options.Data;

/**
直角坐标系 grid 中的 x 轴，单个 grid 组件最多只能放上下两个 x 轴。
*/
typedef XAxis = {

	/**
	 x 轴所在的 grid 的索引，默认位于第一个 grid。

	 `default: 0`
	*/
	@:optional var gridIndex: Int;

	/**
	 x 轴的位置。默认 grid 中的第一个 x 轴在 grid 的下方（'bottom'），第二个 x 轴视第一个 x 轴的位置放在另一侧。
	*/
	@:optional var position: XPosition;

	/**
	 X 轴相对于默认位置的偏移，在相同的 position 上有多个 X 轴的时候有用

	 `default: 0`
	*/
	@:optional var offset: Float;

	/**
	 坐标轴类型

	 `default: "category"`
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

	 default:

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

	 类目轴中 boundaryGap 可以配置为 true 和 false。默认为 true，
	 这时候刻度只是作为分隔线，标签和数据点都会在两个刻度之间的带(band)中间

	 非类目轴，包括时间，数值，对数轴，boundaryGap是一个两个值的数组，
	 分别表示数据最小值和最大值的延伸范围，可以直接设置数值或者相对的百分比，
	 在设置 min 和 max 后无效。 示例：

	 ```js
	 boundaryGap: ['20%', '20%']
	 ```

	 `default: true`
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


	/**
	 坐标轴的分割段数，需要注意的是这个分割段数只是个预估值，
	 最后实际显示的段数会在这个基础上根据分割后坐标轴刻度显示的易读程度作调整

	 在类目轴中无效。

	 `default: 5`
	*/
	@:optional var splitNumber: Float;

	/**
	 坐标轴的分割段数，需要注意的是这个分割段数只是个预估值，
	 最后实际显示的段数会在这个基础上根据分割后坐标轴刻度显示的易读程度作调整

	 在类目轴中无效。

	 `default: 0`
	*/
	@:optional var minInterval: Float;

	/**
	 强制设置坐标轴分割间隔。

	 因为 splitNumber 是预估的值，实际根据策略计算出来的刻度可能无法达到想要的效果，
	 这时候可以使用 interval 配合 min、max 强制设定刻度划分，一般不建议使用。

	 无法在类目轴中使用。在时间轴（type: 'time'）中需要传时间戳，在对数轴（type: 'log'）中需要传指数值。
	*/
	@:optional var interval: Float;


	/**
	 对数轴的底数，只在对数轴中（type: 'log'）有效

	 `default: 10`
	*/
	@:optional var logBase: Float;


	/**
	 坐标轴是否是静态无法交互。

	 `default: false`
	*/
	@:optional var silent: Bool;

	/**
	 坐标轴的标签是否响应和触发鼠标事件，默认不响应。

	 ```js
	 {
	 	// 组件类型，xAxis, yAxis, radiusAxis, angleAxis
	 	// 对应组件类型都会有一个属性表示组件的 index，例如 xAxis 就是 xAxisIndex
		componentType: string,
		// 未格式化过的刻度值, 点击刻度标签有效
		value: '',
		// 坐标轴名称, 点击坐标轴名称有效
		name: ''
	 }
	 ```

	 `default: false`
	*/
	@:optional var triggerEvent: Bool;

	/**
	 show: 是否显示坐标轴轴线。

	 onZero: X 轴或者 Y 轴的轴线是否在另一个轴的 0 刻度上，只有在另一个轴为数值轴且包含 0 刻度时有效。

	 lineStyle:
	 - color: "#333"
	 - width: 1
	 - type: "solid"
	*/
	@:optional var axisLine: { // TODO
		?show: Bool,  // true
		?onZero:Bool, // true,
		?lineStyle: LineStyle
	};

	/**
	 坐标轴刻度相关设置

	 show: 是否显示坐标轴刻度

	 interval: 坐标轴刻度的显示间隔，在类目轴中有效

	 alignWithLabel: 类目轴中在 boundaryGap 为 true 的时候有效，可以保证刻度线和标签对齐
	*/
	@:optional var axisTick: {
		?show: Bool,           // true
		?alignWithLabel: Bool, // false
		?interval: EitherType<Int, Int -> String -> Bool> ,
		?inside: Bool,         // false
		?length: Int,          // 5
		?lineStyle: LineStyle
	};

	/**
	 坐标轴刻度标签的相关设置。

	 show: 是否显示刻度标签

	 interval: 坐标轴刻度标签的显示间隔，在类目轴中有效。

	 inside: 刻度标签是否朝内，默认朝外。

	 rotate: 刻度标签旋转的角度，在类目轴的类目标签显示不下的时候可以通过旋转防止标签之间重叠。

	 margin: 刻度标签与轴线之间的距离。

	 formatter: 刻度标签的内容格式器，支持字符串模板和回调函数两种形式。例:

	   ```js
	   // 使用字符串模板，模板变量为刻度默认标签 {value}
	   formatter: '{value} kg'

	   // 使用函数模板，函数参数分别为刻度数值（类目），刻度的索引
	   formatter: function (value, index) {
		var date = new Date(value);
		var texts = [(date.getMonth() + 1), date.getDate()];
		if (index === 0) texts.unshift(date.getYear());
		return texts.join('/');
	   }
	   ```
	*/
	@:optional var axisLabel: {
		?show: Bool,           // true
		?interval: EitherType<Int, Int -> String -> Bool> ,
		?inside: Bool,         // false
		?rotate: Float,        // -90  ~ 90
		?margin: Float,        // 8
		?formatter: EitherType<String, Any -> Int ->String>,  // null
		?textStyle: TextStyle
	};

	/**
	 坐标轴在 grid 区域中的分隔线。
	*/
	@:optional var splitLine: {
		?show: Bool,    // true
		?interval: EitherType<Int, Int -> String -> Bool> ,
		?lineStyle: LineStyle
	};

	/**
	 坐标轴在 grid 区域中的分隔区域，默认不显示。
	*/
	@:optional var splitArea: {
		?show: Bool,    // true
		?interval: EitherType<Int, Int -> String -> Bool> ,
		?areaStyle: AreaStyle
	};

	/**
	 类目数据，在类目轴（type: 'category'）中有效。示例:

	 ```js
	 data: ['周一', '周二', '周三', '周四', '周五', '周六', '周日']


	 data: [{
		value: '周一',
		// 突出周一
		textStyle: {
			fontSize: 20,
			color: 'red'
			}
	 }, '周二', '周三', '周四', '周五', '周六', '周日']
	 ```
	*/
	@:optional var data: Array<EitherType<String, {
		value: String,
		?textStyle: TextStyle
	} >> ;

	/**
	 X 轴所有图形的 zlevel 值。

	 zlevel用于 Canvas 分层，不同zlevel值的图形会放置在不同的 Canvas 中，
	 Canvas 分层是一种常见的优化手段。我们可以把一些图形变化频繁（例如有动画）
	 的组件设置成一个单独的 zlevel。需要注意的是过多的 Canvas 会引起内存开销的增大，
	 在手机端上需要谨慎使用以防崩溃。

	 `default: 0`
	*/
	@:optional var zlevel: Int;

	/**
	 X 轴组件的所有图形的z值。控制图形的前后顺序。z值小的图形会被z值大的图形覆盖。

	 z 相比 zlevel 优先级更低，而且不会创建新的 Canvas。

	 `default: 0`
	*/
	@:optional var z: Int;
}