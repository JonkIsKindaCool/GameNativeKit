import os
import re

# Regex para capturar macros (#define ...)
macro_regex = re.compile(r'^\s*#\s*define\s+(\w+)(.*)$')

# Regex para funciones: tipo nombre(args);
function_regex = re.compile(
    r'''([A-Za-z_]\w*(?:\s*\*+)?)   # tipo de retorno
        \s+([A-Za-z_]\w*)          # nombre de la función
        \s*\(([^)]*)\)\s*;         # argumentos
    ''', re.VERBOSE
)

# Regex para variables globales (simples)
variable_regex = re.compile(
    r'''([A-Za-z_]\w*(?:\s*\*+)?)   # tipo
        \s+([A-Za-z_]\w*)          # nombre
        \s*(=\s*[^;]+)?            # posible valor
        \s*;                       # ;
    ''', re.VERBOSE
)

def extraer_informacion_header(ruta_header):
    macros = []
    funciones = []
    variables = []

    with open(ruta_header, "r", encoding="utf-8", errors="ignore") as f:
        for linea in f:
            # Buscar macros
            m = macro_regex.match(linea)
            if m:
                macros.append(f"{m.group(1)} {m.group(2).strip()}")
                continue

            # Buscar funciones
            fmatch = function_regex.search(linea)
            if fmatch:
                tipo = fmatch.group(1)
                nombre = fmatch.group(2)
                args = fmatch.group(3)
                funciones.append(f"{tipo} {nombre}({args})")
                continue

            # Buscar variables simples
            vmatch = variable_regex.search(linea)
            if vmatch:
                tipo = vmatch.group(1)
                nombre = vmatch.group(2)
                valor = vmatch.group(3) if vmatch.group(3) else ""
                variables.append(f"{tipo} {nombre}{valor}")
                continue

    return macros, funciones, variables


def procesar_carpeta(carpeta):
    for archivo in os.listdir(carpeta):
        if archivo.endswith(".h") or archivo.endswith(".hpp"):
            ruta = os.path.join(carpeta, archivo)
            macros, funciones, variables = extraer_informacion_header(ruta)

            salida = os.path.splitext(archivo)[0] + ".txt"
            ruta_salida = os.path.join(carpeta, salida)

            with open(ruta_salida, "w", encoding="utf-8") as out:
                out.write(f"== Macros ==\n")
                for m in macros:
                    out.write(m + "\n")

                out.write(f"\n== Funciones ==\n")
                for f in funciones:
                    out.write(f + "\n")

                out.write(f"\n== Variables ==\n")
                for v in variables:
                    out.write(v + "\n")

            print(f"Procesado: {archivo} → {salida}")


# ---- EDITA ESTA RUTA ----
carpeta_headers = "include/GLFW"

procesar_carpeta(carpeta_headers)
