<!--
  <<< Author notes: Step 3 >>>
  Start this step by acknowledging the previous step.
  Define terms and link to docs.github.com.
-->

## Paso 3: Añadir una nueva funcionalidad a la rama de *develop* (y nueva pre-release)

_¡Buen trabajo creando la primera *release*!_ :heart: 

### Gestión de *releases* y *pre-releases*

A medida que preparas una versión futura, tendrás que organizar algo más que tareas y funcionalidades: resulta clave definir un flujo claro para tu equipo y mantener el trabajo ordenado.

Existen distintas estrategias para gestionar versiones. Algunos equipos usan ramas de larga vida como `production`, `dev` y `master`. Otros publican directamente desde ramas de funcionalidad que se fusionan en `master`.

Ninguna estrategia es universalmente mejor; lo importante es ser **intencional** con tus ramas y reducir las de vida larga siempre que sea posible.

En este ejercicio usaremos dos ramas de vida larga: `master` y `develop`. Todo el trabajo diario irá a ramas ( `feature/*`, `fix/*`, `refactor/*`, `docs/*` o `update/*`) y de ahí pasarán vía PRs a `develop`, y posteriormente a `master`. Cada _merge_ en la rama `develop` dispara la generación de una _pre-release_ y en la rama `master` la generación de una _release_

### Añadir una _feature_ o funcionalidad

Una versión suele componerse de muchos cambios pequeños. Imaginemos que aún no conocemos el bug que introdujimos antes y vamos a centrarnos en una mejora para nuestro juego antes de subir la versión: actualizarás el color de fondo de la página a negro.

### :keyboard: Actividad: actualizar `base.css`

1. Crea una nueva rama `update/background-color` a partir de `develop` y modifica la declaración `body` en `base.css` para que quede así. Esto pondrá el fondo en negro:

    ```css
    body {
        background-color: black;
    }
    ```
   Recuerda respetar la norma en cuanto a prefijos de commits que vimos en el paso 1.
1. [Abre un **nuevo pull request**](../../compare/develop...update/background-color) con `develop` como rama base y tu nueva rama `update/background-color` como compare.
1. Añade tus cambios en la describiendo de la PR.
1. Haz clic en **Create pull request**.
1. Haz clic en **Merge pull request**, y elimina tu rama.
1. Espera unos 20 segundos y actualiza esta página (la de las instrucciones). [GitHub Actions](https://docs.github.com/en/actions) avanzará automáticamente al siguiente paso.

#### :keyboard: Actividad: crear una PR a `master` para sacar una release final v0.1.1

1. [Abre un **nuevo pull request**](../../compare/master...develop) con `base: master` y `compare: develop`.
. Ponle de título «[RELEASE] 0.1.1». Por ejemplo:  
   ```
   ## Descripción:
   - Actualizado el color de fondo a negro
   ```
1. Haz clic en **[Create&nbsp;pull&nbsp;request](https://docs.github.com/es/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creando-un-pull-request)**.
1. Fusiona la PR: **[Merge&nbsp;pull&nbsp;request](https://docs.github.com/es/pull-requests/collaborating-with-pull-requests/reviewing-changes-in-pull-requests/merging-a-pull-request)** y elimina la rama.
1. El flujo creará una nueva PR para alinear `master` con `develop` que se mergeará automáticamente.  
Puedes comprobar los flujos en la sección **[Actions](../../actions)** del repositorio.
1. Espera ~20 segundos y actualiza esta página. [GitHub Actions](https://docs.github.com/es/actions) avanzará automáticamente al siguiente paso.