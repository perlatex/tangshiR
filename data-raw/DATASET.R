## code to prepare `DATASET` dataset goes here

tangshi <-
  readr::read_rds(here::here("data-raw", "tangshi.rds")) |>
  tibble::as_tibble()

usethis::use_data(tangshi, overwrite = TRUE)
