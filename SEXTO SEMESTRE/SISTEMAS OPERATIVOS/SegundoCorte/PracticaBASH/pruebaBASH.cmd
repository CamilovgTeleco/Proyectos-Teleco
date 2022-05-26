cls
mkdir carpeta1
cd carpeta1
mkdir carpeta2
cd carpeta2
mkdir carpeta3
cd carpeta3
type nul>archivo1.txt
echo attrib>archivo1.txt
echo pause>archivo1.txt
Move archivo1.txt archivo1.cmd
mkdir carpeta_muestra
type nul>muestra1.txt 
type nul>muestra2.txt
attrib -r -a -s -h -o -i -x -p -u muestra2.txt
attrib +r +a +s -h +o +i +x +p +u muestra1.txt
echo Lista de archivos:
attrib
echo Atributos archivo n1.cmd sin cambios
attrib n1.cmd
echo Atributos archivo n1.cmd quitandolos
attrib -a -h -r -s archivo1.cmd
attrib archivo1.cmd
echo  Atributos archivo archivo1.cmd agregandolos
attrib +r +a +s -h +o +i +x +p +u n1.cmd
attrib archivo1.cmd
echo Atributos de archivos, muestra1 con todos los atributos y muestra 2 sin atributos
attrib
pause
