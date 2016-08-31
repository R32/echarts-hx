package;

import js.Echarts;
import js.Browser.document;
import js.echarts.Event;
import js.echarts.Action;
import js.echarts.ActionEvent;
import js.echarts.MouseEvent;
import js.echarts.options.*;
import utils.Mt.HexColor;
import js.echarts.options.Data;


class ETest{
	static function main(){
		var ec = Echarts.init( document.getElementById("ec") );

		js.Lib.global.ec = ec;

		var t: js.echarts.options.Title = {};
		var g: js.echarts.options.Grid = {};
		var xa: js.echarts.options.XAxis = {};

		ec.dispatchAction({
			type: DOWNPLAY
		});

		ec.on(ActionEvent.DATARANGESELECTED, function(param) {
			trace(param.type == ActionEvent.DATARANGESELECTED);
			trace((param.selected: Array<Int>));
		} );

		ec.setOption( {
			title: {
				text: "Echarts 入库门示例",
			},

			tooltip: {},

			legend: {
				data: ["销量"]
			},

			xAxis: {
				data: ["衬衫","羊毛衫","雪纺衫","裤子","高跟鞋","袜子"]
			},

			yAxis: {},

			series: {
				name: "销量",
				type: "bar",
				data: [5, 20, 36, 10, 10, 20]
			}
		});
	}
}

