% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ndjson.R
\name{write_ndjson_raw}
\alias{write_ndjson_raw}
\title{Write list or data.frame object to NDJSON in a raw vector}
\usage{
write_ndjson_raw(x, opts = list(), ...)
}
\arguments{
\item{x}{\code{data.frame} or \code{list} to be written as multiple JSON strings}

\item{opts}{Named list of serialization options. Usually created by \code{\link[=opts_write_json]{opts_write_json()}}}

\item{...}{Other named options can be used to override any options in \code{opts}.
The valid named options are identical to arguments to \code{\link[=opts_write_json]{opts_write_json()}}}
}
\value{
Raw vector containing NDJSON character data
}
\description{
For \code{list} input, each element of the list is written as a single JSON string.
For \code{data.frame} input, each row of the \code{data.frame} is written
as aJSON string.
}
\examples{
js <- write_ndjson_raw(head(mtcars))
js
read_ndjson_raw(js, 'list')
}
\seealso{
Other JSON Serializer: 
\code{\link{write_json_file}()},
\code{\link{write_json_raw}()},
\code{\link{write_json_str}()},
\code{\link{write_ndjson_file}()},
\code{\link{write_ndjson_str}()}
}
\concept{JSON Serializer}
