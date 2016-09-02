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
	var data: Dynamic;

	/**
	 sankey、graph 等图表同时含有 nodeData 和 edgeData 两种 data，

	 dataType 的值会是 'node' 或者 'edge'，表示当前点击在 node 还是 edge 上。

	 其他大部分图表中只有一种 data，dataType 无意义。
	*/
	var dataType: String;

	/**
	 传入的数据值
	*/
	var value: haxe.extern.EitherType<Float, Array<Float>>;

	/**
	 数据图形的颜色。当 componentType 为 'series' 时有意义。
	*/
	var color: String;
}