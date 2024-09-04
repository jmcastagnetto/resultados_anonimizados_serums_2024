library(tidyverse)

mk_dist_plot <- function(res) {
  res_mediana <- res %>%
    group_by(region_de_evaluacion) %>%
    summarise(med = median(nota, na.rm = TRUE))

  carrera <- unique(res$carrera)

  ggplot(res, aes(x = nota)) +
    geom_histogram(bins = 20, fill = "cyan") +
    geom_vline(
      data = res_mediana,
      aes(xintercept = med),
      linewidth = .8
    ) +
    geom_text(
      data = res_mediana,
      aes(x = med + 2,
          y = 12,
          hjust = 0,
          label = paste("Mediana:", round(med, 1)))
    ) +
    scale_x_continuous(limits = c(0, 20), n.breaks = 11) +
    scale_y_continuous(expand = expansion(add = c(.1, 2))) +
    facet_wrap(~region_de_evaluacion, scales = "free_y", ncol = 5) +
    labs(
      x = "Nota obtenida",
      y = "Frecuencia",
      title = paste("Distribución de Notas (SERUMS 2024):", str_to_title(carrera)),
      subtitle = "Fuente: https://www.gob.pe/institucion/minsa/informes-publicaciones/5941696-resultados-de-la-evaluacion-para-el-serums",
      caption = "Jesus M. Castagnetto, 2024"
    ) +
    theme_bw(base_size = 14, base_family = "Atkinson Hyperlegible") +
    theme(
      plottitle.position = "plot",
      plot.title = element_text(size = 24, face = "bold"),
      plot.subtitle = element_text(size = 16, color = "gray40"),
      plot.caption = element_text(size = 14)
    )
  fn <- paste0("plots/distribucion-serums2024-", carrera, ".png")
  ggsave(
    width = 20,
    height = 14,
    filename = fn
  )
}

# Enfermeria --------------------------------------------------------------

#enf <- read_csv("5941696-resultados-de-la-evaluacion-para-el-serums-de-enfermeria.csv")
enf <- readRDS("5941696-resultados-de-la-evaluacion-para-el-serums-de-enfermeria.rds")

mk_dist_plot(enf)

# Medicina ----------------------------------------------------------------

med <- readRDS("5941696-resultados-de-la-evaluacion-para-el-serums-de-medicina.rds")

mk_dist_plot(med)

# Nutrición ---------------------------------------------------------------

nut <- readRDS("5941696-resultados-de-la-evaluacion-para-el-serums-de-nutricion.rds")

mk_dist_plot(nut)

# Obstetricia -------------------------------------------------------------

obs <- readRDS("5941696-resultados-de-la-evaluacion-para-el-serums-de-obstetricia.rds")

mk_dist_plot(obs)

# Odontología -------------------------------------------------------------

odo <- readRDS("5941696-resultados-de-la-evaluacion-para-el-serums-de-odontologia.rds")

mk_dist_plot(odo)

# Químico Farmacéutico ----------------------------------------------------

qfr <- readRDS("5941696-resultados-de-la-evaluacion-para-el-serums-de-quimico-farmaceutico.rds")

mk_dist_plot(qfr)
