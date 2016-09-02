package js.echarts.options;

import haxe.extern.EitherType;
import js.echarts.options.Data;

/**
极坐标系，可以用于散点图和折线图。每个极坐标系拥有一个角度轴和一个半径轴。
*/
typedef Polar = {
	/**
	 所有图形的 zlevel 值。大的 Canvas 会放在 zlevel 小的 Canvas 的上面。

	 zlevel用于 Canvas 分层，不同zlevel值的图形会放置在不同的 Canvas 中，
	 Canvas 分层是一种常见的优化手段。我们可以把一些图形变化频繁（例如有动画）
	 的组件设置成一个单独的 zlevel。需要注意的是过多的 Canvas 会引起内存开销的增大，
	 在手机端上需要谨慎使用以防崩溃。

	 `default: 0`
	*/
	@:optional var zlevel: Int;

	/**
	 组件的所有图形的 z 值。控制图形的前后顺序。z 值小的图形会被 z 值大的图形覆盖。

	 z 相比 zlevel 优先级更低，而且不会创建新的 Canvas。

	 `default: 2`
	*/
	@:optional var z: Int;


	/**
	 极坐标系的中心（圆心）坐标，数组的第一项是横坐标，第二项是纵坐标。

	 支持设置成百分比，设置成百分比时第一项是相对于容器宽度，第二项是相对于容器高度。

	`default: ["50%", "50%"]`
	*/
	@:optional var center: Array<EitherType<Int, String>>;

	/**
	半径，TODO: 文档是否是错的???
	*/
	@:optional var radius: Any;
}