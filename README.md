# Resultados Anonimizados del SERUMS 2024, Perú

Datos extraídos de los PDFs con los resultados del SERUMS 2024 en Perú. Se han anonimizado removiendo los nombres de las personas.

Los PDFs fueron procesados usando [Tabula](https://tabula.technology/) para obtener CSV intermedios, lo cuales fueron modificados para remover los nombres y apellidos (paterno y materno) de cada persona en las listas, además, los nombres de las columnas se han normalizado y se ha agregado una columna indicando la Carrera.

La estructura de todos los CSV es la siguiente:

| Columna              | Tipo    | Descripción                                        |
| -------------------- | ------- | -------------------------------------------------- |
| carrera              | text    | La carrera a la que corresponden los resultados    |
| n                    | integer | Orden en que aparecen en el listado original (PDF) |
| region_de_evaluacion | text    | Región donde se evaluó                             |
| nota                 | double  | Nota obtenida                                      |

Los archivos RDS tienen los mismos datos, pero en formato binario de R

Fuente original: [Resultados de la Evaluación para el SERUMS](https://www.gob.pe/institucion/minsa/informes-publicaciones/5941696-resultados-de-la-evaluacion-para-el-serums), publicado el 2024/09/02

## Distribuciones de notas

Ver detalles de como se han generado estos gráficos en [distribuciones-notas.R](/distribuciones-notas.R)

### Enfermería

[![Enfermería](/plots/distribucion-serums2024-enfermeria.png)](/plots/distribucion-serums-enfermeria.png)

### Medicina

[![Medicina](/plots/distribucion-serums-medicina.png)](/plots/distribucion-serums-medicina.png))

### Nutrición

[![Nutrición](/plots/distribucion-serums-nutricion.png)](/plots/distribucion-serums-nutricion.png)

### Obstetricia

[![Obstetricia](/plots/distribucion-serums-obstetricia.png)](/plots/distribucion-serums-obstetricia.png)

### Odontología

[![Odontología](/plots/distribucion-serums-odontologia.png)](/plots/distribucion-serums-odontologia.png)

### Químico Farmacéutico

[![Químico Farmacéutico](/plots/distribucion-serums-quimico-farmaceutico.png)](/plots/distribucion-serums-quimico-farmaceutico.png)
