########################################################################
# Copyright (c) 1988-2023 $organization$
#
# This software is provided by the author and contributors ``as is''
# and any express or implied warranties, including, but not limited to,
# the implied warranties of merchantability and fitness for a particular
# purpose are disclaimed. In no event shall the author or contributors
# be liable for any direct, indirect, incidental, special, exemplary,
# or consequential damages (including, but not limited to, procurement
# of substitute goods or services; loss of use, data, or profits; or
# business interruption) however caused and on any theory of liability,
# whether in contract, strict liability, or tort (including negligence
# or otherwise) arising in any way out of the use of this software,
# even if advised of the possibility of such damage.
#
#   File: rpponoff.pro
#
# Author: $author$
#   Date: 3/25/2023
#
# os specific QtCreator project .pro file for nuasteraede framework perifra executable rpponoff
########################################################################
# Depends: rostra;nadir;fila;crono;rete;stara;cifra;talas
#
# Debug: perifra/build/os/QtCreator/Debug/bin/rpponoff
# Release: perifra/build/os/QtCreator/Release/bin/rpponoff
# Profile: perifra/build/os/QtCreator/Profile/bin/rpponoff
#
include(../../../../../build/QtCreator/perifra.pri)
include(../../../../QtCreator/perifra.pri)
include(../../perifra.pri)
include(../../../../QtCreator/app/rpponoff/rpponoff.pri)

TARGET = $${rpponoff_TARGET}

########################################################################
# INCLUDEPATH
#
INCLUDEPATH += \
$${rpponoff_INCLUDEPATH} \

# DEFINES
# 
DEFINES += \
$${rpponoff_DEFINES} \

########################################################################
# OBJECTIVE_HEADERS
#
OBJECTIVE_HEADERS += \
$${rpponoff_OBJECTIVE_HEADERS} \

# OBJECTIVE_SOURCES
#
OBJECTIVE_SOURCES += \
$${rpponoff_OBJECTIVE_SOURCES} \

########################################################################
# HEADERS
#
HEADERS += \
$${rpponoff_HEADERS} \
$${rpponoff_OBJECTIVE_HEADERS} \

# SOURCES
#
SOURCES += \
$${rpponoff_SOURCES} \

########################################################################
# FRAMEWORKS
#
FRAMEWORKS += \
$${rpponoff_FRAMEWORKS} \

# LIBS
#
LIBS += \
$${rpponoff_LIBS} \
$${FRAMEWORKS} \

########################################################################
