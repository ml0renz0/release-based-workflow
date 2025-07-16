<!--
  <<< Author notes: Step 2 >>>
  Choose 3-5 steps for your course.
  The first step is always the hardest, so pick something easy!
  Link to docs.github.com for further explanations.
  Encourage users to open new tabs for steps!
-->

## Paso 2: Proteger las ramas críticas

_¡Buen trabajo creando la primera *release* ! :heart:_

### Protección de ramas

Aunque es muy cómodo en fases muy iniciales de los repositorios según un proyecto va ganando madurez y creciendo en complejidad la necesidad de tener mayor control sobre los cambios cada vez es mayor. Por esto es necesario proteger las ramas más críticas (`main` y `develop`) de recibir commits directos sin PR para reforzar el uso del flujo definido y evitar cambios directos.

### :keyboard: Actividad: proteger las ramas `main` y `develop`

En este paso protegerás ambas ramas `main` y `develop` contra cambios directos sin PR.

Existen 2 opciones para proteger ramas de GitHub: el modo clásico de protección de ramas o mediante *Rulesets*. En nuestro caso utilizaremos esta última:

1. Abre una pestaña nueva en tu navegador y realiza los pasos allí mientras lees las instrucciones aquí.
1. Descarga este [JSON](.github/json/protect-critical-branches.json?raw=true)
1. Ve a la página **Settings** de este repositorio.
1. Haz clic en **Rules** y luego en **Rulesets**.
1. Haz clic en **New ruleset**, luego en **Import a ruleset** y selecciona el fichero descargado anteriormente.
1. Baja al final de la página y haz clic en **Create**
1. Dado que acabos de proteger ambas ramas `develop` y `main` necesitaremos permitir que los _workflows_ abran y aprueben PRs para que el curso pueda actualizar a los siguientes pasos de manera automática. Ve a la página **Settings** de este repositorio, selecciona **Actions** y luego **General** y, en el apartado **Workflow permissions** marca la casilla **Allow GitHub Actions to create and approve pull requests** 
1. Ve a la página **Actions** de este repositorio, escoge el workflow **Step 2, Main & develop branches protected** y haz clic en **Run worflow** y en el desplegable haz clic de nuevo en **Run worflow**
1. Espera ~20 segundos y actualiza esta página. [GitHub Actions](https://docs.github.com/es/actions) avanzará automáticamente al siguiente paso.