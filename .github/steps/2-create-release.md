<!--
  <<< Author notes: Step 1 >>>
  Choose 3-5 steps for your course.
  The first step is always the hardest, so pick something easy!
  Link to docs.github.com for further explanations.
  Encourage users to open new tabs for steps!
-->

## Paso 2: Crear una *release*

_¡Buen trabajo protegiendo las ramas `master` y `develop` ! :heart:_

### Versiones

Las versiones son iteraciones distintas de un software, sistemas operativos, apps o dependencias, por ejemplo, «Windows 8.1» → «Windows 10», o «macOS High Sierra» → «macOS Mojave».

El equipo actualiza el código y ejecuta pruebas para detectar fallos. Durante ese proceso se añaden medidas de seguridad para evitar que nuevo código o *bugs* lleguen a producción. Una vez superadas las pruebas, el código se versiona y se publica para los usuarios finales.

En nuestro caso tenemos un flujo automatizado que libera pre-releases desde la rama `develop` cada vez que se añaden commits en esa rama. Como ya vimos en el paso anterior para las releases es necesario abrir PRs con un titulo determinado desde `develop` a `master`.

Este repositorio sigue el esquema de versionado semántico o _SemVer_. Es un esquema para asignar números de versión a software, indicando claramente el tipo de cambios que se han realizado entre versiones. Se basa en la estructura `<MAJOR>.<MINOR>.<PATCH>`, donde cada número indica un tipo específico de cambio: mayor, menor o parche, respectivamente.

Dado que tenemos un conjunto posible de ramas que aportan a `develop` podemos determinar de manera automática qué tipo de ramas provocan qué cambios según la siguiente regla:<div align="center">
  <table>
    <thead>
      <tr><th>Nombre de la rama</th><th>Tipo de cambio</th></tr>
    </thead>
    <tbody>
      <tr><td><code>fix/*</code>, <code>hotfix/*</code>, <code>docs/*</code>, <code>update/*</code></td><td>patch</td></tr>
      <tr><td><code>feature/*</code>, <code>refactor/*</code></td><td>minor</td></tr>
      <tr><td><code>release/*</code></td><td>major</td></tr>
    </tbody>
  </table>
</div>

### Crear una *release* del estado actual del código

En este paso crearás una *release* de nuestro juego _Alien Invasion_ que contiene este repositorio en GitHub. Para probarlo necesitarás clonarte el repositorio en tu copia local y abrir en el navegador el fichero `index.html` que trae el proyecto en su rama `master` o `develop`.

<p align="center">
  <img src="../../blob/curso/images/alien-invasion.png" alt="Alien Invasion">
</p>

#### :keyboard: Actividad: cambiar color de texto del juego a verde (e introducir un bug que corregiremos después)

Para preparar pasos posteriores, vamos a añadir un bug que corregiremos más adelante. Ya existe la rama `feature/update-text-colors`; crearemos y fusionaremos su pull request.

1. [Abre una **nueva pull request**](../../compare/develop...feature/update-text-colors) con `base: develop` y `compare: feature/update-text-colors`.
1. Ponle de título «Actualizado estilo del texto del juego». Por ejemplo:  
   ```
   ## Descripción:
   - Actualizado el color del texto del juego a verde
   ```
1. Haz clic en **Create pull request**.
1. Haz clic en **Merge pull request**, y elimina tu rama.
1. Al fusionar la PR a `develop` el flujo:
   - Creará una nueva PR para subir la versión a `v0.1.0-dev` que se mergeará automáticamente. Dado que no existen releases aún partimos de una versión inicial `v0.0.0` y, como la rama es `feature/*`, corresponde una subida de _minor version_: `v0.0.0` → `v0.1.0`
   - Liberará una **[pre-release](../../releases)** desde la rama `develop` (`v0.1.0‑dev`) también de manera automática.  
1. Espera unos ~20 segundos a que terminen todos los flujos en la sección **[Actions](../../actions)** del repositorio.

#### :keyboard: Actividad: crear una PR a `master` para sacar una release final v0.1.0

1. [Abre una **nueva pull request**](../../compare/master...develop) con `base: master` y `compare: develop`.
. Ponle de título «[RELEASE] 0.1.0 - color de texto a verde». Por ejemplo:  
   ```
   ## Descripción:
   - Actualizado el color del texto del juego a verde
   ```
1. Haz clic en **Create pull request**.
1. Fusiona la PR haciendo clic en **Merge pull request** y elimina la rama.
1. Al fusionar la PR de release a `master` el flujo liberará automáticamente una **[release](../../releases)** desde la rama `master` (`v0.1.0`).  
1. Espera ~20 segundos a que terminen todos los flujos en la sección **[Actions](../../actions)** del repositorio y actualiza esta página. [GitHub Actions](https://docs.github.com/es/actions) avanzará automáticamente al siguiente paso.