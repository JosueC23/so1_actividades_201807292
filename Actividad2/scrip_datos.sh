
export GITHUB_USER= "user"


GITHUB_USER="JosueC23"


curl "https://api.github.com/users/$GITHUB_USER" > GITHUB_USER.txt

archivo="GITHUB_USER.txt"

contenido=$(cat "$archivo")
echo "$contenido"

# Acceder a un valor específico, por ejemplo, la edad
login=$(grep '"login":' "$archivo" | awk -F ': ' '{print $2}' | tr -d ',')
id=$(grep '"id":' "$archivo" | awk -F ': ' '{print $2}' | tr -d ',')
creacion=$(grep '"created_at":' "$archivo" | awk -F ': ' '{print $2}' | tr -d ',')

fecha_actual=$(date +'%Y-%m-%d')

mkdir /tmp/$fecha_actual

echo "Hola : $login  User ID : $id Cuenta fue creada el: $creacion" >> /tmp/$fecha_actual/saludos.log 


