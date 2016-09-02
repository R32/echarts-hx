package js.echarts.options;

import haxe.extern.EitherType;
import js.echarts.options.Data;



/**
 系列列表。每个系列通过 type 决定自己的图表类型
*/
typedef Series = {
	var type: SeriesType
}