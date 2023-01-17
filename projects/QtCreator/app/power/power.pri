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
#   File: power.pri
#
# Author: $author$
#   Date: 1/4/2023
#
# generic QtCreator project file for unebulidity framework perifra executable power
########################################################################

########################################################################
# power

# power TARGET
#
power_TARGET = power

# power INCLUDEPATH
#
power_INCLUDEPATH += \
$${perifra_INCLUDEPATH} \

# power DEFINES
#
power_DEFINES += \
$${perifra_DEFINES} \
DEFAULT_LOGGING_LEVELS_ERROR \
XOS_CONSOLE_MAIN_MAIN \

########################################################################
# power OBJECTIVE_HEADERS
#
#power_OBJECTIVE_HEADERS += \
#$${PERIFRA_SRC}/xos/app/console/protocol/home/control/power/base/main.hh \

# power OBJECTIVE_SOURCES
#
#power_OBJECTIVE_SOURCES += \
#$${PERIFRA_SRC}/xos/app/console/protocol/home/control/power/base/main.mm \

########################################################################
# power HEADERS
#
power_HEADERS += \
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

# power SOURCES
#
power_SOURCES += \
$${PERIFRA_SRC}/xos/app/console/protocol/home/control/power/client/main_opt.cpp \
$${PERIFRA_SRC}/xos/app/console/protocol/home/control/power/client/main.cpp \

########################################################################
# power FRAMEWORKS
#
power_FRAMEWORKS += \
$${perifra_FRAMEWORKS} \

# power LIBS
#
power_LIBS += \
$${perifra_LIBS} \

########################################################################
# NO Qt
QT -= gui core

