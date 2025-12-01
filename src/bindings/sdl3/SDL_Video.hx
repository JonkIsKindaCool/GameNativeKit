package bindings.sdl3;

import bindings.glfw.GLFW.Raw_GLFW_Window;
import cpp.Pointer;
import cpp.UInt32;

typedef SDL_DisplayID = UInt32;
typedef SDL_WindowID = UInt32;

@:native("SDL_Window")
@:include("vendor/include/SDL3/SDL.h")
extern class Raw_SDLWindow {}

typedef SDLWindow = Pointer<Raw_GLFW_Window>;

@:include("vendor/include/SDL3/SDL.h")
@:buildXml("<include name=\"${haxelib:GameNativeKit}/include_sdl3.xml\"/>")
class SDL_Video {
	@:native("SDL_PROP_GLOBAL_VIDEO_WAYLAND_WL_DISPLAY_POINTER")
	public static var PROP_GLOBAL_VIDEO_WAYLAND_WL_DISPLAY_POINTER:String;
}

@:include("vendor/include/SDL3/SDL.h")
@:buildXml("<include name=\"${haxelib:GameNativeKit}/include_sdl3.xml\"/>")
extern enum SDL_SystemTheme {
	@:native("SDL_SYSTEM_THEME_UNKNOWN") UNKNOWN;
	@:native("SDL_SYSTEM_THEME_LIGHT") LIGHT;
	@:native("SDL_SYSTEM_THEME_DARK") DARK;
}

@:include("vendor/include/SDL3/SDL.h")
@:buildXml("<include name=\"${haxelib:GameNativeKit}/include_sdl3.xml\"/>")
extern enum SDL_DisplayModeData {}
