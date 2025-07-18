<!--
  <<< Author notes: Step 5 >>>
  Start this step by acknowledging the previous step.
  Define terms and link to docs.github.com.
-->

## Paso 5: Generar notas de versión y hacer *merge*

_¡Gracias por abrir la *pull request*! :dancer:_

### Notas de versión generadas automáticamente

Las [notas de versión generadas automáticamente](https://docs.github.com/es/repositories/releasing-projects-on-github/automatically-generated-release-notes) ofrecen una alternativa a redactarlas a mano.  
Con ellas obtienes al instante un resumen del contenido de la *release*: lista de PR fusionados, colaboradores y enlace al *changelog* completo.  
Después de generarlas, puedes personalizar el texto antes de publicarlo.

### Automatically generated release notes

[Automatically generated release notes](https://docs.github.com/en/repositories/releasing-projects-on-github/automatically-generated-release-notes) provide an automated alternative to manually writing release notes for your GitHub releases. With automatically generated release notes, you can quickly generate an overview of the contents of a release. Automatically generated release notes include a list of merged pull requests, a list of contributors to the release, and a link to a full changelog. You can also customize your release notes once they are generated.

### :keyboard: Actividad: generar las notas de versión

1. En otra pestaña, ve a la página **Releases** de este repositorio.  
   - _Sugerencia_: pulsa la pestaña **Code** y, bajo la descripción, haz clic en **Releases**.  
2. Haz clic en **Draft a new release**.  
3. En _Tag version_, escribe `v1.0.0`.  
4. A la derecha del desplegable **Tag**, abre **Target** y selecciona la rama `develop`.  
   - _Nota_: es temporal para generar las notas basadas en los cambios de esa rama.  
5. Arriba a la derecha del cuadro de descripción, haz clic en **Generate release notes**.  
6. Revisa el texto generado y modifícalo si lo deseas.  
7. Vuelve a poner _Target_ en `main`, que es donde quieres crear la etiqueta una vez fusionada la rama de release.  
8. Haz clic en **Save draft**; publicarás la *release* en el siguiente paso.

¡Ya puedes [fusionar](https://docs.github.com/es/get-started/quickstart/github-glossary#merge) tu *pull request*!

### :keyboard: Actividad: fusionar a `main`

1. En otra pestaña, abre la página **Pull requests** del repositorio.  
2. Entra en tu PR **Release v1.0**.  
3. Haz clic en **Merge pull request**.  
4. Espera unos 20 segundos y actualiza esta página. [GitHub Actions](https://docs.github.com/es/actions) avanzará automáticamente al siguiente paso.

You can now [merge](https://docs.github.com/en/get-started/quickstart/github-glossary#merge) your pull request!
