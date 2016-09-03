package js.echarts;

import haxe.extern.EitherType;
import js.echarts.options.Data;

@:enum abstract Action<T: haxe.Constraints.Function>(Event<T>) to Event<T> {
	var HIGHLIGHT: Action<AHighlight->Void> = "highlight";
	var DOWNPLAY: Action<ADownplay->Void> = "downplay";
	var LEGENDSELECT: Action<ALegend->Void> = "legendSelect";
	var LEGENDUNSELECT: Action<ALegend->Void> = "legendUnSelect";
	var LEGENDTOGGLESELECT: Action<ALegend->Void> = "legendToggleSelect";
	var SHOWTIPXY: Action<AShowTipXY->Void> = "showTip";
	var SHOWTIP: Action<AShowTip->Void> = "showTip";
	var HIDETIP: Action<AHideTip->Void> = "hideTip";
	var DATAZOOM: Action<ADataZoom->Void> = "dataZoom";
	var SELECTDATARANGE: Action<ASelectDataRange->Void> = "selectDataRange";
	var TIMELINECHANGE: Action<ATimelineChange->Void> = "timelineChange";
	var TIMELINEPLAYCHANGE: Action<ATimelinePlayChange->Void> = "timelinePlayChange";
	var RESTORE: Action<ARestore->Void> = "restore";
	var PIESELECT: Action<APie->Void> = "pieSelect";
	var PIEUNSELECT: Action<APie->Void> = "pieUnSelect";
	var PIETOGGLESELECT: Action<APie->Void> = "pieToggleSelect";
	var GEOSELECT: Action<AGeo->Void> = "geoSelect";
	var GEOUNSELECT: Action<AGeo->Void> = "geoUnSelect";
	var GEOTOGGLESELECT: Action<AGeo->Void> = "geoToggleSelect";
	var MAPSELECT: Action<AMap->Void> = "mapSelect";
	var MAPUNSELECT: Action<AMap->Void> = "mapUnSelect";
	var MAPTOGGLESELECT: Action<AMap->Void> = "mapToggleSelect";
	var BRUSH: Action<ABrush->Void> = "brush";
}

typedef ActionBase<T> = {
	var type: Action<T->Void>;
}


//// highlight

/**
高亮指定的数据图形。
*/
typedef AHighlight = {
	> ActionBase<AHighlight>,
	@:optional var batch: Array<AHighlight>;
	@:optional var seriesIndex: EitherType<Int, Array<Int>>;     // 系列 index，可以是一个数组指定多个系列
	@:optional var seriesName: EitherType<String, Array<String>>;// 系列名称，可以是一个数组指定多个系列
	@:optional var dataIndex: Int; // 数据的 index
	@:optional var name: String;   // 数据的名称
}

/**
 取消高亮指定的数据图形。
*/
typedef ADownplay = {
	> ActionBase<ADownplay>,
	@:optional var batch: Array<AHighlight>;
	@:optional var seriesIndex: EitherType<Int, Array<Int>>;
	@:optional var seriesName: EitherType<String, Array<String>>;
	@:optional var dataIndex: Int;
	@:optional var name: String;
}


/**
 选中图例。
*/
typedef ALegend = {
	> ActionBase<ALegend>,
	var name: String; // 图例名称
}

/**
 显示提示框，指定在相对容器的位置处显示提示框，如果指定的位置无法显示则无效。
*/
typedef AShowTipXY = {
	> ActionBase<AShowTipXY>,
	var x: Float; // 屏幕上的 x 坐标
	var y: Float; // 屏幕上的 y 坐标
}

/**
 显示提示框，指定数据图形，根据 tooltip 的配置项显示提示框
*/
typedef AShowTip = {
	> ActionBase<AShowTip>,
	@:optional var seriesIndex: Int; // 系列的 index，在 tooltip 的 trigger 为 axis 的时候可选。
	@:optional var dataIndex: Int;   // 数据的 index，如果不指定也可以通过 name 属性根据名称指定数据
	@:optional var name: String;     // 可选，数据名称，在有 dataIndex 的时候忽略
}

/**
隐藏提示框。
*/
typedef AHideTip= {
	> ActionBase<AHideTip>,
}


//// dataZoom

/**
 数据区域缩放组件相关的行为，必须引入数据区域缩放组件后才能使用。
*/
typedef ADataZoom = {
	> ActionBase<ADataZoom>,
	@:optional var dataZoomIndex: Int;  // // 可选，dataZoom 组件的 index，多个 dataZoom 组件时有用，默认为 0
	var start: Int;  // 开始位置的百分比，0 - 100
	var end: Int;    // 结束位置的百分比，0 - 100
	var startValue: Float; // 开始位置的数值
	var endValue: Float;   // 结束位置的数值
}

//// visualMap 视觉映射组件相关的行为，必须引入视觉映射组件后才能使用。

/**
 数据区域缩放组件相关的行为，必须引入数据区域缩放组件后才能使用。

 ```js
 myChart.dispatchAction({
    type: 'selectDataRange',
    // 选取 20 到 40 的值范围
    selected: [20, 40],
    // 取消选中第二段
    selected: { 1: false },
    // 取消选中类目 `优`
    selected: { '优': false }
 });
 ```
*/
typedef ASelectDataRange = {
	> ActionBase<ASelectDataRange>,

	// 可选，visualMap 组件的 index，多个 visualMap 组件时有用，默认为 0
	@:optional var visualMapIndex:Int;

    // 连续型 visualMap 和 离散型 visualMap 不一样
    // 连续型的是一个表示数值范围的数组。
    // 离散型的是一个对象，键值是类目或者分段的索引。值是 `true`, `false`
	@:optional var selected:EitherType<Dynamic<Bool>, Array<Int>>;
}


//// timeline 时间轴组件相关的行为，必须引入时间轴组件后才能使用。

/**
 设置当前的时间点。
*/
typedef ATimelineChange = {
	> ActionBase<ATimelineChange>,
	var currentIndex: Int; // 时间点的 index
}

/**
 切换时间轴的播放状态。
*/
typedef ATimelinePlayChange = {
	> ActionBase<ATimelineChange>,
	var playState: Bool; // // 播放状态，true 为自动播放
}

//// toolbox 工具栏组件相关的行为，必须引入工具栏组件后才能使用。

/**
 重置 option。
*/
typedef ARestore = {
	> ActionBase<ARestore>,
}


/**
  饼图相关的行为，必须引入饼图后才能使用。
*/
typedef APie = {
	> ActionBase<APie>,
	@:optional var seriesIndex: EitherType<Int, Array<Int>>;
	@:optional var seriesName: EitherType<String, Array<String>>;
	@:optional var dataIndex: Int;
	@:optional var name: String;
}

/**
 地图组件相关的行为，必须引入地图组件后才能使用。
*/
typedef AGeo = {
	> ActionBase<AGeo>,
	@:optional var seriesIndex: EitherType<Int, Array<Int>>;
	@:optional var seriesName: EitherType<String, Array<String>>;
	@:optional var dataIndex: Int;
	@:optional var name: String;
}

/**
 地图图表相关的行为，必须引入地图图表后才能使用。
*/
typedef AMap = {
	> ActionBase<AMap>,
	@:optional var seriesIndex: EitherType<Int, Array<Int>>;
	@:optional var seriesName: EitherType<String, Array<String>>;
	@:optional var dataIndex: Int;
	@:optional var name: String;
}

/**
 区域选择相关的行为。触发此 action 可向 echarts 中添加一个或多个选框

 http://echarts.baidu.com/api.html#action.brush.brush
*/
typedef ABrush = {
	> ActionBase<ABrush>,
	var areas: Array<{
		var brushType: BrushType;
		@:optional var coordRange: Array<Array<Float>>;
		@:optional var range: Array<Array<Float>>;
		@:optional var geoIndex: Int;
		@:optional var xAxisIndex: Int;
		@:optional var yAxisIndex: Int;
	}>;
}