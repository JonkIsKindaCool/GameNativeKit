import os
import re

macro_regex = re.compile(r'^\s*#\s*define\s+(\w+)(.*)$')

function_regex = re.compile(
    r'''([A-Za-z_]\w*(?:\s*\*+)?) 
        \s+([A-Za-z_]\w*)         
        \s*\(([^)]*)\)\s*;        
    ''', re.VERBOSE
)

variable_regex = re.compile(
    r'''([A-Za-z_]\w*(?:\s*\*+)?)  
        \s+([A-Za-z_]\w*)         
        \s*(=\s*[^;]+)?            
        \s*;                      
    ''', re.VERBOSE
)

def extract_header_info(header_path):
    macros = []
    functions = []
    variables = []

    with open(header_path, "r", encoding="utf-8", errors="ignore") as f:
        for line in f:
            m = macro_regex.match(line)
            if m:
                macros.append(f"{m.group(1)} {m.group(2).strip()}")
                continue

            fmatch = function_regex.search(line)
            if fmatch:
                type_ = fmatch.group(1)
                name = fmatch.group(2)
                args = fmatch.group(3)
                functions.append(f"{type_} {name}({args})")
                continue

            vmatch = variable_regex.search(line)
            if vmatch:
                type_ = vmatch.group(1)
                name = vmatch.group(2)
                value = vmatch.group(3) if vmatch.group(3) else ""
                variables.append(f"{type_} {name}{value}")
                continue

    return macros, functions, variables


def process(folder):
    for filename in os.listdir(folder):
        if filename.endswith(".h") or filename.endswith(".hpp"):
            path = os.path.join(folder, filename)
            macros, functions, variables = extract_header_info(path)

            output_name = os.path.splitext(filename)[0] + ".txt"
            output_path = os.path.join(folder, output_name)

            with open(output_path, "w", encoding="utf-8") as out:
                out.write("== Macros ==\n")
                for m in macros:
                    out.write(m + "\n")

                out.write("\n== Functions ==\n")
                for func in functions:
                    out.write(func + "\n")

                out.write("\n== Variables ==\n")
                for v in variables:
                    out.write(v + "\n")

            print(f"Processed: {filename} → {output_name}")


target = "vendor/include/GLFW"
process(target)
