# Resultados Anonimizados del serums2024 2024, Perú

Datos extraídos de los PDFs con los resultados del serums2024 2024 en Perú. Se han anonimizado removiendo los nombres de las personas.

Los PDFs fueron procesados usando [Tabula](https://tabula.technology/) para obtener CSV intermedios, lo cuales fueron modificados para remover los nombres y apellidos (paterno y materno) de cada persona en las listas, además, los nombres de las columnas se han normalizado y se ha agregado una columna indicando la Carrera.

La estructura de todos los CSV es la siguiente:

| Columna              | Tipo    | Descripción                                        |
| -------------------- | ------- | -------------------------------------------------- |
| carrera              | text    | La carrera a la que corresponden los resultados    |
| n                    | integer | Orden en que aparecen en el listado original (PDF) |
| region_de_evaluacion | text    | Región donde se evaluó                             |
| nota                 | double  | Nota obtenida                                      |

Los archivos RDS tienen los mismos datos, pero en formato binario de R

Fuente original: [Resultados de la Evaluación para el serums2024](https://www.gob.pe/institucion/minsa/informes-publicaciones/5941696-resultados-de-la-evaluacion-para-el-serums2024), publicado el 2024/09/02

## Distribuciones de notas

Ver detalles de como se han generado estos gráficos en [distribuciones-notas.R](/distribuciones-notas.R)

### Enfermería

[![Enfermería](/plots/distribucion-serums20242024-enfermeria.png)](/plots/distribucion-serums2024-enfermeria.png)

### Medicina

[![Medicina](/plots/distribucion-serums2024-medicina.png)](/plots/distribucion-serums2024-medicina.png))

### Nutrición

[![Nutrición](/plots/distribucion-serums2024-nutricion.png)](/plots/distribucion-serums2024-nutricion.png)

### Obstetricia

[![Obstetricia](/plots/distribucion-serums2024-obstetricia.png)](/plots/distribucion-serums2024-obstetricia.png)

### Odontología

[![Odontología](/plots/distribucion-serums2024-odontologia.png)](/plots/distribucion-serums2024-odontologia.png)

### Químico Farmacéutico

[![Químico Farmacéutico](/plots/distribucion-serums2024-quimico-farmaceutico.png)](/plots/distribucion-serums2024-quimico-farmaceutico.png)
