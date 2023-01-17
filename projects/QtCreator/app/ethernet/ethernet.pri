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
#   File: ethernet.pri
#
# Author: $author$
#   Date: 12/31/2022
#
# generic QtCreator project .pri file for framework perifra executable ethernet
########################################################################

########################################################################
# ethernet

# ethernet TARGET
#
ethernet_TARGET = ethernet

# ethernet INCLUDEPATH
#
ethernet_INCLUDEPATH += \
$${perifra_INCLUDEPATH} \

# ethernet DEFINES
#
ethernet_DEFINES += \
$${perifra_DEFINES} \
DEFAULT_LOGGING_LEVELS_ERROR \
XOS_CONSOLE_MAIN_MAIN \

########################################################################
# ethernet OBJECTIVE_HEADERS
#
#ethernet_OBJECTIVE_HEADERS += \
#$${PERIFRA_SRC}/xos/app/console/os/ethernet/main.hh \

# ethernet OBJECTIVE_SOURCES
#
#ethernet_OBJECTIVE_SOURCES += \
#$${PERIFRA_SRC}/xos/app/console/os/ethernet/main.mm \

########################################################################
# ethernet HEADERS
#
ethernet_HEADERS += \
$${NADIR_SRC}/xos/base/chars.hpp \
$${NADIR_SRC}/xos/base/string.hpp \
$${NADIR_SRC}/xos/base/wrapped.hpp \
\
$${RETE_SRC}/xos/network/ethernet/actual/address.hpp \
$${RETE_SRC}/xos/network/ethernet/address.hpp \
$${RETE_SRC}/xos/network/ethernet/bsd/address.hpp \
$${RETE_SRC}/xos/network/ethernet/systemv/address.hpp \
$${RETE_SRC}/xos/network/ethernet/os/os.hpp \
$${RETE_SRC}/xos/network/ethernet/os/address.hpp \
\
$${PERIFRA_SRC}/xos/app/console/verbose/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/verbose/main.hpp \
\
$${PERIFRA_SRC}/xos/app/console/os/ethernet/main_opt.hpp \
$${PERIFRA_SRC}/xos/app/console/os/ethernet/main.hpp \

# ethernet SOURCES
#
ethernet_SOURCES += \
$${NADIR_SRC}/xos/base/chars.cpp \
$${NADIR_SRC}/xos/base/string.cpp \
$${NADIR_SRC}/xos/base/wrapped.cpp \
\
$${RETE_SRC}/xos/network/ethernet/os/os.cpp \
$${RETE_SRC}/xos/network/ethernet/os/address.cpp \
\
$${PERIFRA_SRC}/xos/app/console/os/ethernet/main_opt.cpp \
$${PERIFRA_SRC}/xos/app/console/os/ethernet/main.cpp \

########################################################################
# ethernet FRAMEWORKS
#
ethernet_FRAMEWORKS += \
$${perifra_FRAMEWORKS} \

# ethernet LIBS
#
ethernet_LIBS += \
$${perifra_LIBS} \

########################################################################
# NO Qt
QT -= gui core

