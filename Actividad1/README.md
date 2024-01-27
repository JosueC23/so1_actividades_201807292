# Tipos de Kernel
Entre los diferentes tipos de kernel para los diferentes sistemas operativos. Conforme a sus caracteristicas, entre los pueden dividirse en dos grupos Esenciales y no Esenciales.

## Esenciales

**Kernel monolitico** 
> Es un Kernel de gran tamaño que puede gestionar todas las tareas. Se encarga de la gestión de memoria y procesos, así como de la comunicación entre los procesos y el soporte de las diferentes funciones de los drivers y el hardware. Los sistemas operativos que recurren al Kernel monolítico son Linux, OS X y Windows.

**Microkernel**
> Los Kernel que están diseñados con pequeños tamaños tienen una clara función: evitar el colapso total del sistema en caso de un fallo. Para cumplir con todas las tareas como un Kernel monolítico cuenta con diferentes módulos. Es curioso, pero hasta ahora solo el Mach de OS X es el único que utiliza el microkernel.

**Kernel Hibridos**
> Combinación entre el microkernel y el Kernel monolítico. Nos encontramos ante un Kernel grande, pero compacto y que puede ser modulado y otras partes del mismo Kernel pueden cargarse de manera dinámica. Es utilizado en Linux y OS X. 

##  No Esenciales

**Nanokernel** 
>Es un kernel pequeño que ofrece abstracción de hardware, pero sin servicios del sistema. Los núcleos más grandes están diseñados para ofrecer más funciones y administrar más abstracción de hardware. Los micronúcleos modernos también carecen de servicios de sistema, por lo que los términos microkernal y nanokernal se han vuelto análogos. 

**Exokernel** 
>La estructura que propone un exokernel es innovadora ya que se estructura de manera vertical. Los núcleos son pequeños y su desarrollo tiene fines investigativos. En un exokernel la toma de decisiones está a cargo de los programas, para hacer el uso de los recursos del hardware en ciertas bibliotecas. El Kernel se limita a evitar errores en los permisos de hardware y eludir conflictos.

**Unikernel** 
> Es un Kernel destinado a la eliminación de capas intermedias entre el hardware y las aplicaciones, ya que busca simplificar lo más posible todos los procesos. Es habitual en dispositivos de bajo consumo como los IoT.

**Anykernel**
> Otro concepto innovador que busca conservar las cualidades de los Kernel monolíticos, pero también facilitar el desarrollo de los controladores, al mismo tiempo que ofrece mayor seguridad al usuario


# User vs Kernel Mode

Modo de usuario y modo de kernel son dos niveles de privilegio distintos en un sistema informático que determinan el nivel de acceso y control que un programa o un componente del sistema operativo tiene sobre los recursos del sistema. Estos modos forman parte de los mecanismos de protección implementados por los sistemas operativos modernos para garantizar la estabilidad, la seguridad y prevenir el acceso no autorizado a recursos críticos del sistema.

En el diagrama siguiente se muestra la comunicación entre los componentes en modo de usuario y en modo kernel.

![Diagram Sistema](/Actividad1/userandkernelmode01.png)

## Diferencia entre el modo Kernel y el modo Usuario

| Direfencias | Modo Usuario | Modo Kernel |
|----------|----------|----------|
| Modo     | Se conoce como modo sin privilegios,modo restringido o modo esclavo   | El modo kernel tambien se conoce como modo maestro, modo privilegiado o modo sistema    |
| Referencias de memoria	    | Solo puede hacer referencias a la memoria asignada para el modo de usuario.   | Es capaz de hacer referencia a ambas áreas de memoria.   |
| Bloqueo del sistema  | En el modo de usuario, un bloqueo del sistema se puede recuperar simplemente reanudando la sesión.   | Un bloqueo del sistema en modo kernel es grave y complica las cosas   |
|Acceso	|Solo se permite que la funcionalidad esencial funcione en este modo.|Los programas de usuario pueden acceder y ejecutarse en este modo para un sistema determinado.|
|Funcionalidad|El modo kernel puede referirse a cualquier bloque de memoria en el sistema y también puede dirigir la CPU para la ejecución de una instrucción, lo que lo convierte en un modo muy potente y significativo.|El modo de usuario es un modo de visualización estándar y típico, lo que implica que la información no puede ejecutarse por sí sola ni hacer referencia a ningún bloque de memoria; necesita una interfaz de protocolo de aplicación (API) para lograr estas cosas.|

# Interruptions vs traps

Principales diferencias entre la trampa y la interrupción en el sistema operativo. Hay diferencias entre la trampa y la interrupción en el sistema operativo. Algunas de las diferencias son las siguientes

* La trampa es una señal emitida por un programa de usuario que indica al sistema operativo que realice alguna funcionalidad de inmediato. Por el contrario, la interrupción es una señal a la CPU emitida por el hardware que indica un evento que requiere atención inmediata.

* Una trampa también desencadena la funcionalidad del sistema operativo. Le da el control al manipulador de trampas. Por el contrario, una interrupción activa la CPU para realizar la rutina del controlador de interrupciones.

*Una trampa también desencadena la funcionalidad del sistema operativo. Le da el control al manipulador de trampas. Por el contrario, una interrupción activa la CPU para realizar la rutina del controlador de interrupciones.

*Una trampa es generada por una instrucción de programa de usuario. Por el contrario, los dispositivos de hardware generan una interrupción.

*Una trampa también se conoce como interrupción de software. Por el contrario, una interrupción se conoce como interrupción de hardware.

*La trampa es un proceso sincrónico. Por el contrario, la interrupción es un proceso asincrónico.

La diferencia entre una trampa y una interrupción es que una trampa es activada por un programa de usuario para invocar la funcionalidad del sistema operativo. Aún así, un dispositivo de hardware activa una interrupción para permitir que el procesador ejecute la rutina de controlador de interrupciones correspondiente.