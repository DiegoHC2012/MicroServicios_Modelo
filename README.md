### Repositorio para la materia de Microservicios
### Por Diego HC

### Para correr el proyecto hacer (PRIMERA VEZ):
> ./build-and-run.sh

Esto compila los servicios con maven y posteriormente ejecuta "docker-compose up --build"

Por lo que no es necesario hacer docker-compose up con el puro sh basta.

### Para reiniciar contenedores para aplicar cambios:
> ./rebuild-and-restart.sh

Esto reinicia los contenedores no sin antes compilar los servicios.

> wget -qO- couponservice:8080/coupon/getCoupon/hola

- DiegoHC