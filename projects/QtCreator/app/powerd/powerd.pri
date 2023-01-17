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
$${PERIFRA_SRC}/xos/platform/os/raspberrypi/raspberrypios/pigpio.h \
$${PERIFRA_SRC}/xos/platform/os/raspberrypi/raspberrypios/pigpio.hpp \
\
$${PERIFRA_SRC}/xos/base/initialized.hpp \
$${PERIFRA_SRC}/xos/base/finalized.hpp \
\
$${PERIFRA_SRC}/xos/pio/implement.hpp \
$${PERIFRA_SRC}/xos/pio/extend.hpp \
$${PERIFRA_SRC}/xos/pio/raspberrypi/raspberrypios/pigpio/pio.hpp \
$${PERIFRA_SRC}/xos/pio/os/os.hpp \
$${PERIFRA_SRC}/xos/pio/pios.hpp \
\
$${PERIFRA_SRC}/xos/app/console/base/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/base/main.hpp \
\
$${PERIFRA_SRC}/xos/app/console/pio/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/pio/main.hpp \
\
$${PERIFRA_SRC}/xos/app/console/pio/onoff/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/pio/onoff/main.hpp \
\
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
$${PERIFRA_SRC}/xos/app/console/protocol/home/control/power/server/pio/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/protocol/home/control/power/server/pio/main.hpp \
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
\
$${PERIFRA_SRC}/xos/app/console/protocol/home/control/power/sockets/server/pio/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/protocol/home/control/power/sockets/server/pio/main.hpp \

# powerd SOURCES
#
powerd_SOURCES += \
$${PERIFRA_SRC}/xos/platform/os/raspberrypi/raspberrypios/pigpio.cpp \
\
$${PERIFRA_SRC}/xos/base/initialized.cpp \
$${PERIFRA_SRC}/xos/base/finalized.cpp \
\
$${PERIFRA_SRC}/xos/pio/implement.cpp \
$${PERIFRA_SRC}/xos/pio/extend.cpp \
$${PERIFRA_SRC}/xos/pio/raspberrypi/raspberrypios/pigpio/pio.cpp \
$${PERIFRA_SRC}/xos/pio/os/os.cpp \
$${PERIFRA_SRC}/xos/pio/pios.cpp \
\
$${PERIFRA_SRC}/xos/app/console/protocol/home/control/power/sockets/server/pio/main_opt.cpp \
$${PERIFRA_SRC}/xos/app/console/protocol/home/control/power/sockets/server/pio/main.cpp \

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

