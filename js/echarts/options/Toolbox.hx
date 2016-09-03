package js.echarts.options;

import haxe.extern.EitherType;
import js.echarts.options.Data;
import js.echarts.options.Base;
import haxe.Constraints.Function;

/**
 工具栏。内置有导出图片，数据视图，动态类型切换，数据区域缩放，重置五个工具。
*/
typedef Toolbox = {

	/**
	 是否显示工具栏组件。

	 `default: true`
	*/
	@:optional var show: Bool;


	/**
	 工具栏 icon 的布局朝向。

	 `default: "horizontal"`
	*/
	@:optional var orient: Orient;

	/**
	 工具栏 icon 的大小。

	 `default: 15`
	*/
	@:optional var itemSize: Int;

	/**
	 工具栏 icon 每项之间的间隔。横向布局时为水平间隔，纵向布局时为纵向间隔。

	 `default: 10`
	*/
	@:optional var itemGap: Int;

	/**
	 是否在鼠标 hover 的时候显示每个工具 icon 的标题。

	 `default: true`
	*/
	@:optional var showTitle: Bool;

	/**
	 各工具配置项。
	*/
	@:optional var feature: Feature;

	@:optional var iconStyle: NormalEmphasis<IconStyle>;

	/**
	 所有图形的 zlevel 值。大的 Canvas 会放在 zlevel 小的 Canvas 的上面。

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
	 `default: "auto"`
	*/
	@:optional var width: EitherType<Float, String>;

	/**
	 `default: "auto"`
	*/
	@:optional var height: EitherType<Float, String>;
}

typedef Feature = {
	@:optional var saveAsImage: FSaveAsImage;
	@:optional var restore: FRestore;
	@:optional var dataView: FDataView;
	@:optional var dataZoom: FDataZoom;
	@:optional var magicType: FMagicType;
	@:optional var brush: FBrush;
}

/**
 配置项还原。
*/
typedef FRestore = {
	@:optional var show:Bool;
	@:optional var title:String;
	@:optional var icon:String;
	@:optional var iconStyle : NormalEmphasis<IconStyle>;
}

typedef FSaveAsImage = {
	> FRestore,

	/**
	 保存的图片格式。支持 'png' 和 'jpeg'。

	 `default: png`
	*/
	@:optional var type: ImageType;

	/**
	 保存的文件名称，默认使用 title.text 作为名称。
	*/
	@:optional var name: String;

	/**
	 保存的图片背景色，默认使用 backgroundColor，如果backgroundColor不存在的话会取白色。

	 `default: 'auto'`
	*/
	@:optional var backgroundColor: String;

	/**
	 保存为图片时忽略的组件列表，默认忽略工具栏。

	 `default: ['toolbox']`
	*/
	@:optional var excludeComponents: Array<String>;

	/**
	 保存图片的分辨率比例，默认跟容器相同大小，
	 如果需要保存更高分辨率的，可以设置为大于 1 的值，例如 2。

	 `default: 1`
	*/
	@:optional var pixelRatio: Float;
}


/**
 数据视图工具，可以展现当前图表所用的数据，编辑后可以动态更新。
*/
typedef FDataView = {
	> FRestore,

	/**
	 是否不可编辑（只读）。 `default: false `
	*/
	@:optional var readOnly:Bool;

	/**
	 自定义 dataView 展现函数，用以取代默认的 textarea 使用更丰富的数据编辑。
	 可以返回 dom 对象或者 html 字符串。
	*/
	@:optional var optionToContent: Function;

	/**
	 在使用 optionToContent 的情况下，
	 如果支持数据编辑后的刷新，需要自行通过该函数实现组装 option 的逻辑。
	*/
	@:optional var contentToOption: Function;

	/**
	 数据视图上有三个话术，默认是['数据视图', '关闭', '刷新']。
	*/
	@:optional var lang: Array<String>;

	/**
	 数据视图浮层背景色。`default: '#fff'`
	*/
	@:optional var backgroundColor: String;

	/**
	 数据视图浮层文本输入区背景色。 `default: '#fff'`
	*/
	@:optional var textareaColor: String;

	/**
	 数据视图浮层文本输入区边框颜色。 `default: '#333'`
	*/
	@:optional var textareaBorderColor: String;

	/**
	 文本颜色。 `default: '#000'`
	*/
	@:optional var textColor: String;

	/**
	 按钮颜色。 `default: '#c23531'`
	*/
	@:optional var buttonColor: String;

	/**
	 按钮文本颜色。 `default: '#fff'`
	*/
	@:optional var buttonTextColor: String;
}

/**
 数据区域缩放。目前只支持直角坐标系的缩放。
*/
typedef FDataZoom = {

	@:optional var show:Bool;

	@:optional var icon:{
		?zoom: String,
		?back: String
	};

	@:optional var title:{
		?zoom: String,
		?back: String
	};

	@:optional var iconStyle : NormalEmphasis<IconStyle>;
	/**
	指定 哪些 xAxis 被控制。如果缺省则控制所有的x轴。
	如果设置为 false 则不控制任何x轴。如果设置成 3 则控制 axisIndex 为 3 的x轴。
	如果设置为 [0, 3] 则控制 axisIndex 为 0 和 3 的x轴。
	*/
	@:optional var xAxisIndex: Either3<Int, Bool, Array<Int>>;

	@:optional var yAxisIndex: Either3<Int, Bool, Array<Int>>;

}


private typedef FMagicSub<T> = {
	?line: T,
	?bar: T,
	?stack: T,
	?tiled: T,
}

/**
动态类型切换 示例
*/
typedef FMagicType = {

	@:optional var show:Bool;

	/**
	 启用的动态类型，包括'line'（切换为折线图）, 'bar'（切换为柱状图）,
	 'stack'（切换为堆叠模式）, 'tiled'（切换为平铺模式）。
	*/
	var type: Array<MagicType>;

	@:optional var title: FMagicSub<String>;


	@:optional var icon: FMagicSub<String>;

	@:optional var iconStyle : NormalEmphasis<IconStyle>;

	/**
	 各个类型的专有配置项。在切换到某类型的时候会合并相应的配置项
	*/
	@:optional var option : FMagicSub<{}>;

	@:optional var seriesIndex : FMagicSub<Array<{}>>;
}

private typedef FBrushIcon = {
	?rect: String,
	?polygon: String,
	?lineX: String,
	?lineY: String,
	?keep: String,
	?clear: String,
}

typedef FBrush = {
	/**
	使用的按钮，取值：
	- 'rect'：开启矩形选框选择功能。
	- 'polygon'：开启任意形状选框选择功能。
	- 'lineX'：开启横向选择功能。
	- 'lineY'：开启纵向选择功能。
	- 'keep'：切换『单选』和『多选』模式。后者可支持同时画多个选框。前者支持单击清除所有选框。
	- 'clear'：清空所有选框。
	*/
	var type: Array<ToolBrushType>;
	@:optional var icon: FBrushIcon;
	@:optional var title: FBrushIcon;
}