#clases a añadir
tupper

############################################## Start con cambios en código fuente
1. Borrar la imagen de la maquina virtual con la información de labelme
2. Borrar en local la imagen de vagrant para que la monte de nuevo (cd labelme)
rm -rf .vagrant

3. levantar la nueva imagen
vagrant up


############################################## Start

ir a la carpeta de label me 
cd /Users/pedro/Documents/eurocast_2017-master/labelme/

levantar el entorno de la maquina virtual
vagrant up

acceder
http://localhost:8080/

pinchar a tool.html
recordar poner "mode=f” en la URL para que el botón de siguiente vaya a la siguiente foto.


############################################## Open the tool with your folder
# mode=f --> next image in folder
# folder=daisy --> is because daisy is located in "../datasets/food/images"
?mode=f&folder=daisy

############################################## Instalar

Primera vez, crear las carpetas y cambiar los nombres en el archivo
ejecutar: descarga imagen de precise64
vagrant box add precise64 http://files.vagrantup.com/precise64.box


############################################## mode select object drop down

# put the objects to select
&objects=car,person,building

# example
http://localhost:8080/tool.html?mode=f&folder=food/daisy&objects=car,person,building

############################################## mode ahp (f)

# put the objects to select
&objects=car,person,building&mode=ahp&folder=food/daisy

# example
http://localhost:8080/tool.html?mode=f&objects=car,person,building&folder=food/daisy


############################################## collections

# create collection (in the virtual machine)
cd /var/www/LabelMeAnnotationTool/annotationTools/sh
./populate_dirlist.sh my_collection_daisy.txt food/daisy

# folder where the created collection is
cd ./annotationCache/DirLists   

# execute with collection
?collection=my_collection_daisy&mode=c

# example
http://localhost:8080/tool.html?collection=my_collection_daisy&mode=c&objects=car,person,building

############################################## formatear xml

# in folder "Documents/eurocast_2017-master/datasets/food/annotations"
source /Users/pedro/Documents/eurocast_2017-master/clu/misc.sh 

# darle formato al xml
format_xml daisy

