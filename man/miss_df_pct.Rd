% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/missing_data_tidiers.R
\name{miss_df_pct}
\alias{miss_df_pct}
\title{Percentage of missing data in a dataframe}
\usage{
miss_df_pct(data)
}
\arguments{
\item{data}{a dataframe}
}
\value{
numeric the percent of missing data in a dataframe
}
\description{
Calculate the percent of missing data in a dataframe.
}
\examples{

library(naniar)
miss_df_pct(airquality)

}
