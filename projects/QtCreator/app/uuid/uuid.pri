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
#   File: uuid.pri
#
# Author: $author$
#   Date: 1/15/2023
#
# generic QtCreator project file for asteraede framework perifra executable uuid
########################################################################

########################################################################
# uuid

# uuid TARGET
#
uuid_TARGET = uuid

# uuid INCLUDEPATH
#
uuid_INCLUDEPATH += \
$${perifra_INCLUDEPATH} \

# uuid DEFINES
#
uuid_DEFINES += \
$${perifra_DEFINES} \
DEFAULT_LOGGING_LEVELS_ERROR \
XOS_CONSOLE_MAIN_MAIN \

########################################################################
# uuid OBJECTIVE_HEADERS
#
#uuid_OBJECTIVE_HEADERS += \
#$${PERIFRA_SRC}/xos/app/console/network/universal/unique/identifier/main.hh \

# uuid OBJECTIVE_SOURCES
#
#uuid_OBJECTIVE_SOURCES += \
#$${PERIFRA_SRC}/xos/app/console/network/universal/unique/identifier/main.mm \

########################################################################
# uuid HEADERS
#
uuid_HEADERS += \
$${NADIR_SRC}/xos/io/string/writer.hpp \
\
$${RETE_SRC}/xos/network/universal/unique/actual/identifier.hpp \
$${RETE_SRC}/xos/network/universal/unique/identifier.hpp \
$${RETE_SRC}/xos/network/universal/unique/posix/identifier.hpp \
$${RETE_SRC}/xos/network/universal/unique/os/identifier.hpp \
\
$${PERIFRA_SRC}/xos/app/console/network/universal/unique/identifier/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/network/universal/unique/identifier/main.hpp \

# uuid SOURCES
#
uuid_SOURCES += \
$${NADIR_SRC}/xos/io/string/writer.cpp \
\
$${RETE_SRC}/xos/network/universal/unique/os/identifier.cpp \
\
$${PERIFRA_SRC}/xos/app/console/network/universal/unique/identifier/main_opt.cpp \
$${PERIFRA_SRC}/xos/app/console/network/universal/unique/identifier/main.cpp \

########################################################################
# uuid FRAMEWORKS
#
uuid_FRAMEWORKS += \
$${perifra_FRAMEWORKS} \

# uuid LIBS
#
uuid_LIBS += \
$${perifra_LIBS} \

########################################################################
# NO Qt
QT -= gui core

