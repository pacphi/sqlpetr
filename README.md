sqlpetr
================

## Introduction

`sqlpetr` is the companion R package for the database tutorial eBook at
<https://github.com/smithjd/sql-pet>. It has two classes of functions:

1.  Functions to install the dependencies needed to build the book and
    perform the operations covered in the tutorial, and
2.  Utilities for dealing with Docker and the PostgreSQL Docker image we
    use.

`sqlpetr` has a `pkgdown` site at <https://smithjd.github.io/sqlpetr/>.

## Prerequisites

You will need the following software:

1.  R 3.5.0 or later:
      - For Windows, go to <https://cran.rstudio.com/bin/windows/base/>.
      - For MacOS, go to <https://cran.rstudio.com/bin/macosx/>.
2.  RStudio Preview 1.2.1330 or later
    (<https://www.rstudio.com/products/rstudio/download/preview/>).
3.  Docker:
      - For Windows 10 Pro, use Docker for Windows
        (<https://docs.docker.com/docker-for-windows/install/>).
      - For other versions of Windows, use Docker Toolbox
        (<https://docs.docker.com/toolbox/overview/>).
      - For MacOS El Capitan 10.11 or newer macOS release running on a
        2010 or newer Mac, with Intel’s hardware support for MMU
        virtualization, use Docker for Mac
        (<https://docs.docker.com/v17.12/docker-for-mac/install/>).
      - For other versions of MacOS, use Docker Toolbox
        (<https://docs.docker.com/toolbox/overview/>).

See below for the details if you’re a Linux desktop
user.

## Installing this package for users of <https://smithjd.github.io/sql-pet>

If you are working through the code in the book, you will need to
install this package first. Note that these instructions assume Windows
or MacOS. For Linux, you will need to install some Linux packages. See
below for the details on Ubuntu “Bionic Beaver”, Fedora 29 or Arch
Linux.

1.  Make sure you have a writeable personal library.

2.  Update all your packages with `update.packages()`.

3.  Install `remotes` if you haven’t already.

4.  In an R console,
        type
    
        remotes::install_github("smithjd/sqlpetr", force = TRUE, build = FALSE, quiet = TRUE)

## Linux desktop

As with Windows and MacOS, you’ll need

  - R 3.5.0 or later,
  - RStudio Preview 1.2.1330 or later, and
  - Docker. On Ubuntu and Fedora, you’ll need to use Docker Community
    Edition
    (<https://store.docker.com/search?q=docker%20ce&type=edition&offering=community>)
    rather than the Docker that is packaged in the distro. On Arch
    Linux, the packaged `docker` is fine.

Once you have the prerequisites installed, make sure your user ID is
allowed to execute the `sudo` operation. Also, add yourself to the
`docker` group.

### Ubuntu Linux dependencies

You will need to run the following:

``` 
```

### Fedora Linux dependencies

You will need to run the following:

``` 
```

### Arch Linux dependencies

You will need to run the following:

``` 
```

### Other distros

If you want to use another distro (supported by Docker CE, please - we
don’t have the bandwidth to support other Docker versions) open an issue
at <https://github.com/smithjd/sqlpetr/issues/new>.
