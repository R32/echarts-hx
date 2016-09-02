package js.echarts;


@:native("echarts.color")
extern class Color {
	/**
	 e.g: parse("#333") => [51, 51, 51, 1]
	- EColor
	- #666666, #333
	- rgba(255,255,255,1.0), rgb()
	- hsla(360, 1.0, 1.0, 1.0), hsl()
	*/
	static function parse(colorStr:String):Array<Float>;

	/**
	 e.g: toHex("#333") => "333333"
	*/
	static function toHex(colorStr:String):String;

	/**
	 e.g:

	 ```js
	 lift("#333", 0.5) => "rgba(153,153,153,1)" --- ((0xff - 0x33) * 0.5) + 0x33

	 lift("#333", -0.5) => "rgba(76,76,76,1)" --- 0x33 * (1 + 0.5)
	 ```
	*/
	static function lift(colorStr:String, level:Float):String;

	/**
	type = "rgba|hsla|hsva|rgb|hsl|hsv"
	*/
	static function stringify(color:Array<Float>, type:String):String;

	/**
	 Replace color channels by hsl if it's not null

	 h(0 ~ 360), s(0 ~ 1.0), l(0 ~ 1.0)

	 return "rgba(...)"
	*/
	static function modifyHSL(colorStr:String, ?h:Float, ?s:Float, ?l:Float): String;

	static function modifyAlpha(colorStr:String, alpha:Float): String;

	// TODO: fastMapToColor, mapToColor are not available.
}

/**
http://math.ubbcluj.ro/~sberinde/wingraph/colors.gif
*/
@:enum abstract EColor(String) to String {
	var TRANSPARENT = "transparent";
	var ALICEBLUE = "aliceblue";
	var ANTIQUEWHITE = "antiquewhite";
	var AQUA = "aqua";
	var AQUAMARINE = "aquamarine";
	var AZURE = "azure";
	var BEIGE = "beige";
	var BISQUE = "bisque";
	var BLACK = "black";
	var BLANCHEDALMOND = "blanchedalmond";
	var BLUE = "blue";
	var BLUEVIOLET = "blueviolet";
	var BROWN = "brown";
	var BURLYWOOD = "burlywood";
	var CADETBLUE = "cadetblue";
	var CHARTREUSE = "chartreuse";
	var CHOCOLATE = "chocolate";
	var CORAL = "coral";
	var CORNFLOWERBLUE = "cornflowerblue";
	var CORNSILK = "cornsilk";
	var CRIMSON = "crimson";
	var CYAN = "cyan";
	var DARKBLUE = "darkblue";
	var DARKCYAN = "darkcyan";
	var DARKGOLDENROD = "darkgoldenrod";
	var DARKGRAY = "darkgray";
	var DARKGREEN = "darkgreen";
	var DARKGREY = "darkgrey";
	var DARKKHAKI = "darkkhaki";
	var DARKMAGENTA = "darkmagenta";
	var DARKOLIVEGREEN = "darkolivegreen";
	var DARKORANGE = "darkorange";
	var DARKORCHID = "darkorchid";
	var DARKRED = "darkred";
	var DARKSALMON = "darksalmon";
	var DARKSEAGREEN = "darkseagreen";
	var DARKSLATEBLUE = "darkslateblue";
	var DARKSLATEGRAY = "darkslategray";
	var DARKSLATEGREY = "darkslategrey";
	var DARKTURQUOISE = "darkturquoise";
	var DARKVIOLET = "darkviolet";
	var DEEPPINK = "deeppink";
	var DEEPSKYBLUE = "deepskyblue";
	var DIMGRAY = "dimgray";
	var DIMGREY = "dimgrey";
	var DODGERBLUE = "dodgerblue";
	var FIREBRICK = "firebrick";
	var FLORALWHITE = "floralwhite";
	var FORESTGREEN = "forestgreen";
	var FUCHSIA = "fuchsia";
	var GAINSBORO = "gainsboro";
	var GHOSTWHITE = "ghostwhite";
	var GOLD = "gold";
	var GOLDENROD = "goldenrod";
	var GRAY = "gray";
	var GREEN = "green";
	var GREENYELLOW = "greenyellow";
	var GREY = "grey";
	var HONEYDEW = "honeydew";
	var HOTPINK = "hotpink";
	var INDIANRED = "indianred";
	var INDIGO = "indigo";
	var IVORY = "ivory";
	var KHAKI = "khaki";
	var LAVENDER = "lavender";
	var LAVENDERBLUSH = "lavenderblush";
	var LAWNGREEN = "lawngreen";
	var LEMONCHIFFON = "lemonchiffon";
	var LIGHTBLUE = "lightblue";
	var LIGHTCORAL = "lightcoral";
	var LIGHTCYAN = "lightcyan";
	var LIGHTGOLDENRODYELLOW = "lightgoldenrodyellow";
	var LIGHTGRAY = "lightgray";
	var LIGHTGREEN = "lightgreen";
	var LIGHTGREY = "lightgrey";
	var LIGHTPINK = "lightpink";
	var LIGHTSALMON = "lightsalmon";
	var LIGHTSEAGREEN = "lightseagreen";
	var LIGHTSKYBLUE = "lightskyblue";
	var LIGHTSLATEGRAY = "lightslategray";
	var LIGHTSLATEGREY = "lightslategrey";
	var LIGHTSTEELBLUE = "lightsteelblue";
	var LIGHTYELLOW = "lightyellow";
	var LIME = "lime";
	var LIMEGREEN = "limegreen";
	var LINEN = "linen";
	var MAGENTA = "magenta";
	var MAROON = "maroon";
	var MEDIUMAQUAMARINE = "mediumaquamarine";
	var MEDIUMBLUE = "mediumblue";
	var MEDIUMORCHID = "mediumorchid";
	var MEDIUMPURPLE = "mediumpurple";
	var MEDIUMSEAGREEN = "mediumseagreen";
	var MEDIUMSLATEBLUE = "mediumslateblue";
	var MEDIUMSPRINGGREEN = "mediumspringgreen";
	var MEDIUMTURQUOISE = "mediumturquoise";
	var MEDIUMVIOLETRED = "mediumvioletred";
	var MIDNIGHTBLUE = "midnightblue";
	var MINTCREAM = "mintcream";
	var MISTYROSE = "mistyrose";
	var MOCCASIN = "moccasin";
	var NAVAJOWHITE = "navajowhite";
	var NAVY = "navy";
	var OLDLACE = "oldlace";
	var OLIVE = "olive";
	var OLIVEDRAB = "olivedrab";
	var ORANGE = "orange";
	var ORANGERED = "orangered";
	var ORCHID = "orchid";
	var PALEGOLDENROD = "palegoldenrod";
	var PALEGREEN = "palegreen";
	var PALETURQUOISE = "paleturquoise";
	var PALEVIOLETRED = "palevioletred";
	var PAPAYAWHIP = "papayawhip";
	var PEACHPUFF = "peachpuff";
	var PERU = "peru";
	var PINK = "pink";
	var PLUM = "plum";
	var POWDERBLUE = "powderblue";
	var PURPLE = "purple";
	var RED = "red";
	var ROSYBROWN = "rosybrown";
	var ROYALBLUE = "royalblue";
	var SADDLEBROWN = "saddlebrown";
	var SALMON = "salmon";
	var SANDYBROWN = "sandybrown";
	var SEAGREEN = "seagreen";
	var SEASHELL = "seashell";
	var SIENNA = "sienna";
	var SILVER = "silver";
	var SKYBLUE = "skyblue";
	var SLATEBLUE = "slateblue";
	var SLATEGRAY = "slategray";
	var SLATEGREY = "slategrey";
	var SNOW = "snow";
	var SPRINGGREEN = "springgreen";
	var STEELBLUE = "steelblue";
	var TAN = "tan";
	var TEAL = "teal";
	var THISTLE = "thistle";
	var TOMATO = "tomato";
	var TURQUOISE = "turquoise";
	var VIOLET = "violet";
	var WHEAT = "wheat";
	var WHITE = "white";
	var WHITESMOKE = "whitesmoke";
	var YELLOW = "yellow";
	var YELLOWGREEN = "yellowgreen";
}

