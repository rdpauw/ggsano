# Generate internal color palettes data `R/sysdata.rda`
#
# [1] R Packages - Internal data. http://r-pkgs.had.co.nz/data.html#data-sysdata
# [2] Name that Color. http://chir.ag/projects/name-that-color/

x <- vector("list")

# Discrete Color Palettes

# Color palette inspired by plots in Nature Reviews Cancer
x$"all" <- c(
  "medium green" = "#39B54A", "dark green" = "#006838",
  "light green" = "#B2D235", "dark grey" = "#58595B",
  "Sciensano 1" = "#F6D200", "Sciensano 2" = "#FDB924",
  "Sciensano 3" = "#F99D1C", "Sciensano 4" = "#D83D96",
  "Sciensano 5" = "#DC8BBB", "Sciensano 6" = "#F15A22",
  "Sciensano 7" = "#00B0BD", "Sciensano 8" = "#00B8A5",
  "Sciensano 9" = "#524FA1"
)

# Color palette inspired by plots in Science from AAAS
x$"primary" <- c(
  "medium green" = "#39B54A", "dark green" = "#006838",
  "light green" = "#B2D235", "dark grey" = "#58595B"
)

# Color palette inspired by plots in The New England Journal of Medicine
x$"secondary" <- c(
  "Sciensano 1" = "#F6D200", "Sciensano 2" = "#FDB924",
  "Sciensano 3" = "#F99D1C", "Sciensano 4" = "#D83D96",
  "Sciensano 5" = "#DC8BBB", "Sciensano 6" = "#F15A22",
  "Sciensano 7" = "#00B0BD", "Sciensano 8" = "#00B8A5",
  "Sciensano 9" = "#524FA1"
)

# Color palette inspired by plots in Lancet Oncology
x$"yellowaccent" <- c(
  "Sciensano 1" = "#F6D200", "Sciensano 2" = "#FDB924",
  "Sciensano 3" = "#F99D1C", "Sciensano 6" = "#F15A22"
)

save(x, file = "data/x.rda")
