#Wadodos#

##Pruebas de servidor wado2 de dcm4chee##

Requiere Ruby 1.9.2

Instalar los siguientes gems:

gem install happymapper  
gem install awesome_print  

Hay que correr el happymapper_test.rb
Recibe el XML que devuelve el wado2 y queda todo mapeado como clases de ruby!
Se puede modificar lo que muestra al final. Queda todo con subclases de acuerdo a si tiene estudios, series o imagenes la respuesta de wado2 que parsea.