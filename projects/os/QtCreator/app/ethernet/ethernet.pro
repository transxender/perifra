########################################################################
# Copyright (c) 1988-2022 $organization$
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
#   File: ethernet.pro
#
# Author: $author$
#   Date: 12/31/2022
#
# os specific QtCreator project .pro file for framework perifra executable ethernet
########################################################################
#
# Debug: perifra/build/os/QtCreator/Debug/bin/ethernet
# Release: perifra/build/os/QtCreator/Release/bin/ethernet
# Profile: perifra/build/os/QtCreator/Profile/bin/ethernet
#
include(../../../../../build/QtCreator/perifra.pri)
include(../../../../QtCreator/perifra.pri)
include(../../perifra.pri)
include(../../../../QtCreator/app/ethernet/ethernet.pri)

TARGET = $${ethernet_TARGET}

########################################################################
# INCLUDEPATH
#
INCLUDEPATH += \
$${ethernet_INCLUDEPATH} \

# DEFINES
# 
DEFINES += \
$${ethernet_DEFINES} \

########################################################################
# OBJECTIVE_HEADERS
#
OBJECTIVE_HEADERS += \
$${ethernet_OBJECTIVE_HEADERS} \

# OBJECTIVE_SOURCES
#
OBJECTIVE_SOURCES += \
$${ethernet_OBJECTIVE_SOURCES} \

########################################################################
# HEADERS
#
HEADERS += \
$${ethernet_HEADERS} \
$${ethernet_OBJECTIVE_HEADERS} \

# SOURCES
#
SOURCES += \
$${ethernet_SOURCES} \

########################################################################
# FRAMEWORKS
#
FRAMEWORKS += \
$${ethernet_FRAMEWORKS} \

# LIBS
#
LIBS += \
$${ethernet_LIBS} \
$${FRAMEWORKS} \

########################################################################

