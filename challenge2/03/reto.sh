#!/bin/bash

procedure(){
    mkdir nueva_carpeta
    cd nueva_carpeta
    echo "Creando archivo_nuevo.txt"
    touch archivo_nuevo.txt
    
    echo "Cambiando el nombre 'archivo_viejo.txt'"
    mv archivo_nuevo.txt archivo_viejo.txt 
    
    echo "Nueva linea de texto" > archivo_nuevo.txt

    echo "Grant permisos de leer, escribir y ejecutarlo"
    chmod ugo=wrx archivo_viejo.txt
    ls -li 
    
    cd ..
    echo "Ahora estamos en $PWD"

    read -t 3 -n 1 -p "Creamos un hard link un sym_link? l/s" answ

    if [[ -z "$answ" ]] && answ="l"
    then 
        ln nueva_carpeta/archivo_viejo.txt enlace.ln
        echo ""
        echo "Enlace HARD creado y eliminando carpeta"
        rm -rf nueva_carpeta
        ls -li *.ln

    else
        ln -sf nueva_carpeta/archivo_viejo.txt enlace.ln
        echo ""
        echo "Enlace SYM creado y eliminando carpeta"
        rm -rf nueva_carpeta
        ls -li *.ln
        
    fi
}

echo "Accediendo a la siguiente ruta: $HOME"

cd $HOME

if [ -e enlace.ln ]
then
    rm -rf enlace.ln
fi

echo "Creando carpeta \tNueva carpeta"

if [ ! -e nueva_carpeta ]
then
    procedure
else
    rm -rf nueva_carpeta
    procedure
fi

echo "reto realizado"

read -t 10 -n 1 -p "Desea mantener el enlace? y/n" resp

if [[ -z "$resp" ]] && resp="y"
then
    echo -e "\nenlace no borrado"
else
    rm -rf enlace.ln
    ls  *.ln
    echo -e "\nenlace borrado!"
fi