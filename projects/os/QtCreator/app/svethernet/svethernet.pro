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
#   File: svethernet.pro
#
# Author: $author$
#   Date: 1/1/2023
#
# os specific QtCreator project .pro file for unebulidity framework perifra executable svethernet
########################################################################
# Depends: rostra;nadir;fila;crono
#
# Debug: perifra/build/os/QtCreator/Debug/bin/svethernet
# Release: perifra/build/os/QtCreator/Release/bin/svethernet
# Profile: perifra/build/os/QtCreator/Profile/bin/svethernet
#
include(../../../../../build/QtCreator/perifra.pri)
include(../../../../QtCreator/perifra.pri)
include(../../perifra.pri)
include(../../../../QtCreator/app/svethernet/svethernet.pri)

TARGET = $${svethernet_TARGET}

########################################################################
# INCLUDEPATH
#
INCLUDEPATH += \
$${svethernet_INCLUDEPATH} \

# DEFINES
# 
DEFINES += \
$${svethernet_DEFINES} \

########################################################################
# OBJECTIVE_HEADERS
#
OBJECTIVE_HEADERS += \
$${svethernet_OBJECTIVE_HEADERS} \

# OBJECTIVE_SOURCES
#
OBJECTIVE_SOURCES += \
$${svethernet_OBJECTIVE_SOURCES} \

########################################################################
# HEADERS
#
HEADERS += \
$${svethernet_HEADERS} \
$${svethernet_OBJECTIVE_HEADERS} \

# SOURCES
#
SOURCES += \
$${svethernet_SOURCES} \

########################################################################
# FRAMEWORKS
#
FRAMEWORKS += \
$${svethernet_FRAMEWORKS} \

# LIBS
#
LIBS += \
$${svethernet_LIBS} \
$${FRAMEWORKS} \

########################################################################

