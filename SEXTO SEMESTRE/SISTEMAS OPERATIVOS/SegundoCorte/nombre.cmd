
cls
mkdir carpeta1
cd carpeta1
mkdir carpeta2
cd carpeta2
mkdir carpeta3
cd carpeta3
type nul> muestra1.txt 
type nul> muestra2.txt
attrib -r -a -s -h -o -i -x -p -u muestra2.txt
attrib +r +a +s -h +o +i +x +p +u muestra1.txt
echo Lista de archivos:
attrib
echo Atributos archivo muestra1.txt sin cambios
attrib muestra1.txt
echo Atributos archivo muestra1.txt quitandolos
attrib -a -h -r -s muestra1.txt
attrib muestra1.txt
echo  Atributos archivo muestra2.txt agregandolos
attrib +r +a +s -h +o +i +x +p +u muestra2.txt
attrib muestra2.txt
pause