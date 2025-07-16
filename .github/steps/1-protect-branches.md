<!--
  <<< Author notes: Step 2 >>>
  Choose 3-5 steps for your course.
  The first step is always the hardest, so pick something easy!
  Link to docs.github.com for further explanations.
  Encourage users to open new tabs for steps!
-->

## Paso 1: Proteger las ramas críticas

_Bienvenida a Flujo de trabajo basado en **GitFlow** con rama `develop` de integración adicional :sparkle:_

### GitHub flow

El [GitHub flow](https://guides.github.com/introduction/flow/) es un flujo ligero basado en ramas, pensado para proyectos con despliegues frecuentes. En nuestro caso nos apoyaremos en el uso de una rama `develop` donde se integrarán todos los cambios antes de pasar a la rama `master`

<p align="center">
  <img src="../../blob/curso/images/gitflow.png" alt="github-flow">
</p>

Algunos proyectos, como este, despliegan aún más a menudo, con *continuous deployment*: podría haber una “versión” cada vez que hay un nuevo *commit* en `master`.

Otros proyectos necesitan una estructura de versiones y *releases* distinta.

#### :keyboard: Actividad: dar permisos a GitHub Actions para abrir y fusionar PRs

1. Abre una nueva pestaña.
1. Ve a [**Settings ▸ Actions ▸ General**](../../settings/actions#actions_workflow_permission_can_approve_pr)
1. En **Workflow permissions**:
   - Marca **Allow GitHub Actions to create and approve pull requests**.
1. Guarda los cambios.

#### :keyboard: Actividad: habilitar auto-merge para las Pull Requests

1. Abre una nueva pestaña.
1. Ve a [**Settings ▸ General**](../../settings#merge-button-settings)
1. En **Pull Requests**:
   - Marca **Allow auto-merge**, los cambios se guardan automáticamente.

### Protección de ramas

Según el repositorio madura, es clave impedir cambios directos en las ramas críticas (`master` y `develop`) para forzar el flujo vía PR y evitar “pushes” accidentales.

Además, protegeremos también **las etiquetas de versión (`v*`)** para que nadie pueda borrarlas o reescribirlas.

Más concretamente los workflows de este repositorio comprueban que:
- Los mensajes de commit tienen uno de los prefijos:
  - `data`, `extract`, `transform`, `load`, `preprocesamiento`, `modelo`, `cicd`, `docs`, `fix`, `refactor`, `test`, `config`, `chore`
- Las PRs a la rama `develop` sólo se hagan desde una de las siguientes ramas:
  - `feature/\*`, `fix/\*`, `refactor/\*`, `docs/\*`, `update/\*` y `release/\*`
- Las PRs a la rama `master` sólo se hagan desde una de las siguientes ramas:
  - `develop`, `hotfix/\*` y `release/\*`
- El título de las PRs a la rama `master` comiencen por `[RELEASE]` o `[HOTFIX]`

#### :keyboard: Actividad: importar el _ruleset_ de ramas

1. Descarga estos JSONs:  
   - **[protect-master-branch.json](.github/json/protect-master-branch.json?raw=true)**: configura protección en la rama `master` contra pushes directos sin PR y también fuerza la comprobación de los checks realizados por los workflows y que son necesarios para la aprobación de la PR.
   - **[protect-develop-branch.json](.github/json/protect-develop-branch.json?raw=true)**: configura la protección en la rama `develop` al igual que la master pero sin el chequeo de título de PR (único para máster)
1. En [**Settings ▸ Rules ▸ Rulesets**](../../settings/rules), pulsa **New ruleset → Import a ruleset** y selecciona uno de los ficheros descargados. Repite el proceso para el segundo fichero.
1. Pulsa **Create** al final.

#### :keyboard: Actividad: importar el _ruleset_ de tags

1. Descarga este JSON:  
   **[protect-critical-tags.json](.github/json/protect-critical-tags.json?raw=true)**
1. Repite el proceso: **New ruleset → Import a ruleset**, elige el JSON de tags.
1. Pulsa **Create** al final.

#### :white_check_mark: Validar la actividad

1. Ve a la pestaña **[Actions](../../actions)**.
2. Ejecuta manualmente el workflow [**Step 1, Master & develop branches protected**](../../actions/workflows/1-branches-protected.yml) (**Run workflow → Run workflow**).
1. Espera ~20 segundos a que terminen todos los flujos en la sección **[Actions](../../actions)** del repositorio y actualiza esta página. [GitHub Actions](https://docs.github.com/es/actions) avanzará automáticamente al siguiente paso si todo está correcto.