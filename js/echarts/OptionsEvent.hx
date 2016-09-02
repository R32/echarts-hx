package js.echarts;

// TODO: Event
@:enum abstract OptionsEvent<T: haxe.Constraints.Function>(Event<T>) to Event<T> {
	var DATAVIEWCHANGED  = "dataviewchanged";
	var MAGICTYPECHANGED  = "magictypechanged";
	var AXISAREASELECTED  = "axisareaselected";
}