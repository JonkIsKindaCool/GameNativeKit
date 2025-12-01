package bindings.sdl3;

import bindings.sdl3.SDL_Rect.Raw_SDL_Rect;
import cpp.ConstStar;
import bindings.sdl3.SDL_Properties.SDL_PropertiesID;
import bindings.sdl3.SDL_Keycode;
import cpp.Int32;
import cpp.ConstPointer;
import bindings.sdl3.SDL_Video;
import cpp.ConstCharStar;
import cpp.Pointer;
import cpp.UInt32;

typedef SDL_KeyboardID = UInt32;

@:include("vendor/include/SDL3/SDL.h")
@:buildXml("<include name=\"${haxelib:GameNativeKit}/include_sdl3.xml\"/>")
extern class SDL_Keyboard {
	@:native("SDL_PROP_TEXTINPUT_TYPE_NUMBER") public static var TEXTINPUT_TYPE_NUMBER:String;
	@:native("SDL_PROP_TEXTINPUT_CAPITALIZATION_NUMBER") public static var TEXTINPUT_CAPITALIZATION_NUMBER:String;
	@:native("SDL_PROP_TEXTINPUT_AUTOCORRECT_BOOLEAN") public static var TEXTINPUT_AUTOCORRECT_BOOLEAN:String;
	@:native("SDL_PROP_TEXTINPUT_MULTILINE_BOOLEAN") public static var TEXTINPUT_MULTILINE_BOOLEAN:String;
	@:native("SDL_PROP_TEXTINPUT_ANDROID_INPUTTYPE_NUMBER") public static var TEXTINPUT_ANDROID_INPUTTYPE_NUMBER:String;

	@:native("SDL_HasKeyboard")
	public static function hasKeyboard():Bool;

	@:native("SDL_GetKeyboards")
	public static function getKeyboards(count:Pointer<Int32>):Pointer<SDL_KeyboardID>;

	@:native("SDL_GetKeyboardNameForID")
	public static function getKeyboardNameForId(instance_id:SDL_KeyboardID):ConstCharStar;

	@:native("SDL_GetKeyboardFocus")
	public static function getKeyboardFocus():SDLWindow;

	@:native("SDL_GetKeyboardState")
	public static function getKeyboardState(numKeys:Pointer<Int32>):ConstPointer<Bool>;

	@:native("SDL_ResetKeyboard")
	public static function resetKeyboard():Void;

	@:native("SDL_GetModState")
	public static function getModState():SDL_Keymod;

	@:native("SDL_SetModState")
	public static function setModState(modstate:SDL_Keymod):Void;

	@:native("SDL_GetKeyFromScancode")
	public static function getKeyFromScancode(scancode:SDL_Scancode, modstate:SDL_Keymod, key_event:Bool):SDL_Keymod;

	@:native("SDL_GetScancodeFromKey")
	public static function getScancodeFromKey(key:SDL_Keycode, modstate:Pointer<SDL_Keymod>):SDL_Scancode;

	@:native("SDL_SetScancodeName")
	public static function SetScancodeName(scancode:SDL_Scancode, name:ConstCharStar):Bool;

	@:native("SDL_GetScancodeName")
	public static function getScancodeName(scancode:SDL_Scancode):ConstCharStar;

	@:native("SDL_GetScancodeFromName")
	public static function getScancodeFromName(name:ConstCharStar):SDL_Scancode;

	@:native("SDL_GetKeyName")
	public static function getKeyName(key:SDL_Keycode):ConstCharStar;

	@:native("SDL_GetKeyFromName")
	public static function getKeyFromName(name:ConstCharStar):SDL_Keycode;

	@:native("SDL_StartTextInput")
	public static function startTextInput(window:SDLWindow):Bool;

	@:native("SDL_StartTextInputWithProperties")
	public static function startTextInputWithProperties(window:SDLWindow, props:SDL_PropertiesID):Bool;

	@:native("SDL_TextInputActive")
	public static function textInputActive(window:SDLWindow):Bool;

	@:native("SDL_StopTextInput")
	public static function stopTextInput(window:SDLWindow):Bool;

	@:native("SDL_ClearComposition")
	public static function clearComposition(window:SDLWindow):Bool;

	@:native("SDL_SetTextInputArea")
	public static function setTextInputArea(window:SDLWindow, rect:ConstStar<Raw_SDL_Rect>, cursor:Int32):Bool;

	@:native("SDL_GetTextInputArea")
	public static function getTextInputArea(window:SDLWindow, rect:SDL_Rect, cursor:Pointer<Int32>):Bool;

	@:native("SDL_HasScreenKeyboardSupport")
	public static function hasScreenKeyboardSupport():Bool;

	@:native("SDL_ScreenKeyboardShown")
	public static function SDL_ScreenKeyboardShown(window:SDLWindow):Bool;
}

@:include("vendor/include/SDL3/SDL.h")
@:buildXml("<include name=\"${haxelib:GameNativeKit}/include_sdl3.xml\"/>")
extern enum SDL_TextInputType {
	@:native("SDL_TEXTINPUT_TYPE_TEXT") TEXT;
	@:native("SDL_TEXTINPUT_TYPE_TEXT_NAME") TEXT_NAME;
	@:native("SDL_TEXTINPUT_TYPE_TEXT_EMAIL") TEXT_EMAIL;
	@:native("SDL_TEXTINPUT_TYPE_TEXT_USERNAME") TEXT_USERNAME;
	@:native("SDL_TEXTINPUT_TYPE_TEXT_PASSWORD_HIDDEN") TEXT_PASSWORD_HIDDEN;
	@:native("SDL_TEXTINPUT_TYPE_TEXT_PASSWORD_VISIBLE") TEXT_PASSWORD_VISIBLE;
	@:native("SDL_TEXTINPUT_TYPE_NUMBER") NUMBER;
	@:native("SDL_TEXTINPUT_TYPE_NUMBER_PASSWORD_HIDDEN") NUMBER_PASSWORD_HIDDEN;
	@:native("SDL_TEXTINPUT_TYPE_NUMBER_PASSWORD_VISIBLE") NUMBER_PASSWORD_VISIBLE;
}

@:include("vendor/include/SDL3/SDL.h")
@:buildXml("<include name=\"${haxelib:GameNativeKit}/include_sdl3.xml\"/>")
extern enum SDL_Capitalization {
	@:native("SDL_CAPITALIZE_NONE") NONE;
	@:native("SDL_CAPITALIZE_SENTENCES") SENTENCES;
	@:native("SDL_CAPITALIZE_WORDS") WORDS;
	@:native("SDL_CAPITALIZE_LETTERS") LETTERS;
}
