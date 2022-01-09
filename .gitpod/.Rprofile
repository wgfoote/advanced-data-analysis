setwd("/workspace/advanced-data-analysis")
setHook("rstudio.sessionInit", function(newSession) {
  if (newSession && is.null(rstudioapi::getActiveProject()))
    rstudioapi::openProject("/workspace/advanced-data-analysis/")
}, action = "append")
