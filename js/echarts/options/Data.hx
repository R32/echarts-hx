package js.echarts.options;

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

@:enum abstract LinkTarget(String) to String{
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
- VALUE: 数值轴，适用于连续数据。

- CATEGORY: 类目轴，适用于离散的类目数据，为该类型时必须通过 data 设置类目数据。

- TIME: 时间轴，适用于连续的时序数据，与数值轴相比时间轴带有时间的格式化，
在刻度计算上也有所不同，例如会根据跨度的范围来决定使用月，星期，日还是小时范围的刻度。

- LOG: 对数轴。适用于对数数据。
*/
@:enum abstract AxisType(String) to String{
	var VALUE = "value";
	var CATEGORY = "category";
	var TIME = "time";
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
