# Overview
OpenOffice to Microsoft Office document conversion workflow for OS X.  This
provides a shell script to convert an `.odt` file to an `.docx` file as well as
an Automator workflow that provides a menu entry in the Finder.

# Installation
A barebones `Makefile` installs the shell script into `${HOME}/bin` and the
workflow into `${HOME}/Library/Services/`.  The shell script assumes that Pandoc
has been installed beneath `/usr/local` and needs to be updated if it was
installed somewhere else.
