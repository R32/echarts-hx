package js;

import haxe.Constraints.Function;
import haxe.extern.EitherType;
import haxe.extern.Rest;
import js.html.Element;
import js.echarts.SetOptions;

typedef GeoJson = {}

typedef RegdMap = {
	geoJson: GeoJson,
	specialAreas: {}
}

@:native("echarts")
extern class Echarts{

	/**
	图表的分组，用于联动
	*/
	var group:EitherType<String, Float>;

	/**
	设置图表实例的配置项以及数据，万能接口，所有参数和数据的修改都可以通过 setOption 完成，
	ECharts 会合并新的参数和数据，然后刷新图表。如果开启动画的话，
	ECharts 找到两组数据之间的差异然后通过合适的动画去表现数据的变化
	*/
	function setOption(option: SetOptions, ?notMerge:Bool, ?lazyUpdate:Bool):Void;


	/**
	 获取 ECharts 实例容器的宽度。
	*/
	function getWidth():Float;

	/**
	 获取 ECharts 实例容器的高度。
	*/
	function getHeight():Float;


	/**
	 获取 ECharts 实例容器的 dom 节点。
	*/
	function getDom():EitherType<js.html.DivElement, js.html.CanvasElement>;


	/**
	 获取当前实例中维护的option对象，返回的option对象中包含了用户多次 setOption 合并
	 得到的配置项和数据，也记录了用户交互的状态，例如图例的开关，数据区域缩放选择的范围等等。
	 所以从这份 option 可以恢复或者得到一个新的一模一样的实例。

	 注意：返回的 option 每个组件的属性值都统一是一个数组，不管 setOption 传进来的时候
	 是单个组件的对象还是多个组件的数组。如下形式：

	 ```js
	 {
		title: [{...}],
		legend: [{...}],
		grid: [{...}]
	 }
	 ```

	 另外不推荐下面这种写法：

	 ```js
	 var option = myChart.getOption();
	 option.visualMap[0].inRange.color = ...;
	 myChart.setOption(option);
	 ```

	 因此我们更推荐通过setOption去修改部分配置。

	 ```js
	 myChart.setOption({
		visualMap: {
			inRange: {
				color: ...
			}
		}
	 })
	 ```
	*/
	function getOption():js.echarts.GetOptions;

	/**
	 改变图表尺寸，在容器大小发生改变时需要手动调用。

	 **Tip:** 有时候图表会放在多个标签页里，那些初始隐藏的标签在
	 初始化图表的时候应为获取不到容器的实际高宽，可能会绘制失败，
	 因此在切换到该标签页时需要手动调用 resize 方法获取正确的高宽并且刷新画布。
	*/
	function resize():Void;

	/**
	 触发图表行为，例如图例开关 `legendToggleSelect`, 数据区域缩放 dataZoom，
	 显示提示框 showTip 等等，更多见 action 和 events 的文档。

	 `payload` 参数可以通过 batch 属性同时触发多个行为


	 ```js
	 myChart.dispatchAction({
		type: 'dataZoom',
		start: 20,
		end: 30
	 });
	 // 可以通过 batch 参数批量分发多个 action
	 myChart.dispatchAction({
		type: 'dataZoom',
		batch: [{
		// 第一个 dataZoom 组件
			start: 20,
			end: 30
		} , {
			// 第二个 dataZoom 组件
			dataZoomIndex: 1,
			start: 10,
			end: 20
		}]
	 })
	 ```
	*/
	function dispatchAction(payload:js.echarts.Action.ActionBase<Dynamic>):Void;

	/**
	 绑定事件处理函数。

	 ECharts 中的事件有两种，一种是鼠标事件，在鼠标点击某个图形上会触发，
	 还有一种是 调用 dispatchAction 后触发的事件。每个 action 都会有对应的事件，
	 具体见 action 和 events 的文档。

	 如果事件是外部 dispatchAction 后触发，并且 action 中有 batch 属性触发批量的行为，
	 则相应的响应事件参数里也会把属性都放在 batch 属性中。
	*/
	function on<T:Function>(eventName: js.echarts.Event<T>, handler: T, ?context: {}):Void;

	/**
	 如不指定 handler 参数，则解绑所有该类型的事件函数。
	*/
	function off<T:Function>(eventName: js.echarts.Event<T>, ?handler: T):Void;

	/**
	 显示加载动画效果。可以在加载数据前手动调用改接口显示加载动画，
	 在数据加载完成后调用 hideLoading 隐藏加载动画。

	 `type` 目前只有一种 "default"

	 `opts` 加载动画配置项，跟type有关，下面是默认配置项

	 ```js
	 default: {
		text: 'loading',
		color: '#c23531',
		textColor: '#000',
		maskColor: 'rgba(255, 255, 255, 0.8)',
		zlevel: 0
	 }
	 ```
	*/
	function showLoading(?type: String, ?opts: {}):Void;

	/**
	 隐藏动画加载效果。
	*/
	function hideLoading():Void;

	/**
	 导出图表图片，返回一个 base64 的 URL，可用于 Image 的 src。

	 ```js
	 var img = new Image();

	 img.src = myChart.getDataURL({
		pixelRatio: 2,
		backgroundColor: '#fff'
	 });
	 ```
	*/
	function getDataURL(opts: {
		?type: String,           // 导出的格式，可选为 png, jpeg
		?pixelRatio: Float,      // 导出的图片分辨率比例，默认为 1。
		?backgroundColor: String // 导出的图片背景色，默认使用 option 里的 backgroundColor
	}):String;


	/**
	 导出联动的图表图片，返回一个 base64 的 url，可用于 Image 的 src。
	 导出图片中每个图表的相对位置跟容器的相对位置有关。
	*/
	function getConnectedDataURL(opts: {
		?type: String,
		?pixelRatio: Float,
		?backgroundColor: String
	}): String;


	/**
	 清空当前实例，会移除实例中所有的组件和图表。清空后调用 getOption 方法返回一个{}空对象。
	*/
	function clear():Void;

	/**
	 当前实例是否已经被释放。
	*/
	function isDisposed():Bool;

	/**
	 销毁实例，销毁后实例无法再被使用。
	*/
	function dispose():Void;



	/////////////////// STATIC ///////////////////



	/**
	 创建一个 ECharts 实例，不能再单个容器上初始化多个 ECharts 实例
	*/
	static function init(
		dom: Element, // can only be DivElement or CanvasElement

		?theme:EitherType<String, {}>,

		?opts: {
			?devicePixelRatio: Float,
			?renderer:String
		}
	):Echarts;

	@:overload(function(group: Array<{group:String}>):Void{})
	static function connect(group: String):Void;

	/**
	 解除图表实例的联动，如果只需要移除单个实例，可以将通过将该图表实例 group 设为空
	*/
	static function disConnect(group: String):Void;

	/**
	 销毁实例，实例销毁后无法再被使用。
	*/
	static function dispose(target: EitherType<Echarts, Element>):Void;

	/**
	 获取 dom 容器上的实例
	*/
	static function getInstanceByDom(target: Element):Echarts;

	/**
	 @:ec_inst: dom.getAttribute("_echarts_instance_")
	*/
	static function getInstanceById(ec_inst: String):Echarts;

	/**
	 注册可用的地图，必须在包括 geo 组件或者 map 图表类型的时候才能使用。
	*/
	static function registerMap(mapName: String, geoJson: GeoJson, ?specialAreas:{}):Void;

	/**
	 获取已注册的地图，返回的对象类型如下
	*/
	static function getMap(mapName: String):RegdMap;

	/**
	 注册主题，用于初始化(init)的时候指定。
	*/
	static function registerTheme(themeName: String, theme:{}):Void;
}