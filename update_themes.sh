#!/bin/bash

# When we do some changes in the theme, we need to recompile it and reinstall 
# it in the project

# Directorio base
BASE_DIR="./docs/source/_themes"

# Cambiar al directorio de temas
cd "$BASE_DIR" || exit

# Guardar los nombres de las carpetas (temas)
THEMES=(*)

# Ciclo por cada tema
for THEME in "${THEMES[@]}"; do
    echo "Procesando tema: $THEME"
    
    # Entrar al directorio del tema
    cd "$THEME" || continue
    
    # Ejecutar comandos
    make clean
    make clean-frontend
    npm install
    npm ci
    make setup
    make frontend
    make install
    make install-for-development
    make docs
    make lint
    make lint-minimal
    npm run build
    
    # Volver al directorio de temas
    cd ..
    
    # Instalar el tema
    python3 -m pip install -e "$THEME"
    
    echo "Tema $THEME procesado e instalado."
    echo "--------------------------------"
done

echo "Todos los temas han sido procesados e instalados."