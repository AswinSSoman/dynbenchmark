% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scaling_utils.R
\name{strip_vglm}
\alias{strip_vglm}
\title{Strip a vglm model, removing components which are not necessary for predictions}
\usage{
strip_vglm(model)
}
\arguments{
\item{model}{The vglm model}
}
\description{
Strip a vglm model, removing components which are not necessary for predictions
}
\examples{
\dontrun{
d.AD <- data.frame(treatment = gl(3, 3),outcome = gl(3, 1, 9),counts = c(18,17,15,20,10,20,25,13,12))
model <- VGAM::vglm(counts ~ outcome + treatment, family = VGAM::poissonff, data = d.AD, trace = TRUE)

object.size(model)
object.size(strip_vglm(model))
1/as.numeric(object.size(strip_vglm(model))/object.size(model))
predict(model, d.AD)
predict(strip_vglm(model), d.AD)
}

}
