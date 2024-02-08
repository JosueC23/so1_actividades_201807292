# Creacion de un cronjob para ejecutar scrip cada 5 minutos

##  Abre tu crontab para editar
```sh
    crontab -e
```
## Agrega la línea siguiente al archivo crontab:
```sh
    */5 * * * * /ruta/al/script_datos.sh
```
## Guarda y Cerrar el editor
