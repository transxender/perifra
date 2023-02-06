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
#   File: powerd.pri
#
# Author: $author$
#   Date: 1/5/2023
#
# generic QtCreator project file for unebulidity framework perifra executable powerd
########################################################################

########################################################################
# powerd

# powerd TARGET
#
powerd_TARGET = powerd

# powerd INCLUDEPATH
#
powerd_INCLUDEPATH += \
$${perifra_INCLUDEPATH} \

# powerd DEFINES
#
powerd_DEFINES += \
$${perifra_DEFINES} \
DEFAULT_LOGGING_LEVELS_ERROR \
XOS_CONSOLE_MAIN_MAIN \

########################################################################
# powerd OBJECTIVE_HEADERS
#
#powerd_OBJECTIVE_HEADERS += \
#$${PERIFRA_SRC}/xos/app/console/protocol/home/control/power/base/main.hh \

# powerd OBJECTIVE_SOURCES
#
#powerd_OBJECTIVE_SOURCES += \
#$${PERIFRA_SRC}/xos/app/console/protocol/home/control/power/base/main.mm \

########################################################################
# powerd HEADERS
#
powerd_HEADERS += \
$${PERIFRA_SRC}/xos/app/console/protocol/base/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/protocol/base/main.hpp \
$${PERIFRA_SRC}/xos/app/console/protocol/client/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/protocol/client/main.hpp \
$${PERIFRA_SRC}/xos/app/console/protocol/server/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/protocol/server/main.hpp \
\
$${PERIFRA_SRC}/xos/app/console/protocol/home/control/power/base/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/protocol/home/control/power/base/main.hpp \
$${PERIFRA_SRC}/xos/app/console/protocol/home/control/power/client/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/protocol/home/control/power/client/main.hpp \
$${PERIFRA_SRC}/xos/app/console/protocol/home/control/power/server/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/protocol/home/control/power/server/main.hpp \

# powerd SOURCES
#
powerd_SOURCES += \
$${PERIFRA_SRC}/xos/app/console/protocol/home/control/power/server/main_opt.cpp \
$${PERIFRA_SRC}/xos/app/console/protocol/home/control/power/server/main.cpp \

########################################################################
# powerd FRAMEWORKS
#
powerd_FRAMEWORKS += \
$${perifra_FRAMEWORKS} \

# powerd LIBS
#
powerd_LIBS += \
$${perifra_LIBS} \

########################################################################
# NO Qt
QT -= gui core

