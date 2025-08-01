% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fct_main.R
\name{md_replicate}
\alias{md_replicate}
\title{Replicate study design and aggregate simulation outputs}
\usage{
md_replicate(
  obj,
  n_replicates,
  verbose = FALSE,
  trace = TRUE,
  parallel = FALSE,
  ncores = parallel::detectCores()
)
}
\arguments{
\item{obj}{An object of class \code{movedesign} created by
\code{\link[=md_prepare]{md_prepare()}}. It contains all parameters and input data
defining the movement study.}

\item{n_replicates}{Integer specifying how many independent
simulation replicates to run.}

\item{verbose}{Logical; if \code{TRUE}, runs population-level inferences
iteratively for increasing population sample sizes, saving results
at each step. Defaults to \code{FALSE}, which runs only once for the
maximum sample size defined by \code{n_individuals} in \code{\link[=md_prepare]{md_prepare()}}.}

\item{trace}{Logical; if \code{TRUE} (default), prints progress and
timing messages to the console.}

\item{parallel}{Logical; if \code{TRUE}, enables parallel processing.
Default is \code{FALSE}.}

\item{ncores}{Integer; number of CPU cores to use for parallel
processing. Defaults to all available cores detected by
\code{parallel::detectCores()}.}
}
\value{
A list of class \code{movedesign_output} with two elements:
\itemize{
\item \code{data}: A list containing
merged simulation outputs from all replicates.
\item \code{summary}: A \code{data.table} summarizing key
statistics for each replicate.
}
}
\description{
Runs the specified movement study design multiple times and aggregates
outputs and summary statistics across independent replicates. This
enables sensitivity analyses and quantifies variability arising from
random sampling, especially when individual-level variation is enabled
(i.e., \code{add_individual_variation = TRUE} in \code{\link[=md_prepare]{md_prepare()}}).
Replication helps assess how stochasticity and design choices impact
simulation inference.
}
\details{
Each replicate runs independently using the same study design object
but with a unique random seed to ensure independence. Results from all
replicates are merged using \code{\link[=md_merge]{md_merge()}}, and summary statistics
combine into a single \code{data.table} for convenient downstream analyses
and evaluation. Parallel processing can significantly reduce runtime
when running many replicates; use \code{ncores} to specify the number of CPU
cores used. If function is interrupted (e.g., Ctrl+C), it returns
results from all completed replicates up to that point.
}
\examples{
if (interactive()) {
  input <- md_prepare(
    data = buffalo,
    models = models,
    species = "buffalo",
    n_individuals = 5,
    dur = list(value = 1, unit = "month"),
    dti = list(value = 1, unit = "day"),
    add_individual_variation = TRUE,
    grouped = FALSE,
    set_target = "hr",
    which_meta = "mean"
  )

  output <- md_replicate(input, n_replicates = 5)
}

}
\seealso{
\code{\link[=md_prepare]{md_prepare()}}, \code{\link[=md_run]{md_run()}}, \code{\link[=md_merge]{md_merge()}}
}
