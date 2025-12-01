import bindings.sdl3.SDL_Rect;
import bindings.sdl3.SDL_Rect.SDL_FRect;
import bindings.sdl3.SDL_Rect.SDL_Point;
import bindings.glad.Glad;
import haxe.Int32;
import bindings.glfw.GLFW;

class Main {
	static function main() {
		if (GLFW.init() == 0) {
			trace("glfw init failed");
			return;
		}

		GLFW.windowHint(GLFW.CONTEXT_VERSION_MAJOR, 3);
		GLFW.windowHint(GLFW.CONTEXT_VERSION_MINOR, 3);
		GLFW.windowHint(GLFW.OPENGL_PROFILE, GLFW.OPENGL_CORE_PROFILE);

		var window:GLFW_Window = GLFW.createWindow(800, 600, "Example", null, null);
		if (window == null) {
			trace("failed window");
			GLFW.terminate();
			return;
		}

		GLFW.makeContextCurrent(window);

		if (Glad.loadGlLoader(GLFW.getProcAddress) == Glad.FALSE) {
			throw "Loading Glad fail";
		}

		Glad.viewport(0, 0, 800, 600);

		GLFW.setKeyCallback(window, keyHandler);
		GLFW.setMouseButtonCallback(window, mouseHandler);
		GLFW.setCursorPosCallback(window, cursorPosHandler);
		GLFW.setWindowSizeCallback(window, sizeHandler);

		while (GLFW.windowShouldClose(window) == GLFW.FALSE) {
			Glad.clearColor(0, 1, 0, 1);
			Glad.clear(Glad.COLOR_BUFFER_BIT);

			GLFW.swapBuffers(window);
			GLFW.pollEvents();
		}

		GLFW.terminate();
	}

	static function sizeHandler(win:GLFW_Window, width: Int, height: Int) {
		Glad.viewport(0, 0, width, height);
		trace("Changed viewport", width, height);
	}

	static function keyHandler(win:GLFW_Window, key:Int32, scancode:Int32, action:Int32, mods:Int32) {
		trace("Key Pressed Callback", win, key, scancode, action, mods);
	}

	static function mouseHandler(window:GLFW_Window, button:Int32, action:Int32, mods:Int32) {
		trace("Mouse Button Callback", window, button, action, mods);
	}

	static function cursorPosHandler(window:GLFW_Window, xPos:Float, yPos:Float) {
	}
}
