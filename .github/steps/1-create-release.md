<!--
  <<< Author notes: Step 1 >>>
  Choose 3-5 steps for your course.
  The first step is always the hardest, so pick something easy!
  Link to docs.github.com for further explanations.
  Encourage users to open new tabs for steps!
-->

## Paso 1: Crear una *release*

_Bienvenida a Flujo de trabajo basado en **GitFlow** con rama `develop` de integración adicional :sparkle:_

### GitHub flow

El [GitHub flow](https://guides.github.com/introduction/flow/) es un flujo ligero basado en ramas, pensado para proyectos con despliegues frecuentes. En nuestro caso nos apoyaremos en el uso de una rama `develop` donde se integrarán todos los cambios antes de pasar a la rama `main`

<p align="center">
  <img src="../../blob/main/images/gitflow.png" alt="github-flow">
</p>

Algunos proyectos despliegan aún más a menudo, con *continuous deployment*: podría haber una “versión” cada vez que hay un nuevo *commit* en `main`.

Otros proyectos necesitan una estructura de versiones y *releases* distinta.

### Versiones

Las versiones son iteraciones distintas de un software, sistemas operativos, apps o dependencias, por ejemplo, «Windows 8.1» → «Windows 10», o «macOS High Sierra» → «macOS Mojave».

El equipo actualiza el código y ejecuta pruebas para detectar fallos. Durante ese proceso se añaden medidas de seguridad para evitar que nuevo código o *bugs* lleguen a producción. Una vez superadas las pruebas, el código se versiona y se publica para los usuarios finales.

### :keyboard: Actividad: crear una *release* del estado actual del código

En este paso crearás una *release* de nuestro juego _Alien Invasion_ que contiene este repositorio en GitHub.

<p align="center">
  <img src="../../blob/main/images/alien_invasion.png" alt="Alien Invasion">
</p>

Una *GitHub Release* señala un *commit* concreto. Puede incluir notas en Markdown y binarios adjuntos.

Antes de usar un flujo de *release* más grande, vamos a crear una etiqueta (*tag*) y su *release*.

1. Abre una pestaña nueva en tu navegador y realiza los pasos allí mientras lees las instrucciones aquí.
1. Ve a la página **Releases** de este repositorio.
   - _Consejo_: haz clic en la pestaña **Code** y, en la barra de navegación que hay bajo la descripción, pulsa **Releases**.
1. Haz clic en **Create a new release**.
1. En _Tag version_ escribe **v0.9.0**, haz clic en **Create new tag: v0.9.0 on publish** y deja _Target_ en **main**.
1. Pon un título, por ejemplo «v0.9.0 - First release». Opcionalmente añade una descripción.
1. Haz clic en **Publish release**.

### :keyboard: Actividad: introducir un bug (que corregiremos después)

Para preparar pasos posteriores, vamos a añadir un bug que corregiremos más adelante. Ya existe la rama `feature/update-text-colors`; crearemos y fusionaremos su pull request.

1. Abre un **nuevo pull request** con `base: develop` y `compare: feature/update-text-colors`.
1. Ponle de título «Actualizado estilo del texto del juego». Por ejemplo:  
   ```
   ## Descripción:
   - Actualizado el color del texto del juego a verde
   ```
1. Haz clic en **Create pull request**.
1. Fusiona el PR: **Merge pull request** y elimina la rama.
1. Espera ~20 segundos y actualiza esta página. [GitHub Actions](https://docs.github.com/es/actions) avanzará automáticamente al siguiente paso.

