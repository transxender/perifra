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
#   File: svethernet.pri
#
# Author: $author$
#   Date: 1/1/2023
#
# generic QtCreator project file for unebulidity framework perifra executable svethernet
########################################################################

########################################################################
# svethernet

# svethernet TARGET
#
svethernet_TARGET = svethernet

# svethernet INCLUDEPATH
#
svethernet_INCLUDEPATH += \
$${perifra_INCLUDEPATH} \

# svethernet DEFINES
#
svethernet_DEFINES += \
$${perifra_DEFINES} \
DEFAULT_LOGGING_LEVELS_ERROR \
XOS_CONSOLE_MAIN_MAIN \

########################################################################
# svethernet OBJECTIVE_HEADERS
#
#svethernet_OBJECTIVE_HEADERS += \
#$${PERIFRA_SRC}/xos/app/console/systemv/ethernet/main.hh \

# svethernet OBJECTIVE_SOURCES
#
#svethernet_OBJECTIVE_SOURCES += \
#$${PERIFRA_SRC}/xos/app/console/systemv/ethernet/main.mm \

########################################################################
# svethernet HEADERS
#
svethernet_HEADERS += \
$${PERIFRA_SRC}/xos/app/console/systemv/ethernet/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/systemv/ethernet/main.hpp \

# svethernet SOURCES
#
svethernet_SOURCES += \
$${PERIFRA_SRC}/xos/app/console/systemv/ethernet/main_opt.cpp \
$${PERIFRA_SRC}/xos/app/console/systemv/ethernet/main.cpp \

########################################################################
# svethernet FRAMEWORKS
#
svethernet_FRAMEWORKS += \
$${perifra_FRAMEWORKS} \

# svethernet LIBS
#
svethernet_LIBS += \
$${perifra_LIBS} \

########################################################################
# NO Qt
QT -= gui core

