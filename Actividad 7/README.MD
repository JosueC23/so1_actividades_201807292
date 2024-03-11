# Completely Fair Scheduler (CFS) de Linux

El Completely Fair Scheduler (CFS) es el algoritmo de planificación de procesos predeterminado en el kernel de Linux desde la versión 2.6.23. Fue diseñado para proporcionar una asignación justa y equitativa de la CPU entre todos los procesos que compiten por los recursos del sistema. A continuación, se describen sus características principales y su funcionamiento:

1. **Justicia**: El CFS se esfuerza por asignar la CPU de manera justa entre todos los procesos en ejecución. No discrimina entre procesos en función de su prioridad o tipo, sino que busca garantizar que cada proceso reciba una parte equitativa del tiempo de CPU disponible.

2. **Modelo de ejecución basado en tiempo real**: El CFS utiliza un modelo de ejecución basado en tiempo real, donde cada proceso recibe un tiempo de ejecución proporcional a su peso de planificación. El peso de planificación se calcula en función de la prioridad del proceso y su tiempo de ejecución anterior.

3. **Prioridad dinámica**: A diferencia de los sistemas de prioridad estática, donde la prioridad de un proceso permanece constante, el CFS ajusta dinámicamente la prioridad de cada proceso en función de su actividad y uso de la CPU. Esto ayuda a evitar situaciones en las que un proceso de baja prioridad pueda acaparar la CPU durante períodos prolongados.

4. **Algoritmo de selección de proceso**: El CFS utiliza un algoritmo de selección de proceso basado en el árbol rojo-negro. Los procesos se organizan en un árbol de ejecución donde cada nodo representa un proceso y sus hijos representan sus subprocesos. Este árbol se utiliza para seleccionar eficientemente el próximo proceso a ejecutar.

5. **Esquema de 'scheduling' sin colas de espera**: A diferencia de algunos otros algoritmos de planificación que utilizan colas de espera explícitas, el CFS no mantiene colas de espera separadas para los procesos. En su lugar, utiliza el árbol de ejecución para determinar el próximo proceso a ejecutar en función de su tiempo de ejecución acumulado y su peso de planificación.

6. **Tiempo de ejecución virtual (vruntime)**: El CFS utiliza el concepto de tiempo de ejecución virtual (vruntime) para realizar un seguimiento del tiempo de CPU utilizado por cada proceso. La vruntime de un proceso se incrementa mientras está en ejecución y se utiliza para calcular su prioridad relativa en relación con otros procesos.

En resumen, el CFS es un algoritmo de planificación de procesos en Linux diseñado para proporcionar una asignación justa y equitativa de la CPU entre todos los procesos en ejecución. Utiliza un modelo de ejecución basado en tiempo real, prioridad dinámica y un algoritmo eficiente de selección de procesos para lograr este objetivo.
