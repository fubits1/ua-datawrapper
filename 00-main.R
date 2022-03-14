## TODO: move into GH workflow
if (!require("DatawRappr")) {
  devtools::install_github("munichrocker/DatawRappr")
}

library(DatawRappr)

# Auth

datawrapper_auth(api_key = Sys.getenv("API_KEY"), overwrite = TRUE)

## Test Auth
# > needs scope: read user info

test_key <- dw_test_key()
# print(test_key)
stopifnot(test_key$response$status_code == 200)

# Publish

## get all charts

# > there seems to be a bug or so

# charts <- DatawRappr::dw_list_charts(api_key = "environment", published = TRUE)

charts <- Sys.getenv("CHART_IDS") |>
  strsplit(", ") |>
  unlist()

stopifnot(length(charts) > 0)

print(charts)

result <- lapply(charts, FUN = dw_publish_chart, return_urls = TRUE)

# result <- purrr::walk(charts, dw_publish_chart, return_urls = FALSE)

print(result)
