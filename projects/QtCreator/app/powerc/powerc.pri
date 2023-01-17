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
#   File: powerc.pri
#
# Author: $author$
#   Date: 1/11/2023
#
# generic QtCreator project file for unebulidity framework perifra executable powerc
########################################################################

########################################################################
# powerc

# powerc TARGET
#
powerc_TARGET = powerc

# powerc INCLUDEPATH
#
powerc_INCLUDEPATH += \
$${perifra_INCLUDEPATH} \

# powerc DEFINES
#
powerc_DEFINES += \
$${perifra_DEFINES} \
DEFAULT_LOGGING_LEVELS_ERROR \
XOS_CONSOLE_MAIN_MAIN \

########################################################################
# powerc OBJECTIVE_HEADERS
#
#powerc_OBJECTIVE_HEADERS += \
#$${PERIFRA_SRC}/xos/app/console/protocol/home/control/power/client/main.hh \

# powerc OBJECTIVE_SOURCES
#
#powerc_OBJECTIVE_SOURCES += \
#$${PERIFRA_SRC}/xos/app/console/protocol/home/control/power/client/main.mm \

########################################################################
# powerc HEADERS
#
powerc_HEADERS += \
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
\
$${PERIFRA_SRC}/xos/app/console/network/protocol/base/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/network/protocol/base/main.hpp \
$${PERIFRA_SRC}/xos/app/console/network/protocol/client/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/network/protocol/client/main.hpp \
$${PERIFRA_SRC}/xos/app/console/network/protocol/server/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/network/protocol/server/main.hpp \
\
$${PERIFRA_SRC}/xos/app/console/network/protocol/sockets/base/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/network/protocol/sockets/base/main.hpp \
$${PERIFRA_SRC}/xos/app/console/network/protocol/sockets/client/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/network/protocol/sockets/client/main.hpp \
$${PERIFRA_SRC}/xos/app/console/network/protocol/sockets/server/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/network/protocol/sockets/server/main.hpp \

# powerc SOURCES
#
powerc_SOURCES += \
$${PERIFRA_SRC}/xos/app/console/network/protocol/sockets/client/main_opt.cpp \
$${PERIFRA_SRC}/xos/app/console/network/protocol/sockets/client/main.cpp \

########################################################################
# powerc FRAMEWORKS
#
powerc_FRAMEWORKS += \
$${perifra_FRAMEWORKS} \

# powerc LIBS
#
powerc_LIBS += \
$${perifra_LIBS} \

########################################################################
# NO Qt
QT -= gui core

