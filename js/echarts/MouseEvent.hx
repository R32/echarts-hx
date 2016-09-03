package js.echarts;

import js.echarts.options.Data;

@:enum abstract MouseEvent<T: haxe.Constraints.Function>(Event<T>) to Event<T> {
	var CLICK : MouseEvent<MouseEventT->Void> = "click";
	var DBLCLICK : MouseEvent<MouseEventT->Void> = "dblclick";
	var MOUSEDOWN : MouseEvent<MouseEventT->Void> = "mousedown";
	var MOUSEMOVE : MouseEvent<MouseEventT->Void> = "mousemove";
	var MOUSEUP : MouseEvent<MouseEventT->Void> = "mouseup";
	var MOUSEOVER : MouseEvent<MouseEventT->Void> = "mouseover";
	var MOUSEOUT : MouseEvent<MouseEventT->Void> = "mouseout";
}

/**
 鼠标事件的事件参数是事件对象的数据的各个属性，对于图表的点击事件，基本参数如下，
 其它图表诸如饼图可能会有部分附加参数。例如饼图会有percent属性表示百分比，
 具体见各个图表类型的 label formatter 回调函数的 params。
*/
typedef MouseEventT = {

	> js.echarts.options.Base.Params<Dynamic>,

	/**
	 sankey、graph 等图表同时含有 nodeData 和 edgeData 两种 data，

	 dataType 的值会是 'node' 或者 'edge'，表示当前点击在 node 还是 edge 上。

	 其他大部分图表中只有一种 data，dataType 无意义。
	*/
	@:optional var dataType: String;
}