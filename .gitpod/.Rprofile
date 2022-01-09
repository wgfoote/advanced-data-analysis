setwd("/workspace/advanced-data-analytics")
setHook("rstudio.sessionInit", function(newSession) {
  if (newSession && is.null(rstudioapi::getActiveProject()))
    rstudioapi::openProject("/workspace/advanced-data-analytics/")
}, action = "append")
