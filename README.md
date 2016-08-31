Externs of [echarts v3.x](https://github.com/ecomfe/echarts) for Haxe
-----

**WIP（未完成）**

## Usage


haxe.extern.EitherType :

```haxe
.on(ActionEvent.DATARANGESELECTED, function(param) {
	var range: Array<Int> = cast param.selected;
	//trace((param.selected: Array<Int>).length);
	//trace((param.selected: Dynamic).some);
});
```

## Helpers

* [GeoJSON for Haxe](https://github.com/kevinresol/geojson)

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


## Difference

* `action.tooltip.showTip` is separated into an `SHOWTIPXY` and `SHOWTIP`, However, they are actually the same value