#' @title filter and save to excel file
#' @description filter tangshi to new dataframe and save to excel file
#' @param .data tangshi
#' @param .title title
#' @param .author author name
#' @param .word keyword
#' @export
#' @examples
#' extract2excel(tangshi, .author = "白居易")
#'
extract2excel <- function(.data, .title = NULL, .author = NULL, .word = NULL) {

  df_select <- .data

  if (!is.null(.title)) {
    df_select <- df_select %>% dplyr::filter(stringr::str_detect(title, .title))
  }

  if (!is.null(.author)) {
    df_select <- df_select %>% dplyr::filter(author %in% .author)
  }

  if (!is.null(.word)) {
    df_select <- df_select %>% dplyr::filter(stringr::str_detect(value, .word))
  }

  df_select %>% openxlsx::write.xlsx(paste0("tangshi", "-", .title, "-", .author, "-", .word, ".xlsx"))
}
