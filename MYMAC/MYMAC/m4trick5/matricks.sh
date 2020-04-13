#!/bin/bash 

x=0 
while [ $x = 0 ] 
do 
           clear 
           cat print.txt  
           sleep 1  
           echo "1.NIVEL BÁSICO"
           echo "2.INTERMEDIO" 
           echo "3.AVANZADO" 
           echo "4.PUNTOS"  
           echo "5.EXIT" 
           sleep 3 
           echo .......................................................
           echo "Bienvenido elige una opción (1-4) - Y presiona Enter" 
           read answer  

           case "$answer" in 
                  1) 
                  echo "Starting..."
                  x=1 
                  numero=$(($RANDOM%10))
                  respuesta=11
                  cont=0 
                  points=0
                  while [ $numero -ne $respuesta ]
                  do
                  let cont=cont+1
                  if [ $cont -gt 5 ]
                  then
                  echo "Intentos agotados"
              exit
               else
                 read -p "¿Cual es el numero? 1-10: " respuesta
                 echo "Numero de intentos $cont de 5."
                 if [ $numero -lt $respuesta ]
                 then
                 echo "El numero es menor a $respuesta" 
                 elif [ $numero -gt $respuesta ]
                 then
                 echo "EL numero es mayor a $respuesta"
                     fi 
                        fi 
                           done
                 echo "Correcto, el numero es $numero." 
                 p1=1
                 echo "Tienes $p1 punto más." 
                 sleep 15 
                 ./matricks.sh 
                 
                 
                  ;;  
                  2)
                  echo "Starting..."
                  x=1 
                  numero=$(($RANDOM%10))
                  respuesta=11
                  cont=0 
                 
                  while [ $numero -ne $respuesta ]
                  do
                  let cont=cont+1
                  if [ $cont -gt 4 ]
                  then
                  echo "Intentos agotados"
              exit
               else
                 read -p "¿Cual es el numero? 1-10: " respuesta
                 echo "Numero de intentos $cont de 4."
                 if [ $numero -lt $respuesta ]
                 then
                 echo "El numero es menor a $respuesta" 
                 elif [ $numero -gt $respuesta ]
                 then
                 echo "EL numero es mayor a $respuesta"
                     fi 
                        fi 
                           done
                 echo "Correcto, el numero es $numero." 
                 p2=5
                 echo "Tienes $p2 puntos más" 
                 sleep 30 
                 ;;  
                  3)
                  echo "Starting..."
                  x=1 
                  numero=$(($RANDOM%10))
                  respuesta=11
                  cont=0 
                  
                  while [ $numero -ne $respuesta ]
                  do
                  let cont=cont+1
                  if [ $cont -gt 4 ]
                  then
                  echo "Intentos agotados"
             exit
               else
                 read -p "¿Cual es el numero? 1-11: " respuesta
                 echo "Numero de intentos $cont de 3."
                 if [ $numero -lt $respuesta ]
                 then
                 echo "El numero es menor a $respuesta" 
                 elif [ $numero -gt $respuesta ]
                 then
                 echo "EL numero es mayor a $respuesta"
                     fi 
                        fi 
                           done
                 echo "Correcto, el numero es $numero." 
                 p3=10
                 echo "Tienes $p3 puntos más." 
                 sleep 30  
                 ./matricks.sh
                  4) 
                 #resultado=[p1+p2+p3] 
                 #echo "Puntos Totales: $resultado"
                 ./matricks.sh
                 ;;  
                  5)
                  echo "Starting..."
                  x=1 
                  numero=$(($RANDOM%10))
                  respuesta=11
                  cont=0 
                
                  while [ $numero -ne $respuesta ]
                  do
                  let cont=cont+1
                  if [ $cont -gt 4 ]
                  then
                  echo "Intentos agotados"
             exit
               else
                 read -p "¿Cual es el numero? 1-11: " respuesta
                 echo "Numero de intentos $cont de 3."
                 if [ $numero -lt $respuesta ]
                 then
                 echo "El numero es menor a $respuesta" 
                 elif [ $numero -gt $respuesta ]
                 then
                 echo "EL numero es mayor a $respuesta"
                     fi 
                        fi 
                           done
                 echo "Correcto, el numero es $numero." 
                 points=(p1+p2+p3)
                 echo "Tienes $points puntos" 
                 sleep 30

 
        esac 

done 
