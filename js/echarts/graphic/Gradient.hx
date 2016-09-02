package js.echarts.graphic;

extern class Gradient {
	var colorStops:Array<ColorStop>;
	function addColorStop(offset:Int, color:String):Void;
}

typedef ColorStop = {
	color: String,
	offset:Int
}