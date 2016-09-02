package js.echarts.options;

import haxe.extern.EitherType;

#if (haxe_ver < 3.3)
typedef Any = Dynamic;
#end

abstract Either3<T1, T2, T3>(Dynamic) from T1 from T2 from T3 to T1 to T2 to T3 {}


typedef TextStyle = {
	?color: String,
	?fontStyle: FontStyle,
	?fontWeight: FontWeight,
	?fontFamily: String,
	?fontSize: Float,
}

/**
- color: 坐标轴线线的颜色。
- shadowBlur: 图形阴影的模糊大小。该属性配合 shadowColor,shadowOffsetX, shadowOffsetY 一起设置图形的阴影效果。
- shadowColor: 阴影颜色
- shadowOffsetX: 阴影水平方向上的偏移距离
- shadowOffsetY: 阴影垂直方向上的偏移距离。
- opacity: 图形透明度。支持从 0 到 1 的数字，为 0 时不绘制该图形
*/
typedef AreaStyle = {
	?color: String,  //
	?shadowBlur: Float,
	?shadowColor: String,
	?shadowOffsetX: Float,
	?shadowOffsetY: Float,
	?opacity: Float,
}

/**
- width: 坐标轴线线宽。
- type: 坐标轴线线的类型。
*/
typedef LineStyle = {
	> AreaStyle,
	?width: Float,
	?type: LineType,
}

typedef BorderType = {
	?color: String,
	?borderColor: String,
	?borderWidth: Int,
}

typedef IconStyle = {
	?color: EitherType<String, js.echarts.graphic.Gradient>,
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

typedef Limit = {
	?min: Float,
	?max: Float,
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
	@:optional var lineStyle : LineStyle;

	/**
	 axisPointer.type 为 'cross' 时有效。
	*/
	@:optional var crossStyle : {
		> LineStyle,
		@:optional var textStyle: TextStyle;
	};

	/**
	 axisPointer.type 为 'shadow' 时有效。
	*/
	@:optional var shadowStyle : AreaStyle;

}


@:enum abstract LinkTarget(String) to String {
	var BLANK = "blank";
	var SELF = "self";
}

@:enum abstract FontStyle(String) to String{
	var NORMAL = "normal";
	var ITALIC = "italic";
	var OBLIQUE = "oblique";
}

@:enum abstract FontWeight(String) to String{
	var NORMAL = "normal";
	var BOLD = "bold";
	var BOLDER = "bolder";
	var LIGHTER = "lighter";
}

@:enum abstract TextAlign(String) to String{
	var LEFT = "left";
	var CENTER = "center";
	var RIGHT = "right";
}

@:enum abstract TextVAlign(String) to String{
	var TOP = "top";
	var MIDDLE = "middle";
	var BOTTOM = "bottom";
}

@:enum abstract Orient(String) to String{
	var HORIZONTAL = "horizontal";
	var VERTICAL = "vertical";
}

@:enum abstract Align(String) to String{
	var LEFT = "left";
	var AUTO = "auto";
	var RIGHT = "right";
}

@:enum abstract HVAlign(String) to String {
	var AUTO = "auto";
	var LEFT = "left";
	var RIGHT = "right";
	var TOP = "top";
	var BOTTOM = "bottom";
}

@:enum abstract SelectedMode(String) to String{
	var SINGLE = "single";
	var MULTIPLE = "multiple";
}

@:enum abstract XPosition(String) to String{
	var TOP = "top";
	var BOTTOM = "bottom";
}

@:enum abstract YPosition(String) to String{
	var LEFT = "left";
	var RIGHT = "right";
}

/**
for Tooltip
*/
@:enum abstract TPosition(String) to String{
	var INSIDE = "inside";
	var LEFT = "left";
	var RIGHT = "right";
	var TOP = "top";
	var BOTTOM = "bottom";
}


@:enum abstract AxisType(String) to String {
	/**
	 数值轴，适用于连续数据。
	*/
	var VALUE = "value";
	/**
	 类目轴，适用于离散的类目数据，为该类型时必须通过 data 设置类目数据。
	*/
	var CATEGORY = "category";
	/**
	 时间轴，适用于连续的时序数据，与数值轴相比时间轴带有时间的格式化，
	*/
	var TIME = "time";

	/**
	* 对数轴。适用于对数数据
	*/
	var LOG = "log";
}

@:enum abstract AxisNameLocal(String) to String{
	var START = "start";
	var MIDDLE = "middle";
	var END = "end";
}

@:enum abstract LineType(String) to String{
	var SOLID = "solid";
	var DASHED = "dashed";
	var DOTTED = "dotted";
}

@:enum abstract ShapeType(String) to String{
	var POLYGON = "polygon";
	var CIRCLE = "circle";
}

@:enum abstract DataZoomType(String) to String{
	var INSIDE = "inside";
	var SLIDER = "slider";
}

@:enum abstract FilterMode(String) to String{
	var FILTER = "filter";
	var EMPTY = "empty";
}

@:enum abstract TriggerType(String) to String {
	/**
	 数据项图形触发，主要在散点图，饼图等无类目轴的图表中使用。
	*/
	var ITEM = "item";
	/**
	 坐标轴触发，主要在柱状图，折线图等会使用类目轴的图表中使用。
	*/
	var AXIS = "axis";
}

/**
echars 3.0
*/
@:enum abstract TriggerOn(String) to String {
	var MOUSEMOVE = "mousemove";
	var CLICK = "click";
}

@:enum abstract ImageType(String) to String {
	var PNG = "png";
	var JPEG = "jpeg";
}

@:enum abstract IconType(String) to String {
	var CIRCLE = "circle";
	var RECT = "rect";
	var ROUNDRECT = "roundRect";
	var TRIANGLE = "triangle";
	var DIAMOND = "diamond";
	var PIN = "pin";
	var ARROW = "arrow";
}

@:enum abstract AxisPointerType(String) to String {
	var LINE = "line";
	var CROSS = "cross";
	var SHADOW = "shadow";
}

@:enum abstract AxisPointerAxis(String) to String {
	var X = "x";
	var Y = "y";
	var RADIUS = "radius";
	var ANGLE = "angle";
	var AUTO = "auto";
}

@:enum abstract ToolBrushType(String) to String {
	var RECT = "rect";
	var POLYGON = "polygon";
	var LINEX = "lineX";
	var LINEY = "lineY";
	var KEEP = "keep";
	var CLEAR = "clear";
}

@:enum abstract BrushType(String) to String {
	/**
	 矩形选框。
	*/
	var RECT = "rect";
	/**
	 任意形状选框
	*/
	var POLYGON = "polygon";
	/**
	 横向选择。
	*/
	var LINEX = "lineX";
	/**
	 纵向选择
	*/
	var LINEY = "lineY";
}

@:enum abstract BrushAll(String) to String {
	var ALL = "all";
}


@:enum abstract ThrottleType(String) to String {
	/**
	 表示只有停止动作了（即一段时间没有操作了），才会触发事件。时间阈值由 brush.throttleDelay 指定。
	*/
	var DEBOUNCE = "debounce";
	/**
	 表示按照一定的频率触发时间，时间间隔由 brush.throttleDelay 指定。
	*/
	var FIXRATE = "fixRate";
}

@:enum abstract SymbolType(String) to String {
	var CIRCLE = "circle";
	var RECT = "rect";
	var ROUNDRECT = "roundRect";
	var TRIANGLE = "triangle";
	var DIAMOND = "diamond";
	var PIN = "pin";
	var ARROW = "arrow";
	//var EMPTYCIRCLE = "emptyCircle";
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

@:enum abstract SeriesType(String) to String {
	var LINE = "line";
	var BAR = "bar";
	var PIE = "pie";
	var SCATTER = "scatter";
	var EFFECTSCATTER = "effectScatter";
	var RADAR = "radar";
	var TREEMAP = "treemap";
	var BOXPLOT = "boxplot";
	var CANDLESTICK = "candlestick";
	var HEATMAP = "heatmap";
	var MAP = "map";
	var PARALLEL = "parallel";
	var LINES = "lines";
	var GRAPH = "graph";
	var SANKEY = "sankey";
	var FUNNEL = "funnel";
	var GAUGE = "gauge";
}

@:enum abstract Easing(String) to String{
	var LINEAR = "linear";
	var QUADRATICIN = "quadraticIn";
	var QUADRATICOUT = "quadraticOut";
	var QUADRATICINOUT = "quadraticInOut";
	var CUBICIN = "cubicIn";
	var CUBICOUT = "cubicOut";
	var CUBICINOUT = "cubicInOut";
	var QUARTICIN = "quarticIn";
	var QUARTICOUT = "quarticOut";
	var QUARTICINOUT = "quarticInOut";
	var QUINTICIN = "quinticIn";
	var QUINTICOUT = "quinticOut";
	var QUINTICINOUT = "quinticInOut";
	var SINUSOIDALIN = "sinusoidalIn";
	var SINUSOIDALOUT = "sinusoidalOut";
	var SINUSOIDALINOUT = "sinusoidalInOut";
	var EXPONENTIALIN = "exponentialIn";
	var EXPONENTIALOUT = "exponentialOut";
	var EXPONENTIALINOUT = "exponentialInOut";
	var CIRCULARIN = "circularIn";
	var CIRCULAROUT = "circularOut";
	var CIRCULARINOUT = "circularInOut";
	var ELASTICIN = "elasticIn";
	var ELASTICOUT = "elasticOut";
	var ELASTICINOUT = "elasticInOut";
	var BACKIN = "backIn";
	var BACKOUT = "backOut";
	var BACKINOUT = "backInOut";
	var BOUNCEIN = "bounceIn";
	var BOUNCEOUT = "bounceOut";
	var BOUNCEINOUT = "bounceInOut";
}
