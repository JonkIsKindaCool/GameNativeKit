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
		GLFW.windowHint(GLFW.OPENGL_FORWARD_COMPAT, GLFW.TRUE);

		var window:GLFW_Window = GLFW.createWindow(800, 600, "Example", null, null);
		if (window == null) {
			trace("failed window");
			GLFW.terminate();
			return;
		}

		GLFW.makeContextCurrent(window);

		GLFW.setKeyCallback(window, keyHandler);
        GLFW.setMouseButtonCallback(window, mouseHandler);
        GLFW.setCursorPosCallback(window, cursorPosHandler);

		while (GLFW.windowShouldClose(window) == GLFW.FALSE) {
			GLFW.swapBuffers(window);
			GLFW.pollEvents();
		}

		GLFW.terminate();
	}

	static function keyHandler(win: GLFW_Window, key:Int32, scancode:Int32, action:Int32, mods:Int32) {
		trace("Key Pressed Callback", win, key, scancode, action, mods);
	}

    static function mouseHandler(window:GLFW_Window, button:Int32, action:Int32, mods:Int32) {
		trace("Mouse Button Callback", window, button, action, mods);
    }
    
    static function cursorPosHandler(window:GLFW_Window, xPos:Float, yPos:Float) {
        trace("Cursor Movement Handler", window, xPos, yPos);
    }
}
