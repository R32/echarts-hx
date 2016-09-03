package js.echarts.options;

#if (haxe_ver < 3.3)
typedef Any = Dynamic;
#end

@:enum abstract ValueLimit(String) to String {
	var MIN = "min";
	var MAX = "max";
	var AVERAGE = "average";
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

@:enum abstract MarkPosition(String) to String {
	var TOP = "top";
	var LEFT = "left";
	var RIGHT = "right";
	var BOTTOM = "bottom";
	var INSIDE = "inside";
	var INSIDELEFT = "insideLeft";
	var INSIDERIGHT = "insideRight";
	var INSIDETOP = "insideTop";
	var INSIDEBOTTOM = "insideBottom";
	var INSIDETOPLEFT = "insideTopLeft";
	var INSIDEBOTTOMLEFT = "insideBottomLeft";
	var INSIDETOPRIGHT = "insideTopRight";
	var INSIDEBOTTOMRIGHT = "insideBottomRight";
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

/**
 toolbox feature
*/
@:enum abstract MagicType(String) to String {
	var LINE = "line";
	var BAR = "bar";
	var STACK = "stack";
	var TILED = "tiled";
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

/**
 https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/globalCompositeOperation
*/
@:enum abstract BlendMode(String) to String{
	var SOURCE_OVER = "source-over";
	var SOURCE_IN = "source-in";
	var SOURCE_OUT = "source-out";
	var SOURCE_ATOP = "source-atop";
	var DESTINATION_OVER = "destination-over";
	var DESTINATION_IN = "destination-in";
	var DESTINATION_OUT = "destination-out";
	var DESTINATION_ATOP = "destination-atop";
	var LIGHTER = "lighter";
	var COPY = "copy";
	var XOR = "xor";
	var MULTIPLY = "multiply";
	var SCREEN = "screen";
	var OVERLAY = "overlay";
	var DARKEN = "darken";
	var LIGHTEN = "lighten";
	var COLOR_DODGE = "color-dodge";
	var COLOR_BURN = "color-burn";
	var HARD_LIGHT = "hard-light";
	var SOFT_LIGHT = "soft-light";
	var DIFFERENCE = "difference";
	var EXCLUSION = "exclusion";
	var HUE = "hue";
	var SATURATION = "saturation";
	var COLOR = "color";
	var LUMINOSITY = "luminosity";
}

