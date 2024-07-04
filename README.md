Pasos para instalar el tema. (Para UR usamos un fork de sphinx_waigtail)

Hacer esto dentro del ambiente virtual activado.

1. Recomendable siempre tener separado build y source en el proyecto de Sphinx.
2. Dentro de source crear una carpeta llamada _themes
3. Allí clonar el repositorio o ubicar el archivo zip del tema escogido
4. Correr git submodule update --init y git submodule update --remote si esta 
en un repo clonado que quizas tenga dependencias.
5. Entrar a la carpeta del proyecto del tema.
6. Correr npm install para descargar dependencias (se debe crear la carpeta
node_modules).
7. Correr npm build 
8. Salir a la carpete _themes
9. Instalar el tema con python3 -m pip install -e nombre_carpeta_tema/.
10. Correr pip list y mirar que el tema haya quedado instalado. Copie el nombre
11. En el conf.py del proyecto cambie html_theme = 'nombre_tema_instalado_en_pip'

