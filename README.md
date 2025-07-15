<header>

<!--
  <<< Author notes: Course header >>>
  Read <https://skills.github.com/quickstart> for more information about how to build courses using this template.
  Include a 1280×640 image, course name in sentence case, and a concise description in emphasis.
  In your repository settings: enable template repository, add your 1280×640 social image, auto delete head branches.
  Next to "About", add description & tags; disable releases, packages, & environments.
  Add your open source license, GitHub uses the MIT license.
-->

</header>

# Flujo de trabajo basado en **GitFlow** con rama _develop_ de integración adicional

Este repositorio contiene un curso que muestra de manera práctica cómo usar este flujo de trabajo, basado en [GitHub flow](https://guides.github.com/introduction/flow/), pero con una una rama adicional de integración de cambios **`develop`** intermedia a la rama **`master`**. Para ello haremos varios desarrollos sobre nuestro juego _Alien Invasion_.

- **Qué aprenderás**:
  - A seguir un flujo de trabajo apoyado en rama `develop` y basado en versiones.
  - A trabajar en ramas `feature/*`, `fix/*`, `hotfix/*`, `refactor/*`, `docs/*` y `update/*` y fusionarlas en `develop` mediante *Pull Requests* (PR de ahora en adelante).
  - A congelar código en tags, revisar y publicar versiones
- **Qué construirás**: crearás *tags*, *releases* y notas de versión.
- **Prerrequisitos**: si necesitas aprender sobre ramas, commits y pull requests, realiza primero el curso de [introducción a GitHub](https://github.com/skills/introduction-to-github).
- **Duración**: menos de 1 hora.

En este curso:

1. Protegerás las ramas críticas `master` y `develop`.
1. Crearás una *release* inicial `v0.1.0` desde la rama *master*.
1. Abrirás una *PR* para añadir nuevos cambios a la rama *develop* y luego a la rama *master*.
1. Al mergear la PR de la rama *master* se generará la nueva *release* `v0.1.1`.
1. Arreglarás un *bug* aplicando un *hotfix* que generará una *release* `v0.1.2` que incluye este *fix*.

## Requisitos

- Conocer los fundamentos de GitHub (ramas, commits, pull requests, markdown).
- Acceso a un repositorio en GitHub con Actions habilitado.

## Cómo usar este curso

<!-- For start course, run in JavaScript:
'https://github.com/new?' + new URLSearchParams({
  template_owner: 'ml0renz0',
  template_name: 'release-based-workflow',
  owner: '@me',
  name: 'skills-release-based-workflow',
  description: 'Release based workflow course',
  visibility: 'public',
}).toString()
-->

[![Start course](https://user-images.githubusercontent.com/1221423/235727646-4a590299-ffe5-480d-8cd5-8194ea184546.svg)](https://github.com/new?template_owner=ml0renz0&template_name=release-based-workflow&owner=%40me&name=skills-release-based-workflow&description=Release+based+workflow+course&visibility=public&include_all_branches=true)


1. Haz clic con el botón derecho en **Start course** y abre el enlace en una pestaña nueva.
1. En la pestaña recién abierta, la mayoría de los campos se rellenarán automáticamente.
1. En owner, elige tu cuenta personal o la organización donde quieras alojar el repositorio.
1. Te recomendamos crear un repositorio público, ya que los repositorios privados consumen minutos de Actions.
1. Desplázate hasta el final del formulario y haz clic en Create repository.
1. Cuando se cree tu nuevo repositorio, espera unos 20 segundos y actualiza la página. A continuación, sigue las instrucciones paso a paso que encontrarás en el README del nuevo repositorio.

<footer>

<!--
  <<< Author notes: Footer >>>
  Add a link to get support, GitHub status page, code of conduct, license link.
-->

</footer>