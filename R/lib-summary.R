#' R Library Summary
#'
#' Provide a brief summary of the package libraries on your machine
#'
#' @return A two-column `data.frame` containing the count of packages in each of the user's
#'  libraries \eqn{a + b^2}.
#' @export
#' @examples
#'   lib_summary()

lib_summary <- function(sizes = FALSE) {
  pkgs <- utils::installed.packages()
  pkg_tbl <- table(pkgs[, "LibPath"])
  pkg_df <- as.data.frame(pkg_tbl, stringsAsFactors = FALSE)
  names(pkg_df) <- c("Library", "n_packages")

  if (sizes) {
    pkg_df$lib_size <- sapply(
      pkg_df$Library, # loop over library
      function(x) {
        sum(fs::file_size(fs::dir_ls(x, recurse = TRUE)))
      }
    )
  }

  return(pkg_df)
}
