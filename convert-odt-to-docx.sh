#!/bin/sh

# NOTE: we assume we're invoked by a service workflow rather than
#       on the command line.

# path to Pandoc on the local system.
PANDOC=/usr/local/bin/pandoc

# every invocation of this script logs its actions here.
LOG_PATH=${HOME}/convert-odt-to-docx.log

# make standard error a duplicate of standard output so we can send
# everything this script does to a log.
exec 2>&1
exec >>${LOG_PATH}

# add a marker to indicate that we ran.
date

# take all input arguments and assume they represent a single path.
#
# NOTE: we make this assumption based on the intended workflow where
#       OS X's Automator provides an unqouted path on the command line.
#       as a result, we can't convert more than one file per invocation.
#
ODT_PATH="$*"
DOCX_PATH="`echo ${ODT_PATH} | sed -e s/\.odt$/.docx/`"

echo "Converting '${ODT_PATH}' to '${DOCX_PATH}'."

# do the conversion.
${PANDOC} -f odt -t docx "${ODT_PATH}" -o "${DOCX_PATH}"
