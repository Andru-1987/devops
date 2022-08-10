En principio si el archivo no debe ser visualizada por todos los usuarios, crearía una instancia donde el archivo fuera un archivo oculto.

Colocaría unicamente la opción de rwx unicamente a usuario Roxs, en la cual solamente la usuario tenga esos permisos. 

Otra forma sería verificando si la usuaria correspondiente es ella, la cual sea la única con el permiso de modificar el archivo.

Para el caso de este desafío, voy a ir por la segunda opción.


