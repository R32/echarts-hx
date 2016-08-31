Externs of [echarts v3.x](https://github.com/ecomfe/echarts) for Haxe
-----

**WIP（未完成）**

## Usage

QuickStart :

```haxe
import js.Browser.document;

class Main{
	static function main() {
		var ec = js.Echarts.init( document.getElementById("ec") );

		ec.setOption( {
			title: {
				text: "Echarts 入门示例",
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
```

for `haxe.extern.EitherType` :

```haxe
ec.on(ActionEvent.DATARANGESELECTED, function(param) {
	var range: Array<Int> = cast param.selected;
	// or
	trace((param.selected: Array<Int>).length);
	//trace((param.selected: Dynamic).some);
});
```

## Status

* [x] echarts + echartInstance : `js.Echarts`

* [x] action : `js.echarts.Action`

* [x] events : `js.echarts.Event, MouseEvent, ActionEvent, OptionsEvent`

* [ ] options : `js.echarts.SetOptions`

  `package js.echarts.options` :

  - [x] MISC ATTRIBUTES :
  - [x] title :
  - [x] legend :
  - [x] grid :
  - [x] xAxis :
  - [x] yAxis :
  - [ ] polar :
  - [ ] radiusAxis :
  - [ ] angleAxis :
  - [ ] radar :
  - [ ] dataZoom :
  - [ ] visualMap :
  - [ ] tooltip :
  - [ ] toolbox :
  - [ ] brush :
  - [ ] geo :
  - [ ] parallel :
  - [ ] parallelAxis :
  - [ ] singleAxis :
  - [ ] timeline :
  - [ ] series :
  - [x] textStyle : `Data.hx`

### Difference

* `action.tooltip.showTip` is separated into an `SHOWTIPXY` and `SHOWTIP`, However, they are actually the same value

## Helpers

* [GeoJSON for Haxe](https://github.com/kevinresol/geojson)