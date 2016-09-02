package js.echarts.options;

import haxe.extern.EitherType;
import js.echarts.options.Data;
/**
* ...
* @author
*/
typedef Geo = {
	/**
	 是否显示, `default: true`
	*/
	@:optional var show: Bool;

	/**
	 地图类型。

	 ECharts 3 中因为地图精度的提高，不再内置地图数据增大代码体积，
	 你可以在[地图下载界面下载](http://ecomfe.github.io/echarts-builder-web/map3.html)
	 到需要的地图文件引入并注册到 ECharts 中。

	 JavaScript 引入示例:

	 ```js
	 <script src="echarts.js"></script>
	 <script src="map/js/china.js"></script>
	 <script>
		var chart = echarts.init(document.getElementById('main'));
		chart.setOption({
			series: [{
				type: 'map',
				map: 'china'
			}]
		});
	 </script>
	 ```

	 JSON 引入示例:

	 ```js
	 $.get('map/json/china.json', function (chinaJson) {
		echarts.registerMap('china', chinaJson);
	 	var chart = echarts.init(document.getElementById('main'));
		chart.setOption({
				series: [{
				type: 'map',
				map: 'china'
			}]
		});
	 });
	 ```

	 除了上述数据，你也可以通过其它手段获取地图的 geoJSON 数据注册到 ECharts 中
	*/
	@:optional var map: String;

	/**
	 是否开启鼠标缩放和平移漫游。默认不开启。如果只想要开启缩放或者平移，
	 可以设置成 'scale' 或者 'move'。设置成 true 为都开启

	 `default: false`
	*/
	@:optional var roam: Bool;

	/**
	 当前视角的中心点，用经纬度表示.例: `center: [115.97, 29.71]`
	*/
	@:optional var center: Array<Float>;

	/**
	 当前视角的缩放比例。

	 `default: 1`
	*/
	@:optional var zoom: Float;

	/**
	 滚轮缩放的极限控制，通过min, max最小和最大的缩放值，默认的缩放为1。
	*/
	@:optional var scaleLimit: Limit;

	/**
	 自定义地区的名称映射，如：`{"China": "中国"}`
	*/
	@:optional var nameMap: Dynamic<String>;

	/**
	 选中模式，表示是否支持多个选中，
	 默认关闭，支持布尔值和字符串，字符串取值可选 'single'，'multiple'。
	*/
	@:optional var selectedMode: EitherType<Bool, SelectedMode>;

	/**
	 图形上的文本标签，可用于说明图形的一些数据信息，比如值，名称等，
	 label选项在 ECharts 2.x 中放置于 itemStyle.normal 下，在 ECharts 3 中
	 为了让整个配置项结构更扁平合理，label 被拿出来跟 itemStyle 平级，
	 并且跟 itemStyle 一样拥有 normal, emphasis 两个状态。
	*/
	@:optional var label: {
		?normal: Label,
		?emphasis: Label,
	};

	/**
	 地图区域的多边形 图形样式，有 normal 和 emphasis 两个状态。
	 normal 是图形在默认状态下的样式；emphasis 是图形在高亮状态下的样式，
	 比如在鼠标悬浮或者图例联动高亮时。
	*/
	@:optional var itemStyle: {
		?normal: IconStyle ,
		?emphasis: IconStyle
	};

	/**
	 zlevel 值。`default: 0`
	*/
	@:optional var zlevel: Float;

	/**
	 组件的 z 值。`default: 2`
	*/
	@:optional var z: Float;

	/**
	 距离容器左侧的距离。

	 `default: auto`
	*/
	@:optional var left: Either3<Float, TextAlign, String>;

	/**
	 `default: "auto"`
	*/
	@:optional var top: Either3<Float, TextVAlign, String>;

	/**
	 `default: "auto"`
	*/
	@:optional var right: EitherType<Float, String>;

	/**
	 `default: auto`
	*/
	@:optional var bottom: EitherType<Float, String>;

	/**
	 layoutCenter 和 layoutSize 提供了除了 left/right/top/bottom/width/height 之外的布局手段。

	 在使用 left/right/top/bottom/width/height 的时候，可能很难在保持地图高宽比
	 的情况下把地图放在某个盒形区域的正中间，并且保证不超出盒形的范围。此时可以
	 通过 layoutCenter 属性定义地图中心在屏幕中的位置，layoutSize 定义地图的大小。如下示例

	 ```js
	 layoutCenter: ['30%', '30%'],
	 // 如果宽高比大于 1 则宽度为 100，如果小于 1 则高度为 100，保证了不超过 100x100 的区域
	 layoutSize: 100
	 ```

	 `default: null`
	*/
	@:optional var layoutCenter: Array<String>;

	/**
	 地图的大小，见 layoutCenter。支持相对于屏幕宽高的百分比或者绝对的像素大小。
	*/
	@:optional var layoutSize: EitherType<Float, String>;

	/**
	 地图指定区域的具体描述，可以用与自定义部分区域的样式，选择指定的区域。
	*/
	@:optional var regions: Array<Region>;

	/**
	 图形是否不响应和触发鼠标事件，默认为 false，即响应和触发鼠标事件。

	 `default: false`
	*/
	@:optional var silent: Bool;
}

typedef Region = {

	var name: String;

	@:optional var selected: Bool; // false

	@:optional var itemStyle: {
		?normal: {
			> IconStyle,
			areaColor: String
		} ,
		?emphasis: {
			> IconStyle,
			areaColor: String
		}
	};

	@:optional var label: {
		?normal: Label,
		?emphasis: Label
	};
}