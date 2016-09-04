package js.echarts.options;

import haxe.extern.EitherType;
import haxe.Constraints.Function;
import js.echarts.options.Data;

abstract Either3<T1, T2, T3>(Dynamic) from T1 from T2 from T3 to T1 to T2 to T3 { }

typedef OrArray<T> = EitherType<T, Array<T>>

@:coreType @:runtimeValue abstract Value from String from Float from Int to String to Float to Int {
}

typedef Color = EitherType<String, js.echarts.graphic.Gradient>;


typedef NormalEmphasis<T> = {
	?normal: T,
	?emphasis: T,
}

typedef ZoomBack<T> = {
	?zoom: T,
	?back: T,
}

typedef MinMax<T> = {
	?min: T,
	?max: T,
}

typedef StartEnd<T> = {
	?start: T,
	?end: T
}

typedef StartEndValue<T> = {
	?startValue: T,
	?endValue: T
}

typedef TextStyle = {
	?color: String,
	?fontStyle: FontStyle,
	?fontWeight: FontWeight,
	?fontFamily: String,
	?fontSize: Float,
}

/**
- shadowBlur: 图形阴影的模糊大小。该属性配合 shadowColor,shadowOffsetX, shadowOffsetY 一起设置图形的阴影效果。
- shadowColor: 阴影颜色
- shadowOffsetX: 阴影水平方向上的偏移距离
- shadowOffsetY: 阴影垂直方向上的偏移距离。
- opacity: 图形透明度。支持从 0 到 1 的数字，为 0 时不绘制该图形
*/
typedef AreaStyle<T> = {
	?color: T,
	?shadowBlur: Float,
	?shadowColor: String,
	?shadowOffsetX: Float,
	?shadowOffsetY: Float,
	?opacity: Float,
}

typedef LineStyle<T> = {
	> AreaStyle<T>,
	?width: Float,
	?type: LineType,
}

typedef IconStyle = {
	?color: Color,
	?borderColor: String, // #000
	?borderWidth: Float,
	?borderType: LineType,
	?shadowBlur: Float,
	?shadowColor: String,
	?shadowOffsetX: Float,
	?shadowOffsetY: Float,
	?opacity: Float,
}

typedef Label = {
	?show: Bool,
	?textStyle: TextStyle
}

typedef SymbolDt = {
	?symbol: EitherType<String, SymbolType>, // 图元的图形类别 ??? TODO: 未验证 "none", "circle"
	?symbolSize: Float,     // 图元的大小
	?color: String,         // 图元的颜色
	?colorAlpha: Float,     // 图元的颜色的透明度
	?opacity: Float,        // 图元以及其附属物（如文字标签）的透明度
	?colorLightness: Float, // 颜色的明暗度
	?colorSaturation: Float,// 颜色的饱和度
	?colorHue: Float,       // 颜色的色调
}

typedef ZIndex = {
	?zlevel: Int,
	?z: Int,
}

typedef AxisIndex<T> = {
	?xAxisIndex: T,
	?yAxisIndex: T,
}

typedef Rect = {
	/**
	 像素数值 + 百分比字符串: "20%", 或 "auto"
	*/
	@:optional var left: EitherType<Value, TextAlign>;
	@:optional var top: EitherType<Value, TextVAlign>;
	/**
	 像素数值 + 百分比字符串: "20%", 或 "auto",
	*/
	@:optional var right: Value;
	@:optional var bottom: Value;
}

typedef WidthHeight = {
	/**
	 像素数值 + 百分比字符串: "20%", 或 "auto"
	*/
	@:optional var width: Value;
	@:optional var height: Value;
}

typedef Animation = {
	/**
	 是否开启动画
	*/
	@:optional var animation : Bool;

	/**
	 是否开启动画的阈值，当单个系列显示的图形数量大于这个阈值时会关闭动画。
	*/
	@:optional var animationThreshold : Float;

	/**
	 初始动画的时长。
	*/
	@:optional var animationDuration : Float;

	/**
	 初始动画的缓动效果
	*/
	@:optional var animationEasing : Easing;

	/**
	 初始动画的延迟，支持回调函数，可以通过每个数据返回不同的 delay 时间实现更戏剧的初始动画效果。
	*/
	@:optional var animationDelay : EitherType<Float, Int->Float>;

	/**
	 数据更新动画的时长。
	*/
	@:optional var animationDurationUpdate : Float;// 300

	/**
	 数据更新动画的缓动效果。
	*/
	@:optional var animationEasingUpdate : Easing;

	/**
	 数据更新动画的延迟，支持回调函数，
	 可以通过每个数据返回不同的 delay 时间实现更戏剧的更新动画效果。
	*/
	@:optional var animationDelayUpdate : EitherType<Float, Int->Float>;
}


typedef AxisPointer = {

	> Animation,
	/**
	 指示器类型。
	*/
	var type: AxisPointerType;

	/**
	 指示器的坐标轴。可以是 'x', 'y', 'radius', 'angle'。默认取类目轴或者时间轴
	*/
	@:optional var axis : AxisPointerAxis;

	/**
	 axisPointer.type 为 'line' 时有效。
	*/
	@:optional var lineStyle : LineStyle<Color>;

	/**
	 axisPointer.type 为 'cross' 时有效。
	*/
	@:optional var crossStyle : {
		> LineStyle<Color>,
		@:optional var textStyle: TextStyle;
	};

	/**
	 axisPointer.type 为 'shadow' 时有效。
	*/
	@:optional var shadowStyle : AreaStyle<Color>;
}

typedef Symbol<T> = {
	/**
	 类型
	*/
	@:optional var symbol: EitherType<String, SymbolType>;

	/**
	 标记的大小，可以设置成诸如 10 这样单一的数字，也可以用数组分开表示宽和高，
	 例如 [20, 10] 表示标记宽为20，高为10。

	 如果需要每个数据的图形大小不一样，可以设置为如下格式的回调函数：

	 ```js
	 (value: Array|number, params: Object) => number|Array
	 ```
	*/
	// TODO: 这有二种 symbolSize 的形式, 而 haxe 中无法 overwrite 因此忽略这二个
	//@:optional var symbolSize: Either3<Int, Array<Int>, Function>;
	//@:optional var symbolSize: EitherType<Int, Array<Int>>;
	@:optional var symbolSize: EitherType<Int, T>;
	/**
	 旋转角度, 当 symbol 为 'arrow' 时会忽略 symbolRotate 强制设置为切线的角度
	*/
	@:optional var symbolRotate: Float;

	/**
	 相对于原本位置的偏移, 例如 [0, '50%'] 就是把自己向上移动了一半的位置
	*/
	@:optional var symbolOffset: Array<Value>;
}


typedef Params<T> = {
	/**
	 当前点击的图形元素所属的组件名称

	 其值如 'series'、'markLine'、'markPoint'、'timeLine' 等。
	*/
	var componentType: String;

	/**
	 系列类型。值可能为：'line'、'bar'、'pie' 等。当 componentType 为 'series' 时有意义。
	*/
	var seriesType: SeriesType;

	/**
	 系列在传入的 option.series 中的 index。当 componentType 为 'series' 时有意义。
	*/
	var seriesIndex: Int;

	/**
	 系列名称。当 componentType 为 'series' 时有意义。
	*/
	var seriesName: String;

	/**
	 数据名，类目名
	*/
	var name: String;

	/**
	 数据在传入的 data 数组中的 index
	*/
	var dataIndex: Int;

	/**
	 传入的原始数据项
	*/
	var data: T;

	/**
	 传入的数据值
	*/
	var value: OrArray<Float>;

	/**
	 数据图形的颜色。当 componentType 为 'series' 时有意义。
	*/
	var color: String;
}


typedef Mark = {
	@:optional var markPoint : MarkPoint;
	@:optional var markLine : MarkLine;
	@:optional var markArea : MarkArea;
}

private typedef MarkDataBase = {
	@:optional var name : String;
	@:optional var type: ValueLimit;
	@:optional var valueIndex: Int;
	@:optional var valueDim: String;
	@:optional var coord: Array<Any>; // TODO: String
	@:optional var x: Value; // "20%" or 20
	@:optional var y: Value; // "20%" or 20
	@:optional var value: Float;
}

private typedef TMarkPosition = EitherType<MarkPosition, Array<Value> >;

private typedef MarkPointLabel = {
	> Label,
	/**
	 标签的位置, 默认为 "inside", 例: [10, 10], ["50%","50%"]
	*/
	@:optional var position: TMarkPosition;
	/**
	  模板变量有 {a}、{b}、{c}，分别表示系列名，数据名，数据值
	*/
	@:optional var formatter: EitherType<String, Dynamic->String>; // TODO: ???Param<Dynamic>
}

private typedef MarkPointData = {
	> MarkDataBase,
	> Symbol<Array<Int>>,
	@:optional var itemStyle: NormalEmphasis<IconStyle>;
	@:optional var label: NormalEmphasis<{
		> Label,
		?position: TMarkPosition
	}>;
}
typedef MarkPoint = {
	> ZIndex,
	> Animation,
	> Symbol<EitherType<Array<Int>, Function>>,
	@:optional var silent: Bool;
	@:optional var tooltip: Tooltip;
	@:optional var label: NormalEmphasis<MarkPointLabel>;
	@:optional var itemStyle: NormalEmphasis<IconStyle>;
	@:optional var data: Array<MarkPointData>;
}

private typedef MarkLineLabel = {
	@:optional var show: Bool;
	@:optional var position: AxisNameLocal;
	/**
	  模板变量有 {a}、{b}、{c}、{d}，分别表示系列名，数据名，数据值，百分比。
	*/
	@:optional var formatter: EitherType<String, Dynamic->String>;
}
private typedef MarkLineData = {
	> MarkDataBase,
	> Symbol<Array<Int>>,
	@:optional var lineStyle: NormalEmphasis<{
		>LineStyle<Color>,
		?curveness:Float
	}>;
	@:optional var label: NormalEmphasis<MarkLineLabel>;
}
typedef MarkLine = {
	> ZIndex,
	> Animation,
	@:optional var silent: Bool;
	@:optional var symbol: EitherType<SymbolType, Array<SymbolType>>;
	/**
	 标线两端的标记大小，可以是一个数组分别指定两端，也可以是单个统一指定。
	*/
	@:optional var symbolSize: OrArray<Int>;
	@:optional var precision: Float;
	@:optional var tooltip: Tooltip;
	@:optional var label: NormalEmphasis<MarkLineLabel>;
	@:optional var lineStyle: NormalEmphasis<{
		>LineStyle<Color>,
		?curveness:Float
	}>;
	@:optional var data: Array<MarkLineData>;
}

private typedef MarkAreaLabel = {
	> Label,
	@:optional var position: TMarkPosition;
}
private typedef MarkAreaData = {
	> MarkDataBase,
	@:optional var itemStyle: NormalEmphasis<IconStyle>;
	@:optional var label: NormalEmphasis<MarkAreaLabel>;
}
typedef MarkArea = {
	> ZIndex,
	> Animation,
	@:optional var silent: Bool;
	@:optional var label: NormalEmphasis<MarkAreaLabel>;
	@:optional var itemStyle: NormalEmphasis<IconStyle>;
	@:optional var data: Array<MarkAreaData>;
}

