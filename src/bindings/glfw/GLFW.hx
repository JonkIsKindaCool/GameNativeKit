package bindings.glfw;

import bindings.glad.Glad.GladLoadProc;
import cpp.Star;
import cpp.abi.Abi;
import cpp.Function;
import cpp.Callable;
import haxe.Int64;
import cpp.Float64;
import cpp.Float32;
import cpp.RawPointer;
import cpp.ConstCharStar;
import cpp.Char;
import cpp.ConstPointer;
import cpp.SizeT;
import cpp.UInt8;
import cpp.UInt16;
import cpp.UInt32;
import cpp.Pointer;
import cpp.Int32;

@:include("vendor/include/GLFW/glfw3.h")
@:native("GLFWwindow")
@:structAccess
extern class Raw_GLFW_Window {}

typedef GLFW_Window = Pointer<Raw_GLFW_Window>;

@:include("vendor/include/GLFW/glfw3.h")
@:native("GLFWmonitor")
@:structAccess
extern class Raw_GLFW_Monitor {}

typedef GLFW_Monitor = Pointer<Raw_GLFW_Monitor>;

@:include("vendor/include/GLFW/glfw3.h")
@:native("GLFWcursor")
@:structAccess
extern class Raw_GLFW_Cursor {}

typedef GLFW_Cursor = Pointer<Raw_GLFW_Cursor>;

@:include("vendor/include/GLFW/glfw3.h")
@:native("GLFWvidmode")
@:structAccess
extern class Raw_GLFW_Vidmode {
	@:native("width")
	public var width:Int32;
	@:native("height")
	public var height:Int32;
	@:native("redBits")
	public var redBits:Int32;
	@:native("greenBits")
	public var greenBits:Int32;
	@:native("blueBits")
	public var blueBits:Int32;
	@:native("refreshRate")
	public var refreshRate:Int32;
}

typedef GLFW_Vidmode = Pointer<Raw_GLFW_Vidmode>;

@:include("vendor/include/GLFW/glfw3.h")
@:native("GLFWgammaramp")
@:structAccess
extern class Raw_GLFW_Gammaramp {
	@:native("red")
	public var red:Pointer<UInt16>;
	@:native("green")
	public var green:Pointer<UInt16>;
	@:native("blue")
	public var blue:Pointer<UInt16>;
	@:native("size")
	public var size:UInt32;
}

typedef GLFW_Gammaramp = Pointer<Raw_GLFW_Gammaramp>;

@:include("vendor/include/GLFW/glfw3.h")
@:native("GLFWimage")
@:structAccess
extern class Raw_GLFW_Image {
	@:native("width")
	public var width:Int32;
	@:native("height")
	public var height:Int32;
	@:native("pixels")
	public var pixels:Pointer<UInt8>;
}

typedef GLFW_Image = ConstPointer<Raw_GLFW_Image>;

@:include("vendor/include/GLFW/glfw3.h")
@:native("GLFWgamepadstate")
@:structAccess
extern class Raw_GLFW_GamepadState {
	@:native("buttons")
	public var buttons:RawPointer<UInt8>;
	@:native("axes")
	public var axes:RawPointer<Float32>;
}

typedef GLFW_GamepadState = Pointer<Raw_GLFW_GamepadState>;

@:include("vendor/include/GLFW/glfw3.h")
@:native("GLFWallocator")
@:structAccess
extern class Raw_GLFW_Allocator {
	@:native("allocate")
	public var allocate:GLFW_Allocatefun;

	@:native("reallocate")
	public var reallocate:GLFW_Allocatefun;

	@:native("deallocate")
	public var deallocate:GLFW_Allocatefun;

	@:native("user")
	public var user:Pointer<cpp.Void>;
}

typedef GLFW_Allocator = ConstPointer<Raw_GLFW_Allocator>;
typedef GLFW_Allocatefun = (size:SizeT, user:Pointer<cpp.Void>) -> Pointer<cpp.Void>;
typedef GLFW_Errorfun = (error_code:Int32, description:ConstCharStar) -> Void;
typedef GLFW_Windowposfun = (window:GLFW_Window, xPos:Int32, yPos:Int32) -> Void;
typedef GLFW_Windowsizefun = (window:GLFW_Window, width:Int32, height:Int32) -> Void;
typedef GLFW_Windowclosefun = (window:GLFW_Window) -> Void;
typedef GLFW_Windowrefreshfun = (window:GLFW_Window) -> Void;
typedef GLFW_Windowfocusfun = (window:GLFW_Window, focused:Int32) -> Void;
typedef GLFW_Windowiconifyfun = (window:GLFW_Window, iconified:Int32) -> Void;
typedef GLFW_Windowmaximizefun = (window:GLFW_Window, maximized:Int32) -> Void;
typedef GLFW_Framebuffersizefun = (window:GLFW_Window, width:Int32, height:Int32) -> Void;
typedef GLFW_Windowcontentscalefun = (window:GLFW_Window, xScale:Float32, yScale:Float32) -> Void;
typedef GLFW_Mousebuttonfun = (window:GLFW_Window, button:Int32, action:Int32, mods:Int32) -> Void;
typedef GLFW_Cursorposfun = (window:GLFW_Window, xPos:Float64, yPos:Float64) -> Void;
typedef GLFW_Cursorenterfun = (window:GLFW_Window, entered:Int32) -> Void;
typedef GLFW_Scrollfun = (window:GLFW_Window, xOffset:Float64, yOffset:Float64) -> Void;

@:native("GLFWkeyfun")
typedef GLFW_Keyfun = (window:GLFW_Window, key:Int32, scancode:Int32, action:Int32, mods:Int32) -> Void;

typedef GLFW_Charfun = (window:GLFW_Window, codepoint:UInt32) -> Void;
typedef GLFW_Charmodsfun = (window:GLFW_Window, codepoint:UInt32, mods:Int32) -> Void;
typedef GLFW_Dropfun = (window:GLFW_Window, path_count:Int32, paths:ConstCharStar) -> Void;
typedef GLFW_Monitorfun = (monitor:GLFW_Monitor, event:Int32) -> Void;
typedef GLFW_Joystickfun = (jid:Int32, event:Int32) -> Void;

@:keep
class GLFW_ErrorHandler {
	static var cb:GLFW_Errorfun;

	static public function nativeCallack(error:Int, message:cpp.ConstCharStar) {
		if (cb != null)
			cb(error, message);
	}

	public static function setCallback(func:GLFW_Errorfun) {
		cb = func;
	}
}

@:keep
class GLFW_JoystickHandler {
	static var cb:GLFW_Joystickfun;

	static public function nativeCallack(jid:Int32, event:Int32) {
		if (cb != null)
			cb(jid, event);
	}

	public static function setCallback(func:GLFW_Joystickfun) {
		cb = func;
	}
}

@:keep
private class GLFW_MonitorHandler {
	static var cb:GLFW_Monitorfun;

	static public function nativeCallack(monitor:GLFW_Monitor, event:Int32) {
		if (cb != null)
			cb(monitor, event);
	}

	public static function setCallback(func:GLFW_Monitorfun) {
		cb = func;
	}
}

@:keep
private class GLFW_WindowPosHandler {
	static var listeners = new Map<String, GLFW_Windowposfun>();

	public static function nativeCallback(win:Star<Raw_GLFW_Window>, x:Int32, y:Int32):Void {
		var ptr = win + "";
		if (listeners.exists(ptr))
			listeners[ptr](Pointer.fromStar(win), x, y);
	}

	public static function setCallback(win:Star<Raw_GLFW_Window>, cb:GLFW_Windowposfun):Void {
		listeners[win + ""] = cb;
	}
}

@:keep
private class GLFW_WindowSizeHandler {
	static var listeners = new Map<String, GLFW_Windowsizefun>();

	public static function nativeCallback(win:Star<Raw_GLFW_Window>, w:Int32, h:Int32):Void {
		var ptr = win + "";
		if (listeners.exists(ptr))
			listeners[ptr](Pointer.fromStar(win), w, h);
	}

	public static function setCallback(win:Star<Raw_GLFW_Window>, cb:GLFW_Windowsizefun):Void {
		listeners[win + ""] = cb;
	}
}

@:keep
private class GLFW_WindowCloseHandler {
	static var listeners = new Map<String, GLFW_Windowclosefun>();

	public static function nativeCallback(win:Star<Raw_GLFW_Window>):Void {
		var ptr = win + "";
		if (listeners.exists(ptr))
			listeners[ptr](Pointer.fromStar(win));
	}

	public static function setCallback(win:Star<Raw_GLFW_Window>, cb:GLFW_Windowclosefun):Void {
		listeners[win + ""] = cb;
	}
}

@:keep
private class GLFW_WindowRefreshHandler {
	static var listeners = new Map<String, GLFW_Windowrefreshfun>();

	public static function nativeCallback(win:Star<Raw_GLFW_Window>):Void {
		var ptr = win + "";
		if (listeners.exists(ptr))
			listeners[ptr](Pointer.fromStar(win));
	}

	public static function setCallback(win:Star<Raw_GLFW_Window>, cb:GLFW_Windowrefreshfun):Void {
		listeners[win + ""] = cb;
	}
}

@:keep
private class GLFW_WindowFocusHandler {
	static var listeners = new Map<String, GLFW_Windowfocusfun>();

	public static function nativeCallback(win:Star<Raw_GLFW_Window>, focused:Int32):Void {
		var ptr = win + "";
		if (listeners.exists(ptr))
			listeners[ptr](Pointer.fromStar(win), focused);
	}

	public static function setCallback(win:Star<Raw_GLFW_Window>, cb:GLFW_Windowfocusfun):Void {
		listeners[win + ""] = cb;
	}
}

@:keep
private class GLFW_WindowIconifyHandler {
	static var listeners = new Map<String, GLFW_Windowiconifyfun>();

	public static function nativeCallback(win:Star<Raw_GLFW_Window>, iconified:Int32):Void {
		var ptr = win + "";
		if (listeners.exists(ptr))
			listeners[ptr](Pointer.fromStar(win), iconified);
	}

	public static function setCallback(win:Star<Raw_GLFW_Window>, cb:GLFW_Windowiconifyfun):Void {
		listeners[win + ""] = cb;
	}
}

@:keep
private class GLFW_WindowMaximizeHandler {
	static var listeners = new Map<String, GLFW_Windowmaximizefun>();

	public static function nativeCallback(win:Star<Raw_GLFW_Window>, maximized:Int32):Void {
		var ptr = win + "";
		if (listeners.exists(ptr))
			listeners[ptr](Pointer.fromStar(win), maximized);
	}

	public static function setCallback(win:Star<Raw_GLFW_Window>, cb:GLFW_Windowmaximizefun):Void {
		listeners[win + ""] = cb;
	}
}

@:keep
private class GLFW_FramebufferSizeHandler {
	static var listeners = new Map<String, GLFW_Framebuffersizefun>();

	public static function nativeCallback(win:Star<Raw_GLFW_Window>, w:Int32, h:Int32):Void {
		var ptr = win + "";
		if (listeners.exists(ptr))
			listeners[ptr](Pointer.fromStar(win), w, h);
	}

	public static function setCallback(win:Star<Raw_GLFW_Window>, cb:GLFW_Framebuffersizefun):Void {
		listeners[win + ""] = cb;
	}
}

@:keep
private class GLFW_WindowContentScaleHandler {
	static var listeners = new Map<String, GLFW_Windowcontentscalefun>();

	public static function nativeCallback(win:Star<Raw_GLFW_Window>, x:Float32, y:Float32):Void {
		var ptr = win + "";
		if (listeners.exists(ptr))
			listeners[ptr](Pointer.fromStar(win), x, y);
	}

	public static function setCallback(win:Star<Raw_GLFW_Window>, cb:GLFW_Windowcontentscalefun):Void {
		listeners[win + ""] = cb;
	}
}

@:keep
private class GLFW_KeyHandler {
	static var listeners = new Map<String, GLFW_Keyfun>();

	static public function nativeCallback(win:Star<Raw_GLFW_Window>, key:Int32, scancode:Int32, action:Int32, mods:Int32):Void {
		var ptr = win + "";
		if (listeners.exists(ptr))
			listeners[ptr](Pointer.fromStar(win), key, scancode, action, mods);
	}

	public static function setCallback(win:Star<Raw_GLFW_Window>, cb:GLFW_Keyfun):Void {
		listeners[win + ""] = cb;
	}
}

@:keep
private class GLFW_CharHandler {
	static var listeners = new Map<String, GLFW_Charfun>();

	static public function nativeCallback(win:Star<Raw_GLFW_Window>, codepoint:UInt32):Void {
		var ptr = win + "";
		if (listeners.exists(ptr))
			listeners[ptr](Pointer.fromStar(win), codepoint);
	}

	public static function setCallback(win:Star<Raw_GLFW_Window>, cb:GLFW_Charfun):Void {
		listeners[win + ""] = cb;
	}
}

@:keep
private class GLFW_CharModsHandler {
	static var listeners = new Map<String, GLFW_Charmodsfun>();

	static public function nativeCallback(win:Star<Raw_GLFW_Window>, codepoint:UInt32, mods:Int32):Void {
		var ptr = win + "";
		if (listeners.exists(ptr))
			listeners[ptr](Pointer.fromStar(win), codepoint, mods);
	}

	public static function setCallback(win:Star<Raw_GLFW_Window>, cb:GLFW_Charmodsfun):Void {
		listeners[win + ""] = cb;
	}
}

@:keep
private class GLFW_MouseButtonHandler {
	static var listeners = new Map<String, GLFW_Mousebuttonfun>();

	static public function nativeCallback(win:Star<Raw_GLFW_Window>, button:Int32, action:Int32, mods:Int32):Void {
		var ptr = win + "";
		if (listeners.exists(ptr))
			listeners[ptr](Pointer.fromStar(win), button, action, mods);
	}

	public static function setCallback(win:Star<Raw_GLFW_Window>, cb:GLFW_Mousebuttonfun):Void {
		listeners[win + ""] = cb;
	}
}

@:keep
private class GLFW_CursorPosHandler {
	static var listeners = new Map<String, GLFW_Cursorposfun>();

	static public function nativeCallback(win:Star<Raw_GLFW_Window>, x:Float64, y:Float64):Void {
		var ptr = win + "";
		if (listeners.exists(ptr))
			listeners[ptr](Pointer.fromStar(win), x, y);
	}

	public static function setCallback(win:Star<Raw_GLFW_Window>, cb:GLFW_Cursorposfun):Void {
		listeners[win + ""] = cb;
	}
}

@:keep
private class GLFW_CursorEnterHandler {
	static var listeners = new Map<String, GLFW_Cursorenterfun>();

	static public function nativeCallback(win:Star<Raw_GLFW_Window>, entered:Int32):Void {
		var ptr = win + "";
		if (listeners.exists(ptr))
			listeners[ptr](Pointer.fromStar(win), entered);
	}

	public static function setCallback(win:Star<Raw_GLFW_Window>, cb:GLFW_Cursorenterfun):Void {
		listeners[win + ""] = cb;
	}
}

@:keep
private class GLFW_ScrollHandler {
	static var listeners = new Map<String, GLFW_Scrollfun>();

	static public function nativeCallback(win:Star<Raw_GLFW_Window>, x:Float64, y:Float64):Void {
		var ptr = win + "";
		if (listeners.exists(ptr))
			listeners[ptr](Pointer.fromStar(win), x, y);
	}

	public static function setCallback(win:Star<Raw_GLFW_Window>, cb:GLFW_Scrollfun):Void {
		listeners[win + ""] = cb;
	}
}

@:keep
private class GLFW_DropHandler {
	static var listeners = new Map<String, GLFW_Dropfun>();

	static public function nativeCallback(win:Star<Raw_GLFW_Window>, count:Int32, paths:ConstCharStar):Void {
		var ptr = win + "";
		if (listeners.exists(ptr))
			listeners[ptr](Pointer.fromStar(win), count, paths);
	}

	public static function setCallback(win:Star<Raw_GLFW_Window>, cb:GLFW_Dropfun):Void {
		listeners[win + ""] = cb;
	}
}

@:include("vendor/include/GLFW/glfw3.h")
@:buildXml("<include name=\"${haxelib:GameNativeKit}/include_glfw.xml\"/>")
extern class GLFW {
	public static inline var VERSION_MAJOR:Int32 = 3;
	public static inline var VERSION_MINOR:Int32 = 4;
	public static inline var VERSION_REVISION:Int32 = 0;
	public static inline var TRUE:Int32 = 1;
	public static inline var FALSE:Int32 = 0;
	public static inline var RELEASE:Int32 = 0;
	public static inline var PRESS:Int32 = 1;
	public static inline var REPEAT:Int32 = 2;
	public static inline var HAT_CENTERED:Int32 = 0;
	public static inline var HAT_UP:Int32 = 1;
	public static inline var HAT_RIGHT:Int32 = 2;
	public static inline var HAT_DOWN:Int32 = 4;
	public static inline var HAT_LEFT:Int32 = 8;
	public static inline var HAT_RIGHT_UP:Int32 = (HAT_RIGHT | HAT_UP);
	public static inline var HAT_RIGHT_DOWN:Int32 = (HAT_RIGHT | HAT_DOWN);
	public static inline var HAT_LEFT_UP:Int32 = (HAT_LEFT | HAT_UP);
	public static inline var HAT_LEFT_DOWN:Int32 = (HAT_LEFT | HAT_DOWN);
	public static inline var KEY_UNKNOWN:Int32 = -1;
	public static inline var KEY_SPACE:Int32 = 32;
	public static inline var KEY_APOSTROPHE:Int32 = 39 /* ' */;
	public static inline var KEY_COMMA:Int32 = 44 /* , */;
	public static inline var KEY_MINUS:Int32 = 45 /* - */;
	public static inline var KEY_PERIOD:Int32 = 46 /* . */;
	public static inline var KEY_SLASH:Int32 = 47 /* / */;
	public static inline var KEY_0:Int32 = 48;
	public static inline var KEY_1:Int32 = 49;
	public static inline var KEY_2:Int32 = 50;
	public static inline var KEY_3:Int32 = 51;
	public static inline var KEY_4:Int32 = 52;
	public static inline var KEY_5:Int32 = 53;
	public static inline var KEY_6:Int32 = 54;
	public static inline var KEY_7:Int32 = 55;
	public static inline var KEY_8:Int32 = 56;
	public static inline var KEY_9:Int32 = 57;
	public static inline var KEY_SEMICOLON:Int32 = 59 /* ; */;
	public static inline var KEY_EQUAL:Int32 = 61 /* = */;
	public static inline var KEY_A:Int32 = 65;
	public static inline var KEY_B:Int32 = 66;
	public static inline var KEY_C:Int32 = 67;
	public static inline var KEY_D:Int32 = 68;
	public static inline var KEY_E:Int32 = 69;
	public static inline var KEY_F:Int32 = 70;
	public static inline var KEY_G:Int32 = 71;
	public static inline var KEY_H:Int32 = 72;
	public static inline var KEY_I:Int32 = 73;
	public static inline var KEY_J:Int32 = 74;
	public static inline var KEY_K:Int32 = 75;
	public static inline var KEY_L:Int32 = 76;
	public static inline var KEY_M:Int32 = 77;
	public static inline var KEY_N:Int32 = 78;
	public static inline var KEY_O:Int32 = 79;
	public static inline var KEY_P:Int32 = 80;
	public static inline var KEY_Q:Int32 = 81;
	public static inline var KEY_R:Int32 = 82;
	public static inline var KEY_S:Int32 = 83;
	public static inline var KEY_T:Int32 = 84;
	public static inline var KEY_U:Int32 = 85;
	public static inline var KEY_V:Int32 = 86;
	public static inline var KEY_W:Int32 = 87;
	public static inline var KEY_X:Int32 = 88;
	public static inline var KEY_Y:Int32 = 89;
	public static inline var KEY_Z:Int32 = 90;
	public static inline var KEY_LEFT_BRACKET:Int32 = 91 /* [ */;
	public static inline var KEY_BACKSLASH:Int32 = 92 /* \ */;
	public static inline var KEY_RIGHT_BRACKET:Int32 = 93 /* ] */;
	public static inline var KEY_GRAVE_ACCENT:Int32 = 96 /* ` */;
	public static inline var KEY_WORLD_1:Int32 = 161 /* non-US #1 */;
	public static inline var KEY_WORLD_2:Int32 = 162 /* non-US #2 */;
	public static inline var KEY_ESCAPE:Int32 = 256;
	public static inline var KEY_ENTER:Int32 = 257;
	public static inline var KEY_TAB:Int32 = 258;
	public static inline var KEY_BACKSPACE:Int32 = 259;
	public static inline var KEY_INSERT:Int32 = 260;
	public static inline var KEY_DELETE:Int32 = 261;
	public static inline var KEY_RIGHT:Int32 = 262;
	public static inline var KEY_LEFT:Int32 = 263;
	public static inline var KEY_DOWN:Int32 = 264;
	public static inline var KEY_UP:Int32 = 265;
	public static inline var KEY_PAGE_UP:Int32 = 266;
	public static inline var KEY_PAGE_DOWN:Int32 = 267;
	public static inline var KEY_HOME:Int32 = 268;
	public static inline var KEY_END:Int32 = 269;
	public static inline var KEY_CAPS_LOCK:Int32 = 280;
	public static inline var KEY_SCROLL_LOCK:Int32 = 281;
	public static inline var KEY_NUM_LOCK:Int32 = 282;
	public static inline var KEY_PRINT_SCREEN:Int32 = 283;
	public static inline var KEY_PAUSE:Int32 = 284;
	public static inline var KEY_F1:Int32 = 290;
	public static inline var KEY_F2:Int32 = 291;
	public static inline var KEY_F3:Int32 = 292;
	public static inline var KEY_F4:Int32 = 293;
	public static inline var KEY_F5:Int32 = 294;
	public static inline var KEY_F6:Int32 = 295;
	public static inline var KEY_F7:Int32 = 296;
	public static inline var KEY_F8:Int32 = 297;
	public static inline var KEY_F9:Int32 = 298;
	public static inline var KEY_F10:Int32 = 299;
	public static inline var KEY_F11:Int32 = 300;
	public static inline var KEY_F12:Int32 = 301;
	public static inline var KEY_F13:Int32 = 302;
	public static inline var KEY_F14:Int32 = 303;
	public static inline var KEY_F15:Int32 = 304;
	public static inline var KEY_F16:Int32 = 305;
	public static inline var KEY_F17:Int32 = 306;
	public static inline var KEY_F18:Int32 = 307;
	public static inline var KEY_F19:Int32 = 308;
	public static inline var KEY_F20:Int32 = 309;
	public static inline var KEY_F21:Int32 = 310;
	public static inline var KEY_F22:Int32 = 311;
	public static inline var KEY_F23:Int32 = 312;
	public static inline var KEY_F24:Int32 = 313;
	public static inline var KEY_F25:Int32 = 314;
	public static inline var KEY_KP_0:Int32 = 320;
	public static inline var KEY_KP_1:Int32 = 321;
	public static inline var KEY_KP_2:Int32 = 322;
	public static inline var KEY_KP_3:Int32 = 323;
	public static inline var KEY_KP_4:Int32 = 324;
	public static inline var KEY_KP_5:Int32 = 325;
	public static inline var KEY_KP_6:Int32 = 326;
	public static inline var KEY_KP_7:Int32 = 327;
	public static inline var KEY_KP_8:Int32 = 328;
	public static inline var KEY_KP_9:Int32 = 329;
	public static inline var KEY_KP_DECIMAL:Int32 = 330;
	public static inline var KEY_KP_DIVIDE:Int32 = 331;
	public static inline var KEY_KP_MULTIPLY:Int32 = 332;
	public static inline var KEY_KP_SUBTRACT:Int32 = 333;
	public static inline var KEY_KP_ADD:Int32 = 334;
	public static inline var KEY_KP_ENTER:Int32 = 335;
	public static inline var KEY_KP_EQUAL:Int32 = 336;
	public static inline var KEY_LEFT_SHIFT:Int32 = 340;
	public static inline var KEY_LEFT_CONTROL:Int32 = 341;
	public static inline var KEY_LEFT_ALT:Int32 = 342;
	public static inline var KEY_LEFT_SUPER:Int32 = 343;
	public static inline var KEY_RIGHT_SHIFT:Int32 = 344;
	public static inline var KEY_RIGHT_CONTROL:Int32 = 345;
	public static inline var KEY_RIGHT_ALT:Int32 = 346;
	public static inline var KEY_RIGHT_SUPER:Int32 = 347;
	public static inline var KEY_MENU:Int32 = 348;
	public static inline var KEY_LAST:Int32 = KEY_MENU;
	public static inline var MOD_SHIFT:Int32 = 0x0001;
	public static inline var MOD_CONTROL:Int32 = 0x0002;
	public static inline var MOD_ALT:Int32 = 0x0004;
	public static inline var MOD_SUPER:Int32 = 0x0008;
	public static inline var MOD_CAPS_LOCK:Int32 = 0x0010;
	public static inline var MOD_NUM_LOCK:Int32 = 0x0020;
	public static inline var MOUSE_BUTTON_1:Int32 = 0;
	public static inline var MOUSE_BUTTON_2:Int32 = 1;
	public static inline var MOUSE_BUTTON_3:Int32 = 2;
	public static inline var MOUSE_BUTTON_4:Int32 = 3;
	public static inline var MOUSE_BUTTON_5:Int32 = 4;
	public static inline var MOUSE_BUTTON_6:Int32 = 5;
	public static inline var MOUSE_BUTTON_7:Int32 = 6;
	public static inline var MOUSE_BUTTON_8:Int32 = 7;
	public static inline var MOUSE_BUTTON_LAST:Int32 = MOUSE_BUTTON_8;
	public static inline var MOUSE_BUTTON_LEFT:Int32 = MOUSE_BUTTON_1;
	public static inline var MOUSE_BUTTON_RIGHT:Int32 = MOUSE_BUTTON_2;
	public static inline var MOUSE_BUTTON_MIDDLE:Int32 = MOUSE_BUTTON_3;
	public static inline var JOYSTICK_1:Int32 = 0;
	public static inline var JOYSTICK_2:Int32 = 1;
	public static inline var JOYSTICK_3:Int32 = 2;
	public static inline var JOYSTICK_4:Int32 = 3;
	public static inline var JOYSTICK_5:Int32 = 4;
	public static inline var JOYSTICK_6:Int32 = 5;
	public static inline var JOYSTICK_7:Int32 = 6;
	public static inline var JOYSTICK_8:Int32 = 7;
	public static inline var JOYSTICK_9:Int32 = 8;
	public static inline var JOYSTICK_10:Int32 = 9;
	public static inline var JOYSTICK_11:Int32 = 10;
	public static inline var JOYSTICK_12:Int32 = 11;
	public static inline var JOYSTICK_13:Int32 = 12;
	public static inline var JOYSTICK_14:Int32 = 13;
	public static inline var JOYSTICK_15:Int32 = 14;
	public static inline var JOYSTICK_16:Int32 = 15;
	public static inline var JOYSTICK_LAST:Int32 = JOYSTICK_16;
	public static inline var GAMEPAD_BUTTON_A:Int32 = 0;
	public static inline var GAMEPAD_BUTTON_B:Int32 = 1;
	public static inline var GAMEPAD_BUTTON_X:Int32 = 2;
	public static inline var GAMEPAD_BUTTON_Y:Int32 = 3;
	public static inline var GAMEPAD_BUTTON_LEFT_BUMPER:Int32 = 4;
	public static inline var GAMEPAD_BUTTON_RIGHT_BUMPER:Int32 = 5;
	public static inline var GAMEPAD_BUTTON_BACK:Int32 = 6;
	public static inline var GAMEPAD_BUTTON_START:Int32 = 7;
	public static inline var GAMEPAD_BUTTON_GUIDE:Int32 = 8;
	public static inline var GAMEPAD_BUTTON_LEFT_THUMB:Int32 = 9;
	public static inline var GAMEPAD_BUTTON_RIGHT_THUMB:Int32 = 10;
	public static inline var GAMEPAD_BUTTON_DPAD_UP:Int32 = 11;
	public static inline var GAMEPAD_BUTTON_DPAD_RIGHT:Int32 = 12;
	public static inline var GAMEPAD_BUTTON_DPAD_DOWN:Int32 = 13;
	public static inline var GAMEPAD_BUTTON_DPAD_LEFT:Int32 = 14;
	public static inline var GAMEPAD_BUTTON_LAST:Int32 = GAMEPAD_BUTTON_DPAD_LEFT;
	public static inline var GAMEPAD_BUTTON_CROSS:Int32 = GAMEPAD_BUTTON_A;
	public static inline var GAMEPAD_BUTTON_CIRCLE:Int32 = GAMEPAD_BUTTON_B;
	public static inline var GAMEPAD_BUTTON_SQUARE:Int32 = GAMEPAD_BUTTON_X;
	public static inline var GAMEPAD_BUTTON_TRIANGLE:Int32 = GAMEPAD_BUTTON_Y;
	public static inline var GAMEPAD_AXIS_LEFT_X:Int32 = 0;
	public static inline var GAMEPAD_AXIS_LEFT_Y:Int32 = 1;
	public static inline var GAMEPAD_AXIS_RIGHT_X:Int32 = 2;
	public static inline var GAMEPAD_AXIS_RIGHT_Y:Int32 = 3;
	public static inline var GAMEPAD_AXIS_LEFT_TRIGGER:Int32 = 4;
	public static inline var GAMEPAD_AXIS_RIGHT_TRIGGER:Int32 = 5;
	public static inline var GAMEPAD_AXIS_LAST:Int32 = GAMEPAD_AXIS_RIGHT_TRIGGER;
	public static inline var NO_ERROR:Int32 = 0;
	public static inline var NOT_INITIALIZED:Int32 = 0x00010001;
	public static inline var NO_CURRENT_CONTEXT:Int32 = 0x00010002;
	public static inline var INVALID_ENUM:Int32 = 0x00010003;
	public static inline var INVALID_VALUE:Int32 = 0x00010004;
	public static inline var OUT_OF_MEMORY:Int32 = 0x00010005;
	public static inline var API_UNAVAILABLE:Int32 = 0x00010006;
	public static inline var VERSION_UNAVAILABLE:Int32 = 0x00010007;
	public static inline var PLATFORM_ERROR:Int32 = 0x00010008;
	public static inline var FORMAT_UNAVAILABLE:Int32 = 0x00010009;
	public static inline var NO_WINDOW_CONTEXT:Int32 = 0x0001000A;
	public static inline var CURSOR_UNAVAILABLE:Int32 = 0x0001000B;
	public static inline var FEATURE_UNAVAILABLE:Int32 = 0x0001000C;
	public static inline var FEATURE_UNIMPLEMENTED:Int32 = 0x0001000D;
	public static inline var PLATFORM_UNAVAILABLE:Int32 = 0x0001000E;
	public static inline var FOCUSED:Int32 = 0x00020001;
	public static inline var ICONIFIED:Int32 = 0x00020002;
	public static inline var RESIZABLE:Int32 = 0x00020003;
	public static inline var VISIBLE:Int32 = 0x00020004;
	public static inline var DECORATED:Int32 = 0x00020005;
	public static inline var AUTO_ICONIFY:Int32 = 0x00020006;
	public static inline var FLOATING:Int32 = 0x00020007;
	public static inline var MAXIMIZED:Int32 = 0x00020008;
	public static inline var CENTER_CURSOR:Int32 = 0x00020009;
	public static inline var TRANSPARENT_FRAMEBUFFER:Int32 = 0x0002000A;
	public static inline var HOVERED:Int32 = 0x0002000B;
	public static inline var FOCUS_ON_SHOW:Int32 = 0x0002000C;
	public static inline var MOUSE_PASSTHROUGH:Int32 = 0x0002000D;
	public static inline var POSITION_X:Int32 = 0x0002000E;
	public static inline var POSITION_Y:Int32 = 0x0002000F;
	public static inline var RED_BITS:Int32 = 0x00021001;
	public static inline var GREEN_BITS:Int32 = 0x00021002;
	public static inline var BLUE_BITS:Int32 = 0x00021003;
	public static inline var ALPHA_BITS:Int32 = 0x00021004;
	public static inline var DEPTH_BITS:Int32 = 0x00021005;
	public static inline var STENCIL_BITS:Int32 = 0x00021006;
	public static inline var ACCUM_RED_BITS:Int32 = 0x00021007;
	public static inline var ACCUM_GREEN_BITS:Int32 = 0x00021008;
	public static inline var ACCUM_BLUE_BITS:Int32 = 0x00021009;
	public static inline var ACCUM_ALPHA_BITS:Int32 = 0x0002100A;
	public static inline var AUX_BUFFERS:Int32 = 0x0002100B;
	public static inline var STEREO:Int32 = 0x0002100C;
	public static inline var SAMPLES:Int32 = 0x0002100D;
	public static inline var SRGB_CAPABLE:Int32 = 0x0002100E;
	public static inline var REFRESH_RATE:Int32 = 0x0002100F;
	public static inline var DOUBLEBUFFER:Int32 = 0x00021010;
	public static inline var CLIENT_API:Int32 = 0x00022001;
	public static inline var CONTEXT_VERSION_MAJOR:Int32 = 0x00022002;
	public static inline var CONTEXT_VERSION_MINOR:Int32 = 0x00022003;
	public static inline var CONTEXT_REVISION:Int32 = 0x00022004;
	public static inline var CONTEXT_ROBUSTNESS:Int32 = 0x00022005;
	public static inline var OPENGL_FORWARD_COMPAT:Int32 = 0x00022006;
	public static inline var CONTEXT_DEBUG:Int32 = 0x00022007;
	public static inline var OPENGL_DEBUG_CONTEXT:Int32 = CONTEXT_DEBUG;
	public static inline var OPENGL_PROFILE:Int32 = 0x00022008;
	public static inline var CONTEXT_RELEASE_BEHAVIOR:Int32 = 0x00022009;
	public static inline var CONTEXT_NO_ERROR:Int32 = 0x0002200A;
	public static inline var CONTEXT_CREATION_API:Int32 = 0x0002200B;
	public static inline var SCALE_TO_MONITOR:Int32 = 0x0002200C;
	public static inline var SCALE_FRAMEBUFFER:Int32 = 0x0002200D;
	public static inline var COCOA_RETINA_FRAMEBUFFER:Int32 = 0x00023001;
	public static inline var COCOA_FRAME_NAME:Int32 = 0x00023002;
	public static inline var COCOA_GRAPHICS_SWITCHING:Int32 = 0x00023003;
	public static inline var X11_CLASS_NAME:Int32 = 0x00024001;
	public static inline var X11_INSTANCE_NAME:Int32 = 0x00024002;
	public static inline var WIN32_KEYBOARD_MENU:Int32 = 0x00025001;
	public static inline var WIN32_SHOWDEFAULT:Int32 = 0x00025002;
	public static inline var WAYLAND_APP_ID:Int32 = 0x00026001;
	public static inline var NO_API:Int32 = 0;
	public static inline var OPENGL_API:Int32 = 0x00030001;
	public static inline var OPENGL_ES_API:Int32 = 0x00030002;
	public static inline var NO_ROBUSTNESS:Int32 = 0;
	public static inline var NO_RESET_NOTIFICATION:Int32 = 0x00031001;
	public static inline var LOSE_CONTEXT_ON_RESET:Int32 = 0x00031002;
	public static inline var OPENGL_ANY_PROFILE:Int32 = 0;
	public static inline var OPENGL_CORE_PROFILE:Int32 = 0x00032001;
	public static inline var OPENGL_COMPAT_PROFILE:Int32 = 0x00032002;
	public static inline var CURSOR:Int32 = 0x00033001;
	public static inline var STICKY_KEYS:Int32 = 0x00033002;
	public static inline var STICKY_MOUSE_BUTTONS:Int32 = 0x00033003;
	public static inline var LOCK_KEY_MODS:Int32 = 0x00033004;
	public static inline var RAW_MOUSE_MOTION:Int32 = 0x00033005;
	public static inline var CURSOR_NORMAL:Int32 = 0x00034001;
	public static inline var CURSOR_HIDDEN:Int32 = 0x00034002;
	public static inline var CURSOR_DISABLED:Int32 = 0x00034003;
	public static inline var CURSOR_CAPTURED:Int32 = 0x00034004;
	public static inline var ANY_RELEASE_BEHAVIOR:Int32 = 0;
	public static inline var RELEASE_BEHAVIOR_FLUSH:Int32 = 0x00035001;
	public static inline var RELEASE_BEHAVIOR_NONE:Int32 = 0x00035002;
	public static inline var Raw_CONTEXT_API:Int32 = 0x00036001;
	public static inline var EGL_CONTEXT_API:Int32 = 0x00036002;
	public static inline var OSMESA_CONTEXT_API:Int32 = 0x00036003;
	public static inline var ANGLE_PLATFORM_TYPE_NONE:Int32 = 0x00037001;
	public static inline var ANGLE_PLATFORM_TYPE_OPENGL:Int32 = 0x00037002;
	public static inline var ANGLE_PLATFORM_TYPE_OPENGLES:Int32 = 0x00037003;
	public static inline var ANGLE_PLATFORM_TYPE_D3D9:Int32 = 0x00037004;
	public static inline var ANGLE_PLATFORM_TYPE_D3D11:Int32 = 0x00037005;
	public static inline var ANGLE_PLATFORM_TYPE_VULKAN:Int32 = 0x00037007;
	public static inline var ANGLE_PLATFORM_TYPE_METAL:Int32 = 0x00037008;
	public static inline var WAYLAND_PREFER_LIBDECOR:Int32 = 0x00038001;
	public static inline var WAYLAND_DISABLE_LIBDECOR:Int32 = 0x00038002;
	public static inline var ANY_POSITION:Int32 = 0x80000000;
	public static inline var ARROW_CURSOR:Int32 = 0x00036001;
	public static inline var IBEAM_CURSOR:Int32 = 0x00036002;
	public static inline var CROSSHAIR_CURSOR:Int32 = 0x00036003;
	public static inline var POINTING_HAND_CURSOR:Int32 = 0x00036004;
	public static inline var RESIZE_EW_CURSOR:Int32 = 0x00036005;
	public static inline var RESIZE_NS_CURSOR:Int32 = 0x00036006;
	public static inline var RESIZE_NWSE_CURSOR:Int32 = 0x00036007;
	public static inline var RESIZE_NESW_CURSOR:Int32 = 0x00036008;
	public static inline var RESIZE_ALL_CURSOR:Int32 = 0x00036009;
	public static inline var NOT_ALLOWED_CURSOR:Int32 = 0x0003600A;
	public static inline var HRESIZE_CURSOR:Int32 = RESIZE_EW_CURSOR;
	public static inline var VRESIZE_CURSOR:Int32 = RESIZE_NS_CURSOR;
	public static inline var HAND_CURSOR:Int32 = POINTING_HAND_CURSOR;
	public static inline var CONNECTED:Int32 = 0x00040001;
	public static inline var DISCONNECTED:Int32 = 0x00040002;
	public static inline var JOYSTICK_HAT_BUTTONS:Int32 = 0x00050001;
	public static inline var ANGLE_PLATFORM_TYPE:Int32 = 0x00050002;
	public static inline var PLATFORM:Int32 = 0x00050003;
	public static inline var COCOA_CHDIR_RESOURCES:Int32 = 0x00051001;
	public static inline var COCOA_MENUBAR:Int32 = 0x00051002;
	public static inline var X11_XCB_VULKAN_SURFACE:Int32 = 0x00052001;
	public static inline var WAYLAND_LIBDECOR:Int32 = 0x00053001;
	public static inline var ANY_PLATFORM:Int32 = 0x00060000;
	public static inline var PLATFORM_WIN32:Int32 = 0x00060001;
	public static inline var PLATFORM_COCOA:Int32 = 0x00060002;
	public static inline var PLATFORM_WAYLAND:Int32 = 0x00060003;
	public static inline var PLATFORM_X11:Int32 = 0x00060004;
	public static inline var PLATFORM_NULL:Int32 = 0x00060005;
	public static inline var DONT_CARE:Int32 = -1;

	@:native("glfwInit")
	public static function init():Int;

	@:native("glfwTerminate")
	public static function terminate():Void;

	@:native("glfwInitHint")
	public static function initHint(hint:Int, value:Int):Void;

	@:native("glfwInitAllocator")
	public static function initAllocator(allocator:GLFW_Allocator):Void;

	// VULKAN XDD
	@:native("glfwInitVulkanLoader")
	public static function initVulkanLoader(loader:cpp.Pointer<Dynamic>):Void;

	@:native("glfwGetVersion")
	public static function getVersion(major:cpp.Pointer<Int>, minor:cpp.Pointer<Int>, rev:cpp.Pointer<Int>):Void;

	@:native("glfwGetVersionString")
	public static function getVersionString():Pointer<Char>;

	@:native("glfwGetError")
	public static function getError(description:cpp.Pointer<cpp.ConstCharStar>):Int;

	@:native("glfwGetPlatform")
	public static function getPlatform():Int;

	@:native("glfwPlatformSupported")
	public static function platformSupported(platform:Int):Int;

	@:native("glfwGetMonitors")
	public static function getMonitors(count:cpp.Pointer<Int>):cpp.Pointer<GLFW_Monitor>;

	@:native("glfwGetPrimaryMonitor")
	public static function getPrimaryMonitor():GLFW_Monitor;

	@:native("glfwGetMonitorPos")
	public static function getMonitorPos(monitor:GLFW_Monitor, xpos:cpp.Pointer<Int>, ypos:cpp.Pointer<Int>):Void;

	@:native("glfwGetMonitorWorkarea")
	public static function getMonitorWorkarea(monitor:GLFW_Monitor, xpos:cpp.Pointer<Int>, ypos:cpp.Pointer<Int>, width:cpp.Pointer<Int>,
		height:cpp.Pointer<Int>):Void;

	@:native("glfwGetMonitorPhysicalSize")
	public static function getMonitorPhysicalSize(monitor:GLFW_Monitor, widthMM:cpp.Pointer<Int>, heightMM:cpp.Pointer<Int>):Void;

	@:native("glfwGetMonitorContentScale")
	public static function getMonitorContentScale(monitor:GLFW_Monitor, xscale:cpp.Pointer<Float>, yscale:cpp.Pointer<Float>):Void;

	@:native("glfwGetMonitorName")
	public static function getMonitorName(monitor:GLFW_Monitor):Pointer<Char>;

	@:native("glfwSetMonitorUserPointer")
	public static function setMonitorUserPointer(monitor:GLFW_Monitor, pointer:cpp.RawPointer<Void>):Void;

	@:native("glfwGetMonitorUserPointer")
	public static function getMonitorUserPointer(monitor:GLFW_Monitor):cpp.RawPointer<Void>;

	@:native("glfwGetVideoModes")
	public static function getVideoModes(monitor:GLFW_Monitor, count:cpp.Pointer<Int>):GLFW_Vidmode;

	@:native("glfwGetVideoMode")
	public static function getVideoMode(monitor:GLFW_Monitor):GLFW_Vidmode;

	@:native("glfwSetGamma")
	public static function setGamma(monitor:GLFW_Monitor, gamma:Float):Void;

	@:native("glfwGetGammaRamp")
	public static function getGammaRamp(monitor:GLFW_Monitor):GLFW_Gammaramp;

	@:native("glfwSetGammaRamp")
	public static function setGammaRamp(monitor:GLFW_Monitor, ramp:GLFW_Gammaramp):Void;

	@:native("glfwDefaultWindowHints")
	public static function defaultWindowHints():Void;

	@:native("glfwWindowHint")
	public static function windowHint(hint:Int, value:Int):Void;

	@:native("glfwWindowHintString")
	public static function windowHintString(hint:Int, value:cpp.ConstCharStar):Void;

	@:native("glfwCreateWindow")
	public static function createWindow(width:Int, height:Int, title:cpp.ConstCharStar, monitor:GLFW_Monitor, share:GLFW_Window):GLFW_Window;

	@:native("glfwDestroyWindow")
	public static function destroyWindow(window:GLFW_Window):Void;

	@:native("glfwWindowShouldClose")
	public static function windowShouldClose(window:GLFW_Window):Int;

	@:native("glfwSetWindowShouldClose")
	public static function setWindowShouldClose(window:GLFW_Window, value:Int):Void;

	@:native("glfwGetWindowTitle")
	public static function getWindowTitle(window:GLFW_Window):Pointer<Char>;

	@:native("glfwSetWindowTitle")
	public static function setWindowTitle(window:GLFW_Window, title:cpp.ConstCharStar):Void;

	@:native("glfwSetWindowIcon")
	public static function setWindowIcon(window:GLFW_Window, count:Int, images:GLFW_Image):Void;

	@:native("glfwGetWindowPos")
	public static function getWindowPos(window:GLFW_Window, xpos:cpp.Pointer<Int>, ypos:cpp.Pointer<Int>):Void;

	@:native("glfwSetWindowPos")
	public static function setWindowPos(window:GLFW_Window, xpos:Int, ypos:Int):Void;

	@:native("glfwGetWindowSize")
	public static function getWindowSize(window:GLFW_Window, width:cpp.Pointer<Int>, height:cpp.Pointer<Int>):Void;

	@:native("glfwSetWindowSizeLimits")
	public static function setWindowSizeLimits(window:GLFW_Window, minwidth:Int, minheight:Int, maxwidth:Int, maxheight:Int):Void;

	@:native("glfwSetWindowAspectRatio")
	public static function setWindowAspectRatio(window:GLFW_Window, numer:Int, denom:Int):Void;

	@:native("glfwSetWindowSize")
	public static function setWindowSize(window:GLFW_Window, width:Int, height:Int):Void;

	@:native("glfwGetFramebufferSize")
	public static function getFramebufferSize(window:GLFW_Window, width:cpp.Pointer<Int>, height:cpp.Pointer<Int>):Void;

	@:native("glfwGetWindowFrameSize")
	public static function getWindowFrameSize(window:GLFW_Window, left:cpp.Pointer<Int>, top:cpp.Pointer<Int>, right:cpp.Pointer<Int>,
		bottom:cpp.Pointer<Int>):Void;

	@:native("glfwGetWindowContentScale")
	public static function getWindowContentScale(window:GLFW_Window, xscale:cpp.Pointer<Float>, yscale:cpp.Pointer<Float>):Void;

	@:native("glfwGetWindowOpacity")
	public static function getWindowOpacity(window:GLFW_Window):Float;

	@:native("glfwSetWindowOpacity")
	public static function setWindowOpacity(window:GLFW_Window, opacity:Float):Void;

	@:native("glfwIconifyWindow")
	public static function iconifyWindow(window:GLFW_Window):Void;

	@:native("glfwRestoreWindow")
	public static function restoreWindow(window:GLFW_Window):Void;

	@:native("glfwMaximizeWindow")
	public static function maximizeWindow(window:GLFW_Window):Void;

	@:native("glfwShowWindow")
	public static function showWindow(window:GLFW_Window):Void;

	@:native("glfwHideWindow")
	public static function hideWindow(window:GLFW_Window):Void;

	@:native("glfwFocusWindow")
	public static function focusWindow(window:GLFW_Window):Void;

	@:native("glfwRequestWindowAttention")
	public static function requestWindowAttention(window:GLFW_Window):Void;

	@:native("glfwGetWindowMonitor")
	public static function getWindowMonitor(window:GLFW_Window):GLFW_Monitor;

	@:native("glfwSetWindowMonitor")
	public static function setWindowMonitor(window:GLFW_Window, monitor:GLFW_Monitor, xpos:Int, ypos:Int, width:Int, height:Int, refreshRate:Int):Void;

	@:native("glfwGetWindowAttrib")
	public static function getWindowAttrib(window:GLFW_Window, attrib:Int):Int;

	@:native("glfwSetWindowAttrib")
	public static function setWindowAttrib(window:GLFW_Window, attrib:Int, value:Int):Void;

	@:native("glfwSetWindowUserPointer")
	public static function setWindowUserPointer(window:GLFW_Window, pointer:cpp.RawPointer<Void>):Void;

	@:native("glfwGetWindowUserPointer")
	public static function getWindowUserPointer(window:GLFW_Window):cpp.RawPointer<Void>;

	@:native("glfwPollEvents")
	public static function pollEvents():Void;

	@:native("glfwWaitEvents")
	public static function waitEvents():Void;

	@:native("glfwWaitEventsTimeout")
	public static function waitEventsTimeout(timeout:Float):Void;

	@:native("glfwPostEmptyEvent")
	public static function postEmptyEvent():Void;

	@:native("glfwGetInputMode")
	public static function getInputMode(window:GLFW_Window, mode:Int):Int;

	@:native("glfwSetInputMode")
	public static function setInputMode(window:GLFW_Window, mode:Int, value:Int):Void;

	@:native("glfwRawMouseMotionSupported")
	public static function rawMouseMotionSupported():Int;

	@:native("glfwGetKeyName")
	public static function getKeyName(key:Int, scancode:Int):Pointer<Char>;

	@:native("glfwGetKeyScancode")
	public static function getKeyScancode(key:Int):Int;

	@:native("glfwGetKey")
	public static function getKey(window:GLFW_Window, key:Int):Int;

	@:native("glfwGetMouseButton")
	public static function getMouseButton(window:GLFW_Window, button:Int):Int;

	@:native("glfwGetCursorPos")
	public static function getCursorPos(window:GLFW_Window, xpos:cpp.Pointer<Float>, ypos:cpp.Pointer<Float>):Void;

	@:native("glfwSetCursorPos")
	public static function setCursorPos(window:GLFW_Window, xpos:Float, ypos:Float):Void;

	@:native("glfwCreateCursor")
	public static function createCursor(image:GLFW_Image, xhot:Int, yhot:Int):GLFW_Cursor;

	@:native("glfwCreateStandardCursor")
	public static function createStandardCursor(shape:Int):GLFW_Cursor;

	@:native("glfwDestroyCursor")
	public static function destroyCursor(cursor:GLFW_Cursor):Void;

	@:native("glfwSetCursor")
	public static function setCursor(window:GLFW_Window, cursor:GLFW_Cursor):Void;

	@:native("glfwJoystickPresent")
	public static function joystickPresent(jid:Int):Int;

	@:native("glfwGetJoystickAxes")
	public static function getJoystickAxes(jid:Int, count:cpp.Pointer<Int>):cpp.Pointer<Float>;

	@:native("glfwGetJoystickButtons")
	public static function getJoystickButtons(jid:Int, count:cpp.Pointer<Int>):Pointer<Char>;

	@:native("glfwGetJoystickHats")
	public static function getJoystickHats(jid:Int, count:cpp.Pointer<Int>):Pointer<Char>;

	@:native("glfwGetJoystickName")
	public static function getJoystickName(jid:Int):Pointer<Char>;

	@:native("glfwGetJoystickGUID")
	public static function getJoystickGUID(jid:Int):Pointer<Char>;

	@:native("glfwSetJoystickUserPointer")
	public static function setJoystickUserPointer(jid:Int, pointer:cpp.RawPointer<Void>):Void;

	@:native("glfwGetJoystickUserPointer")
	public static function getJoystickUserPointer(jid:Int):cpp.RawPointer<Void>;

	@:native("glfwJoystickIsGamepad")
	public static function joystickIsGamepad(jid:Int):Int;

	@:native("glfwUpdateGamepadMappings")
	public static function updateGamepadMappings(str:cpp.ConstCharStar):Int;

	@:native("glfwGetGamepadName")
	public static function getGamepadName(jid:Int):Pointer<Char>;

	@:native("glfwGetGamepadState")
	public static function getGamepadState(jid:Int, state:GLFW_GamepadState):Int;

	@:native("glfwSetClipboardString")
	public static function setClipboardString(window:GLFW_Window, string:cpp.ConstCharStar):Void;

	@:native("glfwGetClipboardString")
	public static function getClipboardString(window:GLFW_Window):Pointer<Char>;

	@:native("glfwGetTime")
	public static function getTime():Float;

	@:native("glfwSetTime")
	public static function setTime(time:Float):Void;

	@:native("glfwGetTimerValue")
	public static function getTimerValue():cpp.UInt64;

	@:native("glfwGetTimerFrequency")
	public static function getTimerFrequency():cpp.UInt64;

	@:native("glfwMakeContextCurrent")
	public static function makeContextCurrent(window:GLFW_Window):Void;

	@:native("glfwGetCurrentContext")
	public static function getCurrentContext():GLFW_Window;

	@:native("glfwSwapBuffers")
	public static function swapBuffers(window:GLFW_Window):Void;

	@:native("glfwSwapInterval")
	public static function swapInterval(interval:Int):Void;

	@:native("glfwExtensionSupported")
	public static function extensionSupported(extension:cpp.ConstCharStar):Int;

	@:native("glfwGetProcAddress")
	public static function getProcAddress(procname:cpp.ConstCharStar):GladLoadProc;

	// VULKAN, XD
	@:native("glfwVulkanSupported")
	public static function vulkanSupported():Int;

	@:native("glfwGetRequiredInstanceExtensions")
	public static function getRequiredInstanceExtensions(count:cpp.Pointer<cpp.UInt32>):cpp.Pointer<cpp.ConstCharStar>;

	@:native("glfwGetInstanceProcAddress")
	public static function getInstanceProcAddress(instance:cpp.Pointer<Dynamic>, procname:cpp.ConstCharStar):cpp.Pointer<Dynamic>;

	@:native("glfwGetPhysicalDevicePresentationSupport")
	public static function getPhysicalDevicePresentationSupport(instance:cpp.Pointer<Dynamic>, device:cpp.Pointer<Dynamic>, queuefamily:cpp.UInt32):Int;

	@:native("glfwCreateWindowSurface")
	public static function createWindowSurface(instance:cpp.Pointer<Dynamic>, window:GLFW_Window, allocator:cpp.Pointer<Dynamic>,
		surface:cpp.Pointer<Dynamic>):Int;

	static inline function setWindowPosCallback(window:GLFW_Window, cb:GLFW_Windowposfun):Void {
		GLFW_WindowPosHandler.setCallback(window.ptr, cb);
		untyped __global__.glfwSetWindowPosCallback(window, Function.fromStaticFunction(GLFW_WindowPosHandler.nativeCallback));
	}

	static inline function setWindowSizeCallback(window:GLFW_Window, cb:GLFW_Windowsizefun):Void {
		GLFW_WindowSizeHandler.setCallback(window.ptr, cb);
		untyped __global__.glfwSetWindowSizeCallback(window, Function.fromStaticFunction(GLFW_WindowSizeHandler.nativeCallback));
	}

	static inline function setWindowCloseCallback(window:GLFW_Window, cb:GLFW_Windowclosefun):Void {
		GLFW_WindowCloseHandler.setCallback(window.ptr, cb);
		untyped __global__.glfwSetWindowCloseCallback(window, Function.fromStaticFunction(GLFW_WindowCloseHandler.nativeCallback));
	}

	static inline function setWindowRefreshCallback(window:GLFW_Window, cb:GLFW_Windowrefreshfun):Void {
		GLFW_WindowRefreshHandler.setCallback(window.ptr, cb);
		untyped __global__.glfwSetWindowRefreshCallback(window, Function.fromStaticFunction(GLFW_WindowRefreshHandler.nativeCallback));
	}

	static inline function setWindowFocusCallback(window:GLFW_Window, cb:GLFW_Windowfocusfun):Void {
		GLFW_WindowFocusHandler.setCallback(window.ptr, cb);
		untyped __global__.glfwSetWindowFocusCallback(window, Function.fromStaticFunction(GLFW_WindowFocusHandler.nativeCallback));
	}

	static inline function setWindowIconifyCallback(window:GLFW_Window, cb:GLFW_Windowiconifyfun):Void {
		GLFW_WindowIconifyHandler.setCallback(window.ptr, cb);
		untyped __global__.glfwSetWindowIconifyCallback(window, Function.fromStaticFunction(GLFW_WindowIconifyHandler.nativeCallback));
	}

	static inline function setWindowMaximizeCallback(window:GLFW_Window, cb:GLFW_Windowmaximizefun):Void {
		GLFW_WindowMaximizeHandler.setCallback(window.ptr, cb);
		untyped __global__.glfwSetWindowMaximizeCallback(window, Function.fromStaticFunction(GLFW_WindowMaximizeHandler.nativeCallback));
	}

	static inline function setFramebufferSizeCallback(window:GLFW_Window, cb:GLFW_Framebuffersizefun):Void {
		GLFW_FramebufferSizeHandler.setCallback(window.ptr, cb);
		untyped __global__.glfwSetFramebufferSizeCallback(window, Function.fromStaticFunction(GLFW_FramebufferSizeHandler.nativeCallback));
	}

	static inline function setWindowContentScaleCallback(window:GLFW_Window, cb:GLFW_Windowcontentscalefun):Void {
		GLFW_WindowContentScaleHandler.setCallback(window.ptr, cb);
		untyped __global__.glfwSetWindowContentScaleCallback(window, Function.fromStaticFunction(GLFW_WindowContentScaleHandler.nativeCallback));
	}

	static inline function setKeyCallback(window:GLFW_Window, cb:GLFW_Keyfun):Void {
		GLFW_KeyHandler.setCallback(window.ptr, cb);
		untyped __global__.glfwSetKeyCallback(window, Function.fromStaticFunction(GLFW_KeyHandler.nativeCallback));
	}

	static inline function setCharCallback(window:GLFW_Window, cb:GLFW_Charfun):GLFW_Charfun {
		GLFW_CharHandler.setCallback(window.ptr, cb);
		return untyped __global__.glfwSetCharCallback(window, Function.fromStaticFunction(GLFW_CharHandler.nativeCallback));
	}

	static inline function setCharModsCallback(window:GLFW_Window, cb:GLFW_Charmodsfun):GLFW_Charmodsfun {
		GLFW_CharModsHandler.setCallback(window.ptr, cb);
		return untyped __global__.glfwSetCharModsCallback(window, Function.fromStaticFunction(GLFW_CharModsHandler.nativeCallback));
	}

	static inline function setMouseButtonCallback(window:GLFW_Window, cb:GLFW_Mousebuttonfun):GLFW_Mousebuttonfun {
		GLFW_MouseButtonHandler.setCallback(window.ptr, cb);
		return untyped __global__.glfwSetMouseButtonCallback(window, Function.fromStaticFunction(GLFW_MouseButtonHandler.nativeCallback));
	}

	static inline function setCursorPosCallback(window:GLFW_Window, cb:GLFW_Cursorposfun):GLFW_Cursorposfun {
		GLFW_CursorPosHandler.setCallback(window.ptr, cb);
		return untyped __global__.glfwSetCursorPosCallback(window, Function.fromStaticFunction(GLFW_CursorPosHandler.nativeCallback));
	}

	static inline function setCursorEnterCallback(window:GLFW_Window, cb:GLFW_Cursorenterfun):GLFW_Cursorenterfun {
		GLFW_CursorEnterHandler.setCallback(window.ptr, cb);
		return untyped __global__.glfwSetCursorEnterCallback(window, Function.fromStaticFunction(GLFW_CursorEnterHandler.nativeCallback));
	}

	static inline function setScrollCallback(window:GLFW_Window, cb:GLFW_Scrollfun):GLFW_Scrollfun {
		GLFW_ScrollHandler.setCallback(window.ptr, cb);
		return untyped __global__.glfwSetScrollCallback(window, Function.fromStaticFunction(GLFW_ScrollHandler.nativeCallback));
	}

	static inline function setDropCallback(window:GLFW_Window, cb:GLFW_Dropfun):GLFW_Dropfun {
		GLFW_DropHandler.setCallback(window.ptr, cb);
		return untyped __global__.glfwSetDropCallback(window, Function.fromStaticFunction(GLFW_DropHandler.nativeCallback));
	}

	static inline function setErrorCallback(callback:GLFW_Errorfun):GLFW_Errorfun {
		GLFW_ErrorHandler.setCallback(callback);
		return untyped __global__.glfwSetErrorCallback(Function.fromStaticFunction(GLFW_ErrorHandler.nativeCallback));
	}

	static inline function setMonitorCallback(callback:GLFW_Monitorfun):GLFW_Monitorfun {
		GLFW_MonitorHandler.setCallback(callback);
		return untyped __global__.glfwSetMonitorCallback(Function.fromStaticFunction(GLFW_MonitorHandler.nativeCallback));
	}

	static inline function setJoystickCallback(callback:GLFW_Joystickfun):GLFW_Joystickfun {
		GLFW_JoystickHandler.setCallback(callback);
		return untyped __global__.glfwSetJoystickCallback(Function.fromStaticFunction(GLFW_JoystickHandler.nativeCallback));
	}
}
