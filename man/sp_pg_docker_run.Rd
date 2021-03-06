% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sp_docker_functions.R
\name{sp_pg_docker_run}
\alias{sp_pg_docker_run}
\title{Run a PostgreSQL Docker image in a container}
\usage{
sp_pg_docker_run(
  container_name,
  image_tag = "docker.io/postgres:10",
  postgres_password = "postgres",
  postgres_port = 5439,
  docker_network = "sql-pet"
)
}
\arguments{
\item{container_name}{character: a valid container name for the container}

\item{image_tag}{character: a valid image tag (name) for the docker image to
run. Default is the base PostgreSQL 10 image, \code{docker.io/postgres:10}.}

\item{postgres_password}{character: the \code{postgres} database superuser
password. Default is "postgres".}

\item{postgres_port}{integer: the PostgreSQL port. The default is \emph{5439}.
Note that the default is 5439 instead of the usual PostgreSQL default, 5432.
Why? If PostgreSQL is running on the host or in another container, it probably
has claimed port 5432, since that's its default, and our container won't work!
So we need to use a different port for \emph{our} PostgreSQL container.}

\item{docker_network}{character: the Docker network to host the container.
The default is "sql-pet". The network will be created if it does not exist.}
}
\value{
If the Docker command fails, \code{sp_pg_docker_run} will stop with an
error message. If the Docker command succeeds, \code{sp_pg_docker_run} will wait
30 seconds for the database to come up with \code{sp_get_postgres_connection}.
If that fails, \code{sp_get_postgres_connection} will stop with an error message.
If it succeeds, \code{sp_pg_docker_run} will close the connection and return the
\emph{Docker} result.
}
\description{
Creates a container and runs an image in it. The image
must be based on the \code{docker.io/postgres:10} image. It will run in the
background (\code{--detach}) and the container PostgreSQL port will be
published to \code{localhost}.
}
\examples{
\dontrun{
build_log <- sp_make_dvdrental_image("test-dvdrental:latest")
sp_docker_images_tibble()
sp_pg_docker_run(
 container_name = "test-dvdrental",
 image_tag = "test-dvdrental:latest",
 postgres_password = "postgres"
)
sp_docker_containers_tibble()
}
}
