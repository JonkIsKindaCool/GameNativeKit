package bindings.sdl3;

import cpp.ConstPointer;
import cpp.Pointer;
import cpp.Float32;
import cpp.Int32;

@:include("vendor/include/SDL3/SDL.h")
@:buildXml("<include name=\"${haxelib:GameNativeKit}/include_sdl3.xml\"/>")
@:structInit
extern class Raw_SDL_Point {
	@:native("x")
	public var x:Int32;

	@:native("y")
	public var y:Int32;
}

@:forward
abstract SDL_Point(Pointer<Raw_SDL_Point>) from Pointer<Raw_SDL_Point> to Pointer<Raw_SDL_Point> {
	@:from
	public static function fromRaw(n:Raw_SDL_Point):SDL_Point {
		return Pointer.addressOf(n);
	}

	@:to
	public function toConstPointer():ConstPointer<Raw_SDL_Point> {
		return ConstPointer.fromPointer(this);
	}

	@:to
	public function toRaw():Raw_SDL_Point {
		return this.ref;
	}
}

@:include("vendor/include/SDL3/SDL.h")
@:buildXml("<include name=\"${haxelib:GameNativeKit}/include_sdl3.xml\"/>")
@:structInit
extern class Raw_SDL_FPoint {
	@:native("x")
	public var x:Float32;

	@:native("y")
	public var y:Float32;
}

@:forward
abstract SDL_FPoint(Pointer<Raw_SDL_FPoint>) from Pointer<Raw_SDL_FPoint> to Pointer<Raw_SDL_FPoint> {
	@:from
	public static function fromRaw(n:Raw_SDL_FPoint):SDL_FPoint {
		return Pointer.addressOf(n);
	}

	@:to
	public function toConstPointer():ConstPointer<Raw_SDL_FPoint> {
		return ConstPointer.fromPointer(this);
	}

	@:to
	public function toRaw():Raw_SDL_FPoint {
		return this.ref;
	}
}

@:include("vendor/include/SDL3/SDL.h")
@:buildXml("<include name=\"${haxelib:GameNativeKit}/include_sdl3.xml\"/>")
@:structInit
extern class Raw_SDL_Rect {
	@:native("x")
	public var x:Int32;

	@:native("y")
	public var y:Int32;

	@:native("w")
	public var w:Int32;

	@:native("h")
	public var h:Int32;
}

@:forward
abstract SDL_Rect(Pointer<Raw_SDL_Rect>) from Pointer<Raw_SDL_Rect> to Pointer<Raw_SDL_Rect> {
	@:from
	public static function fromRaw(n:Raw_SDL_Rect):SDL_Rect {
		return Pointer.addressOf(n);
	}

	@:to
	public function toConstPointer():ConstPointer<Raw_SDL_FPoint> {
		return ConstPointer.fromPointer(this);
	}

	@:to
	public function toRaw():Raw_SDL_Rect {
		return this.ref;
	}
}

@:include("vendor/include/SDL3/SDL.h")
@:buildXml("<include name=\"${haxelib:GameNativeKit}/include_sdl3.xml\"/>")
@:structInit
extern class Raw_SDL_FRect {
	@:native("x")
	public var x:Float32;

	@:native("y")
	public var y:Float32;

	@:native("w")
	public var w:Float32;

	@:native("h")
	public var h:Float32;
}

@:forward
abstract SDL_FRect(Pointer<Raw_SDL_FRect>) from Pointer<Raw_SDL_FRect> to Pointer<Raw_SDL_FRect> {
	@:from
	public static function fromRaw(n:Raw_SDL_FRect):SDL_FRect {
		return Pointer.addressOf(n);
	}

	@:to
	public function toConstPointer():ConstPointer<Raw_SDL_FPoint> {
		return ConstPointer.fromPointer(this);
	}

	@:to
	public function toRaw():Raw_SDL_FRect {
		return this.ref;
	}
}

@:include("vendor/include/SDL3/SDL.h")
@:buildXml("<include name=\"${haxelib:GameNativeKit}/include_sdl3.xml\"/>")
class SDL_RectUtils {
	@:native("SDL_RectToFRect")
	public static function rectToFRect(rect:ConstPointer<Raw_SDL_Rect>, frect:SDL_FRect):Void;

	@:native("SDL_PointInRect")
	public static function pointInRect(p:ConstPointer<Raw_SDL_Point>, r:ConstPointer<Raw_SDL_Rect>):Bool;

	@:native("SDL_RectEmpty")
	public static function rectEmpty(r:ConstPointer<Raw_SDL_Rect>):Bool;

	@:native("SDL_RectsEqual")
	public static function rectsEqual(a:ConstPointer<Raw_SDL_Rect>, b:ConstPointer<Raw_SDL_Rect>):Bool;

	@:native("SDL_HasRectIntersection")
	public static function hasRectIntersection(A:ConstPointer<Raw_SDL_Rect>, B:ConstPointer<Raw_SDL_Rect>):Bool;

	@:native("SDL_GetRectIntersection")
	public static function getRectIntersection(A:ConstPointer<Raw_SDL_Rect>, B:ConstPointer<Raw_SDL_Rect>, result:SDL_Rect):Bool;

	@:native("SDL_GetRectUnion")
	public static function getRectUnion(A:ConstPointer<Raw_SDL_Rect>, B:ConstPointer<Raw_SDL_Rect>, result:SDL_Rect):Bool;

	@:native("SDL_GetRectEnclosingPoints")
	public static function getRectEnclosingPoints(points:ConstPointer<Raw_SDL_Point>, count:Int, clip:ConstPointer<Raw_SDL_Rect>, result:SDL_Rect):Bool;

	@:native("SDL_GetRectAndLineIntersection")
	public static function getRectAndLineIntersection(rect:ConstPointer<Raw_SDL_Rect>, X1:Pointer<Int32>, Y1:Pointer<Int32>, X2:Pointer<Int32>,
		Y2:Pointer<Int32>):Bool;

	@:native("SDL_PointInRectFloat")
	public static function pointInRectFloat(p:ConstPointer<Raw_SDL_FPoint>, r:ConstPointer<Raw_SDL_FRect>):Bool;

	@:native("SDL_RectEmptyFloat")
	public static function rectEmptyFloat(r:ConstPointer<Raw_SDL_FRect>):Bool;

	@:native("SDL_RectsEqualEpsilon")
	public static function rectsEqualEpsilon(a:ConstPointer<Raw_SDL_FRect>, b:ConstPointer<Raw_SDL_FRect>, epsilon:Float32):Bool;

	@:native("SDL_RectsEqualFloat")
	public static function rectsEqualFloat(a:ConstPointer<Raw_SDL_FRect>, b:ConstPointer<Raw_SDL_FRect>):Bool;

	@:native("SDL_HasRectIntersectionFloat")
	public static function hasRectIntersectionFloat(A:ConstPointer<Raw_SDL_FRect>, B:ConstPointer<Raw_SDL_FRect>):Bool;

	@:native("SDL_GetRectIntersectionFloat")
	public static function getRectIntersectionFloat(A:ConstPointer<Raw_SDL_FRect>, B:ConstPointer<Raw_SDL_FRect>, result:SDL_FRect):Bool;

	@:native("SDL_GetRectUnionFloat")
	public static function getRectUnionFloat(A:ConstPointer<Raw_SDL_FRect>, B:ConstPointer<Raw_SDL_FRect>, result:SDL_FRect):Bool;

	@:native("SDL_GetRectEnclosingPointsFloat")
	public static function getRectEnclosingPointsFloat(points:ConstPointer<Raw_SDL_FPoint>, count:Int, clip:ConstPointer<Raw_SDL_FRect>, result:SDL_FRect):Bool;

	@:native("SDL_GetRectAndLineIntersectionFloat")
	public static function getRectAndLineIntersectionFloat(rect:ConstPointer<Raw_SDL_FRect>, X1:Pointer<Float32>, Y1:Pointer<Float32>, X2:Pointer<Float32>,
		Y2:Pointer<Float32>):Bool;
}
