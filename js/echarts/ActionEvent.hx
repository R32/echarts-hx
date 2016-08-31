package js.echarts;

import haxe.extern.EitherType;
import js.echarts.Action;

@:enum abstract ActionEvent<T: haxe.Constraints.Function>(Event<T>) to Event<T> {
	var LEGENDSELECTCHANGED :ActionEvent<LegendEvent->Void> = "legendselectchanged";
	var LEGENDSELECTED :ActionEvent<LegendEvent->Void> = "legendselected";
	var LEGENDUNSELECTED :ActionEvent<LegendEvent->Void> = "legendunselected";
	var DATAZOOM :ActionEvent<DataZoomEvent->Void> = "datazoom";
	var DATARANGESELECTED :ActionEvent<SelectDataRangeEvent->Void> = "datarangeselected";
	var TIMELINECHANGED :ActionEvent<TimelineChangeEvent->Void> = "timelinechanged";
	var TIMELINEPLAYCHANGED :ActionEvent<TimelinePlayChangeEvent->Void> = "timelineplaychanged";
	var RESTORE :ActionEvent<RestoreEvent->Void> = "restore";
	var GEOSELECTCHANGED :ActionEvent<GeoEvent->Void> = "geoselectchanged";
	var GEOSELECTED :ActionEvent<GeoEvent->Void> = "geoselected";
	var GEOUNSELECTED :ActionEvent<GeoEvent->Void> = "geounselected";
	var PIESELECTCHANGED :ActionEvent<PieEvent->Void> = "pieselectchanged";
	var PIESELECTED :ActionEvent<PieEvent->Void> = "pieselected";
	var PIEUNSELECTED :ActionEvent<PieEvent->Void> = "pieunselected";
	var MAPSELECTCHANGED :ActionEvent<MapEvent->Void> = "mapselectchanged";
	var MAPSELECTED :ActionEvent<MapEvent->Void> = "mapselected";
	var MAPUNSELECTED :ActionEvent<MapEvent->Void> = "mapunselected";
	var BRUSHSELECTED :ActionEvent<BrushEvent->Void> = "brushselected";
}


typedef LegendEvent = {
	var type: ActionEvent<LegendEvent -> Void>;
	var name: String;
	var selected:Dynamic; // TODO 所有图例的选中状态表。
}

typedef DataZoomEvent = {
	var type: ActionEvent<DataZoomEvent -> Void>;
	var dataZoomIndex: Int;
	var start: Int;
	var end: Int;
	@:optional var startValue: Float; // 缩放的开始位置的数值，只有在工具栏的缩放行为的事件中存在。
	@:optional var endValue: Float;   // 缩放的结束位置的数值，只有在工具栏的缩放行为的事件中存在。
}

typedef SelectDataRangeEvent = {
	var type: ActionEvent<SelectDataRangeEvent -> Void>;
	var selected: EitherType<Dynamic<Bool>, Array<Int>>;
}

typedef TimelineChangeEvent = {
	var type: ActionEvent<TimelineChangeEvent -> Void>;
	var currentIndex: Int;
}

typedef TimelinePlayChangeEvent = {
	var type: ActionEvent<TimelinePlayChangeEvent -> Void>;
	var playState: Bool;
}

typedef RestoreEvent = {
	var type: ActionEvent<RestoreEvent -> Void>;
}

typedef PieEvent = {
	var type: ActionEvent<PieEvent -> Void>;
	var seriesId:String;  // 系列 ID，可以在 option 中传入
	var name: String;     // 数据名称
	var selected:Dynamic; // 所有数据的选中状态表。
}

typedef GeoEvent = {
	var type: ActionEvent<GeoEvent -> Void>;
	var seriesId:String;  // 系列 ID，可以在 option 中传入
	var name: String;     // 数据名称
	var selected:Dynamic; // 所有数据的选中状态表。
}

typedef MapEvent = {
	var type: ActionEvent<MapEvent -> Void>;
	var seriesId:String;  // 系列 ID，可以在 option 中传入
	var name: String;     // 数据名称
	var selected:Dynamic; // 所有数据的选中状态表。
}

/**
这个事件，在 setOption 时不会发出，在其他的 dispatchAction 时，
或者用户在界面中创建、删除、修改选框时会发出。
*/
typedef BrushEvent = {
	var type: ActionEvent<BrushEvent -> Void>;
	var batch: Array<{
			brushIndex: Int,
			selected: Array<{
				seriesIndex :Int,
				dataIndex: Array<Int>
			}>
	}>;
}