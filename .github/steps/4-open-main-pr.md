<!--
  <<< Author notes: Step 4 >>>
  Start this step by acknowledging the previous step.
  Define terms and link to docs.github.com.
-->

## Paso 4: Abrir un *pull request* a la rama *main*

_¡Buen trabajo añadiendo la nueva funcionalidad! :smile:_

### Rama *develop* y `main`

Abre una *pull request* entre tu rama `develop` y `main` lo antes posible.  

En general, la descripción del PR debería incluir:

- Una [referencia a la *issue*](https://docs.github.com/es/articles/basic-writing-and-formatting-syntax/#mencionar-personas-y-equipos) que resuelve el PR.  
- Un resumen de los cambios propuestos.  
- [@menciones](https://docs.github.com/es/articles/basic-writing-and-formatting-syntax/#mencionar-personas-y-equipos) a la persona o equipo encargado de revisar.

Para agilizar la creación, este repositorio incluye una **plantilla de PR**.  
Cuando abras la *pull request*, verás un texto por defecto que te ayudará a completar la información necesaria.
Si no quieres usarlo, simplemente bórralo y escribe tu propio mensaje.

### :keyboard: Actividad: abrir una PR a main

Vamos a crear una PR comparando la rama `develop` con `main`.

1. Abre una **nuevo pull request** con `base: main` y `compare: develop`.  
1. Asegúrate de que el título sea: **[RELEASE] - 0.9.0#1.0.0**.
1. Añade una descripción detallada. Por ejemplo:  
   ```
   ## Descripción:
   - Cambiado el color de background de la página a negro.
   - Cambiado el color del texto del juego a verde.
   ```
1. Haz clic en **Create pull request**.  
1. Espera unos 20 segundos y actualiza esta página. [GitHub Actions](https://docs.github.com/es/actions) avanzará automáticamente al siguiente paso.
