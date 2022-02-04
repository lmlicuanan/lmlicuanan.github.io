tar_option_set(packages = c("osmdata", "tidyverse", "sf"))
httr::set_config(httr::config(ssl_verifypeer = FALSE))
set.seed(2022)
