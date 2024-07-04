#!/bin/bash

# Colores
GREEN='\033[0;32m'
RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Función para imprimir mensajes de información
info() {
    echo -e "${GREEN}ℹ️  $1${NC}"
}

# Función para imprimir mensajes de error
error() {
    echo -e "${RED}❌ $1${NC}"
}

# Función para imprimir mensajes de entrada
input() {
    echo -e "${BLUE}🔎 $1${NC}"
}

#Capturando el CTRL+C
trap "echo 'Script interrumpido por el usuario'; exit 1" SIGINT

#Verificar si npm esta instalado
if ! command -v npm &> /dev/null; then
    error "Error: npm no está instalado. Por favor, instale Node.js y npm."
    sleep 5
    exit 1
fi

# Verificar si estamos en un ambiente virtual
if [ -z "$VIRTUAL_ENV" ]; then
    error "Error: Este script debe ejecutarse dentro de un ambiente virtual activado."
    info "Por favor, active su ambiente virtual e intente de nuevo."
    sleep 5
    exit 1
fi

info "Usando el ambiente virtual: $VIRTUAL_ENV"

# 1. Estar en la raiz del proyecto

cd docs || { error "Error: No se pudo acceder al directorio docs"; sleep 3; exit 1; }

if [ ! -d "source" ]; then
    error "No existe carpeta source."
    sleep 5
    exit 1
fi


# 2. Crear carpeta _themes dentro de source
cd source

if [ ! -d "_themes" ]; then
    info "Directorio _themes no existe. Creando..."
    mkdir _themes
else
    info "Directorio _themes ya existe. Entrando..."
fi

cd _themes

# 3. Preguntar si ya tiene el repo clonado o la carpeta del tema
# Clonar el repositorio del tema (asume que es un repo de git)

input "¿Su proyecto ya cuenta con el repo clonado o la carpeta del tema? (y/N): " 
read has_theme

if [[ $has_theme =~ ^[Yy]$ ]]; then
    # Si ya tiene el tema, pedir el nombre de la carpeta
    input "Por favor, ingrese el nombre de la carpeta del tema: " 
    read THEME_NAME
    if [ ! -d "$THEME_NAME" ]; then
        error "Error: La carpeta $THEME_NAME no existe en docs/source/_themes"
        sleep 5
        exit 1
    fi
else
    # Si no tiene el tema, pedir la URL del repo
    input -p "Por favor, ingrese la URL del repositorio del tema: " 
    readREPO_URL
    
    # Extraer el nombre del tema de la URL del repositorio
    THEME_NAME=$(basename -s .git "$REPO_URL")
        
    # Clonar el repositorio del tema
    info "Clonando el repositorio..."
    git clone "$REPO_URL"
    if [ $? -ne 0 ]; then
        echo "Error: No se pudo clonar el repositorio"
        exit 1
    fi
fi

cd $THEME_NAME

# 4. Actualizar submódulos si existen
info "Actualizando submódulos..."
git submodule update --init
git submodule update --remote

# 5. Instalar dependencias de Python
info "Instalando dependencias de Python..."
python3 -m pip install --upgrade -r requirements.txt

info "Limpiando..."
make clean
make clean-frontend

# 6. Instalar dependencias de Node.js
info "Instalando dependencias de Node.js..."
npm install
npm ci

# 7. Construir el tema
info "Construyendo el tema..."
make setup
make frontend
make install
make install-for-development
make docs
make lint
make lint-minimal
npm run build

# 8. Volver a la carpeta _themes
cd ..

# 9. Instalar el tema en modo editable
info "Instalando el tema en modo editable..."
python3 -m pip install -e $THEME_NAME/.

# 10. Listar paquetes instalados y filtrar el tema
THEME_NAME_INSTALLED=$(pip list | grep "$THEME_NAME" | awk '{print $1}')

if [ -z "$THEME_NAME_INSTALLED" ]; then
    error "Error: El tema no se instaló correctamente"
    sleep 5
    exit 1
fi

info "Tema instalado: $THEME_NAME_INSTALLED"

# 11. Actualizar conf.py
cd ../..  # Volver a la raíz del proyecto
info "Actualizando conf.py..."
cp source/conf.py source/conf.py.bak
sed -i "s/html_theme = .*/html_theme = '$THEME_NAME_INSTALLED'/" source/conf.py
info "Se ha creado una copia de seguridad de conf.py como conf.py.bak"

info "Proceso completado. Por favor, verifica el archivo source/conf.py"


info "Proceso completado. Se ha creado una copia de seguridad de conf.py como conf.py.bak"
info "Por favor, verifica el archivo source/conf.py"

info "Resumen de acciones:"
info "- Tema instalado: $THEME_NAME_INSTALLED"
info "- Configuración actualizada en conf.py"
info "- Copia de seguridad creada: conf.py.bak"