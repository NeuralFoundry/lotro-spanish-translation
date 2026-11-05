# LOTRO en Español

**[Español](#español)**&nbsp;&nbsp;&nbsp;&nbsp;**[English](#english)**

## Español

Traducción no oficial al español de The Lord of the Rings Online. Más de 525.000 textos del juego están en español, incluidos menús, habilidades, objetos, misiones y diálogos.

### Instalación

1. Descarga **[LOTRO-Espanol.zip](https://github.com/NeuralFoundry/lotro-spanish-translation/releases/latest/download/LOTRO-Espanol.zip)**.
2. Haz clic derecho en el archivo descargado y elige **Extraer todo**.
3. Cierra el juego y el launcher.
4. En la carpeta extraída, haz doble clic en **Instalar.cmd**. Si Windows pide permiso, responde **Sí**.
5. Cuando veas **Instalación completada**, inicia el juego como siempre.

La instalación tarda más o menos un minuto. La carpeta del juego se encuentra automáticamente. Si no se encuentra, arrastra la carpeta del juego a la ventana y pulsa Enter.

### Desinstalación

Cierra el juego y haz doble clic en **Desinstalar.cmd**. El archivo del juego vuelve exactamente a como estaba antes de la instalación.

### Después de una actualización del juego

Una actualización puede hacer que algunos textos vuelvan a aparecer en inglés. Cierra el juego y vuelve a ejecutar **Instalar.cmd**.

### Requisitos

* Windows 10 o Windows 11
* El idioma del juego debe ser **English**
* Unos 400 MB libres en la unidad donde está el juego

**No necesitas instalar Python.** Viene incluido en el paquete. Tampoco hace falta ningún otro programa.

### Preguntas frecuentes

**Windows muestra un aviso de seguridad.**
Es normal con los archivos descargados de internet. Haz clic en **Más información** y después en **Ejecutar de todas formas**, o directamente en **Ejecutar**.

**Me sale el aviso "El juego o el launcher está abierto".**
Cierra por completo el juego y el launcher y vuelve a ejecutar Instalar.cmd.

**¿Por qué los nombres de lugares están en inglés?**
Los nombres de lugares, mapas, libros y capítulos se dejaron a propósito en su forma original. Así coinciden con los mapas, las guías y los nombres que usan los demás jugadores.

**Tengo instalada la traducción al turco.**
No pasa nada. Instalar.cmd la quita primero y después instala el español.

**He encontrado un error en la traducción.**
Puedes avisar en la sección [Issues](https://github.com/NeuralFoundry/lotro-spanish-translation/issues) con una captura de pantalla.

### Aviso legal

Este proyecto es una obra no oficial hecha por fans. No tiene relación con Standing Stone Games, Daybreak Game Company ni Middle-earth Enterprises. The Lord of the Rings Online y los nombres relacionados son marcas comerciales de sus respectivos propietarios. Este repositorio no contiene los textos originales del juego. La traducción modifica el archivo de idioma del juego en tu ordenador. La usas bajo tu propia responsabilidad.

## English

An unofficial Spanish translation of The Lord of the Rings Online. More than 525,000 strings are translated, including menus, skills, items, quests and dialogue.

### Install

1. Download **[LOTRO-Espanol.zip](https://github.com/NeuralFoundry/lotro-spanish-translation/releases/latest/download/LOTRO-Espanol.zip)**.
2. Right-click the downloaded file and choose **Extract All**.
3. Close the game and the launcher.
4. In the extracted folder, double-click **Instalar.cmd** (install). Choose **Yes** if Windows asks for permission.
5. When the window says **Instalación completada** (installation complete), start the game as usual.

The game folder is found automatically. If it is not, drag the game folder into the window and press Enter.

### Uninstall

Close the game and double-click **Desinstalar.cmd** (uninstall). The game file returns to exactly what it was before installation.

### After a game update

An update can turn some text back to English. Close the game and run **Instalar.cmd** again.

### Requirements

* Windows 10 or Windows 11
* Game language set to **English**
* About 400 MB of free space on the game's drive

**You do not need to install Python.** It comes inside the package. Nothing else needs to be installed.

The Turkish translation is available too: [lotro-turkish-translation](https://github.com/NeuralFoundry/lotro-turkish-translation). If it is installed, Instalar.cmd removes it first.

### How it works

Only `client_local_English.dat` is changed. The translated text tables are appended to the end of the file and the file header is pointed at them, so no original byte is overwritten. Uninstalling restores the original header and removes the appended data. Each step is verified with a SHA-256 of the whole file, and an interrupted install is undone on the next run. Translations are stored by a hash of the English text, so this repository contains no game text.

### For developers

* `app/lotro_es.py`: the installer (`install`, `uninstall`, `status`, `check`, `find`). `--game <folder>` skips the search.
* `translations/*.tsv`: one `key<TAB>spanish` line per string. The key is the first 8 bytes of a BLAKE2b hash of the English text, as UTF-8.
* `tools/make_translations.py`: builds the translation files from `english<TAB>spanish` files.
* `tools/build_release.py`: builds the release ZIP with the official embedded Python.

Requires Python 3.8 or newer on Windows, with no third-party packages.

### License

The code is released under the [MIT License](LICENSE). The translations are a non-commercial fan work. The Lord of the Rings Online and related names are trademarks of their respective owners. This project is not affiliated with Standing Stone Games, Daybreak Game Company or Middle-earth Enterprises.
