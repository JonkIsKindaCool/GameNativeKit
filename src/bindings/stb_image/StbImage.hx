package bindings.stb_image;

import cpp.ConstCharStar;
import cpp.Pointer;
import cpp.UInt8;
import cpp.Float32;
import cpp.Int32;

@:include("vendor/include/STB_IMAGE/stb_image.h")
@:buildXml("<include name=\"${haxelib:GameNativeKit}/include_stb_image.xml\"/>")
extern class StbImage {
	@:native("stbi_load")
	public static function load(filename:ConstCharStar, x:Pointer<Int32>, y:Pointer<Int32>, channels_in_file:Pointer<Int32>,
		desired_channels:Int):Pointer<UInt8>;

	@:native("stbi_load_from_memory")
	public static function loadFromMemory(buffer:Pointer<UInt8>, len:Int, x:Pointer<Int32>, y:Pointer<Int32>, channels_in_file:Pointer<Int32>,
		desired_channels:Int):Pointer<UInt8>;

	@:native("stbi_loadf")
	public static function loadf(filename:ConstCharStar, x:Pointer<Int32>, y:Pointer<Int32>, channels_in_file:Pointer<Int32>,
		desired_channels:Int):Pointer<Float32>;

	@:native("stbi_loadf_from_memory")
	public static function loadfFromMemory(buffer:Pointer<UInt8>, len:Int, x:Pointer<Int32>, y:Pointer<Int32>, channels_in_file:Pointer<Int32>,
		desired_channels:Int):Pointer<Float32>;

	@:native("stbi_image_free")
	public static function free(ptr:Pointer<cpp.Void>):Void;

	@:native("stbi_info")
	public static function info(filename:ConstCharStar, x:Pointer<Int32>, y:Pointer<Int32>, channels:Pointer<Int32>):Int;

	@:native("stbi_info_from_memory")
	public static function infoFromMemory(buffer:Pointer<UInt8>, len:Int, x:Pointer<Int32>, y:Pointer<Int32>, channels:Pointer<Int32>):Int;

	@:native("stbi_is_hdr")
	public static function isHDR(filename:ConstCharStar):Int;

	@:native("stbi_is_hdr_from_memory")
	public static function isHDRFromMemory(buffer:Pointer<UInt8>, len:Int):Int;

	@:native("stbi_set_flip_vertically_on_load")
	public static function setFlipVertically(flag:Int):Void;
}
