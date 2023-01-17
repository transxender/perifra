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
#   File: bsdethernet.pri
#
# Author: $author$
#   Date: 1/1/2023
#
# generic QtCreator project file for unebulidity framework perifra executable bsdethernet
########################################################################

########################################################################
# bsdethernet

# bsdethernet TARGET
#
bsdethernet_TARGET = bsdethernet

# bsdethernet INCLUDEPATH
#
bsdethernet_INCLUDEPATH += \
$${perifra_INCLUDEPATH} \

# bsdethernet DEFINES
#
bsdethernet_DEFINES += \
$${perifra_DEFINES} \
DEFAULT_LOGGING_LEVELS_ERROR \
XOS_CONSOLE_MAIN_MAIN \

########################################################################
# bsdethernet OBJECTIVE_HEADERS
#
#bsdethernet_OBJECTIVE_HEADERS += \
#$${PERIFRA_SRC}/xos/app/console/bsd/ethernet/main.hh \

# bsdethernet OBJECTIVE_SOURCES
#
#bsdethernet_OBJECTIVE_SOURCES += \
#$${PERIFRA_SRC}/xos/app/console/bsd/ethernet/main.mm \

########################################################################
# bsdethernet HEADERS
#
bsdethernet_HEADERS += \
$${PERIFRA_SRC}/xos/app/console/bsd/ethernet/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/bsd/ethernet/main.hpp \

# bsdethernet SOURCES
#
bsdethernet_SOURCES += \
$${PERIFRA_SRC}/xos/app/console/bsd/ethernet/main_opt.cpp \
$${PERIFRA_SRC}/xos/app/console/bsd/ethernet/main.cpp \

########################################################################
# bsdethernet FRAMEWORKS
#
bsdethernet_FRAMEWORKS += \
$${perifra_FRAMEWORKS} \

# bsdethernet LIBS
#
bsdethernet_LIBS += \
$${perifra_LIBS} \

########################################################################
# NO Qt
QT -= gui core

