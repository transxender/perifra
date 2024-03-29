/*/
///////////////////////////////////////////////////////////////////////
/// Copyright (c) 1988-2023 $organization$
///
/// This software is provided by the author and contributors ``as is'' 
/// and any express or implied warranties, including, but not limited to, 
/// the implied warranties of merchantability and fitness for a particular 
/// purpose are disclaimed. In no event shall the author or contributors 
/// be liable for any direct, indirect, incidental, special, exemplary, 
/// or consequential damages (including, but not limited to, procurement 
/// of substitute goods or services; loss of use, data, or profits; or 
/// business interruption) however caused and on any theory of liability, 
/// whether in contract, strict liability, or tort (including negligence 
/// or otherwise) arising in any way out of the use of this software, 
/// even if advised of the possibility of such damage.
///
///   File: main.h
///
/// Author: $author$
///   Date: 3/28/2023
///////////////////////////////////////////////////////////////////////
/*/
#ifndef XOS_APP_CONSOLE_PIGPIO_CLIENT_PIO_MAIN_H
#define XOS_APP_CONSOLE_PIGPIO_CLIENT_PIO_MAIN_H

#include "xos/platform/configure.h"

#if defined(__cplusplus)
extern "C" {
#endif /*/ defined(__cplusplus) /*/

int gpioRestart();
int gpioStop();

int gpioSetHost(const char* to);
int gpioSetPort(short to);

#if defined(__cplusplus)
} /*/ extern "C" /*/
#endif /*/ defined(__cplusplus) /*/

#endif /*/ XOS_APP_CONSOLE_PIGPIO_CLIENT_PIO_MAIN_H /*/
