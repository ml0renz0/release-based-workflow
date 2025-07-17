<!--
  <<< Author notes: Step 3 >>>
  Start this step by acknowledging the previous step.
  Define terms and link to docs.github.com.
-->

## Paso 3 Añadir una nueva funcionalidad a la rama de *develop*

_¡Buen trabajo protegiendo las ramas `main` y `develop` ! :heart:_

### Gestión de *releases*

A medida que preparas una versión futura, tendrás que organizar algo más que tareas y funcionalidades: resulta clave definir un flujo claro para tu equipo y mantener el trabajo ordenado.

Existen distintas estrategias para gestionar versiones. Algunos equipos usan ramas de larga vida como `production`, `dev` y `main`. Otros publican directamente desde ramas de funcionalidad que se fusionan en `main`.

Ninguna estrategia es universalmente mejor; lo importante es ser **intencional** con tus ramas y reducir las de vida larga siempre que sea posible.

En este ejercicio usaremos dos ramas de vida larga: `main` y `develop`. Todo el trabajo diario irá a ramas ( `feature/*`, `fix/*`, `refactor/*`, `docs/*` o `update/*`) y de ahí pasarán vía PRs a `develop`, y posteriormente a `main`.

### Añadir una _feature_ o funcionalidad

Una versión suele componerse de muchos cambios pequeños. Imaginemos que aún no conocemos el bug que introdujimos antes y vamos a centrarnos en un par de mejoras para nuestro juego antes de subir la versión.

- Tú actualizarás el color de fondo de la página a negro.
- Yo te ayudaré a cambiar el color del texto a verde.

### :keyboard: Actividad: actualizar `base.css`

1. Crea una nueva rama `update/background-color` a partir de `develop` y modifica la declaración `body` en `base.css` para que quede así. Esto pondrá el fondo en negro:

    ```css
    body {
        background-color: black;
    }
    ```
1. Abre un pull request con `develop` como rama base y tu nueva rama como compare.
1. Rellena la plantilla de la PR describiendo tus cambios.
1. Haz clic en **Create pull request**.

## Fusionar la nueva funcionalidad en la rama develop

El flujo git definido es clave para trabajar de manera eficiente y ordenada en un ambiente colaborativo. Es recomendable usar ramas de vida corta para añadir funcionalidades rápidas o corregir bugs.

Fusiona este _pull request_ cuanto antes para poder abrir el PR a `main` lo antes posible.

### :keyboard: Actividad: fusionar el pull request

1. Haz clic en **Merge pull request**, y elimina tu rama.
1. Espera unos 20 segundos y actualiza esta página (la de las instrucciones). [GitHub Actions](https://docs.github.com/en/actions) avanzará automáticamente al siguiente paso.
