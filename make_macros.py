import re

INPUT_FILE = "vendor/include/GLFW/glfw3.txt"
OUTPUT_FILE = "GLFW.hx"

def sanitize_name(name):
    # Remove GLFW_
    if name.startswith("GLFW_"):
        name = name[len("GLFW_"):]
    return name

def detect_type(value):
    value = value.strip()
    # Expression
    if any(op in value for op in ["|", "&", "<<", ">>", "(", ")"]):
        return "Int"
    # Hex
    if value.startswith("0x"):
        return "Int"
    # Integer
    if re.fullmatch(r"-?\d+", value):
        return "Int"
    return "Dynamic"

def generate_haxe(macros):
    lines = []

    lines.append("package bindings.glfw;\n")
    lines.append('@:include("vendor/include/GLFW/glfw3.h")')
    lines.append('@:buildXml("<include name=\\"${haxelib:GameNativeKit}/include_glfw.xml\\"/>")')
    lines.append("extern class GLFW {")
    lines.append("")

    for name, value in macros:
        clean = sanitize_name(name)
        haxe_type = detect_type(value)
        lines.append(f'    public static inline var {clean}:{haxe_type} = {value};')

    lines.append("}")
    return "\n".join(lines)

def parse_macros(text):
    lines = text.splitlines()
    parsed = []

    macro_regex = re.compile(r"^(\w+)\s+(.*)$")

    for line in lines:
        line = line.strip()
        if not line or line.startswith("/*"):
            continue

        m = macro_regex.match(line)
        if m:
            name, value = m.groups()
            parsed.append((name, value.strip()))
    return parsed

def main():
    with open(INPUT_FILE, "r", encoding="utf-8") as f:
        text = f.read()

    macros = parse_macros(text)
    haxe_code = generate_haxe(macros)

    with open(OUTPUT_FILE, "w", encoding="utf-8") as f:
        f.write(haxe_code)

    print(f"[OK] Generado en {OUTPUT_FILE}")

if __name__ == "__main__":
    main()
