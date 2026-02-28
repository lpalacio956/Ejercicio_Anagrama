# 🔤 Verificador de Anagramas - Flutter

Aplicación móvil desarrollada en **Flutter** como parte de la evaluación de la asignatura **Programación de Dispositivos Móviles**.

El objetivo de la aplicación es validar si dos palabras o frases ingresadas por el usuario son **anagramas**, aplicando conceptos básicos de lógica de programación y programación orientada a objetos.

---

## 📱 Descripción del Proyecto

La aplicación permite:

- Ingresar dos palabras o frases
- Ignorar:
  - Espacios
  - Signos de puntuación
  - Diferencias entre mayúsculas y minúsculas
- Validar si ambas entradas contienen exactamente las mismas letras con la misma frecuencia
- Mostrar un resultado visual indicando si son o no anagramas

---

## 🧠 Lógica de Validación

La aplicación realiza los siguientes pasos:

1. Convierte ambas cadenas a minúsculas.
2. Elimina caracteres no alfabéticos mediante expresiones regulares.
3. Convierte las cadenas en listas de caracteres.
4. Ordena las listas.
5. Compara ambas listas para determinar si son iguales.

Si coinciden → Son anagramas.  
Si no coinciden → No son anagramas.

---

## ✅ Ejemplos de Anagramas

- `amor` → `roma`
- `cosa` → `saco`
- `escuela` → `secuela`
- `televisor` → `revelisto`

---

## 🏗️ Tecnologías Utilizadas

- Flutter
- Dart
- Material Design
- StatefulWidget
- Expresiones regulares (RegExp)

---

## 🎨 Características de la Interfaz

- Diseño con Material Design
- Validación de campos obligatorios
- Limpieza automática después de validar
- Resultados con colores dinámicos:
  - 🟢 Verde → Son anagramas
  - 🔴 Rojo → No son anagramas
  - 🟠 Naranja → Campos vacíos

---

<img width="688" height="1260" alt="image" src="https://github.com/user-attachments/assets/52bef9fd-97e2-4aff-9916-f89cc7b01b42" />
<img width="656" height="1276" alt="image" src="https://github.com/user-attachments/assets/b3e0d2e4-6b5b-438e-b09e-2b1462f2dce8" />
<img width="651" height="1310" alt="image" src="https://github.com/user-attachments/assets/1ee731e6-ffa6-4ade-9c42-c6c17eb56b28" />



