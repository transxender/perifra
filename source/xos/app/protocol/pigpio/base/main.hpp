//////////////////////////////////////////////////////////////////////////
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
///   File: main.hpp
///
/// Author: $author$
///   Date: 3/28/2023
//////////////////////////////////////////////////////////////////////////
#ifndef XOS_APP_PROTOCOL_PIGPIO_BASE_MAIN_HPP
#define XOS_APP_PROTOCOL_PIGPIO_BASE_MAIN_HPP

#include "xos/app/protocol/network/sockets/base/main.hpp"

#define XOS_APP_PROTOCOL_PERIFRA_CONTROL_PIGPIO_NETWORK_SOCKETS_PORT 8484

#define XOS_APP_PROTOCOL_PERIFRA_CONTROL_PIGPIO_NETWORK_SOCKETS_ACCEPT_PORT \
     XOS_APP_PROTOCOL_PERIFRA_CONTROL_PIGPIO_NETWORK_SOCKETS_PORT

#define XOS_APP_PROTOCOL_PERIFRA_CONTROL_PIGPIO_NETWORK_SOCKETS_CONNECT_PORT \
     XOS_APP_PROTOCOL_PERIFRA_CONTROL_PIGPIO_NETWORK_SOCKETS_PORT

namespace xos {
namespace app {
namespace protocol {
namespace pigpio {
namespace base {

/// class maint
template 
<class TExtends = xos::app::protocol::network::sockets::base::maint<>,  class TImplements = typename TExtends::implements>

class maint: virtual public TImplements, public TExtends {
public:
    typedef TImplements implements;
    typedef TExtends extends;
    typedef maint derives;

    typedef typename extends::char_t char_t;
    typedef typename extends::end_char_t end_char_t;
    enum { end_char = extends::end_char };
    typedef typename extends::string_t string_t;
    typedef typename extends::reader_t reader_t;
    typedef typename extends::writer_t writer_t;
    typedef typename extends::file_t file_t;

    /// constructor / destructor
    maint()
    : run_(0), 
      
      begin_gpioWrite_request_("{\"pigpio\":{\"gpioWrite\":[{\"gpio\":\""), 
      middle_gpioWrite_request_("\"},{\"level\":\""), 
      end_gpioWrite_request_("\"}]}}"),
      gpioWrite_request_gpio_("17"),
      gpioWrite_request_level_off_("0"),
      gpioWrite_request_level_on_("1"),
      
      begin_gpioRead_request_("{\"pigpio\":{\"gpioRead\":[{\"gpio\":\""), 
      middle_gpioRead_request_(""), 
      end_gpioRead_request_("\"}]}}"),
      gpioRead_request_gpio_("22"),

      gpioRestart_request_("restart"), 
      gpioStop_request_("stop"), 

      accept_port_(XOS_APP_PROTOCOL_PERIFRA_CONTROL_PIGPIO_NETWORK_SOCKETS_ACCEPT_PORT), 
      connect_port_(XOS_APP_PROTOCOL_PERIFRA_CONTROL_PIGPIO_NETWORK_SOCKETS_CONNECT_PORT) {
        off_gpioWrite_request_.assign(begin_gpioWrite_request_);
        off_gpioWrite_request_.append(gpioWrite_request_gpio_);
        off_gpioWrite_request_.append(middle_gpioWrite_request_);
        off_gpioWrite_request_.append(gpioWrite_request_level_off_);
        off_gpioWrite_request_.append(end_gpioWrite_request_);

        on_gpioWrite_request_.assign(begin_gpioWrite_request_);
        on_gpioWrite_request_.append(gpioWrite_request_gpio_);
        on_gpioWrite_request_.append(middle_gpioWrite_request_);
        on_gpioWrite_request_.append(gpioWrite_request_level_on_);
        on_gpioWrite_request_.append(end_gpioWrite_request_);
        
        gpioRead_request_.assign(begin_gpioRead_request_);
        gpioRead_request_.append(gpioRead_request_gpio_);
        gpioRead_request_.append(middle_gpioRead_request_);
        gpioRead_request_.append(end_gpioRead_request_);
    }
    virtual ~maint() {
    }
private:
    maint(const maint &copy) {
        throw exception(exception_unexpected);
    }

protected:
    typedef typename extends::in_reader_t in_reader_t;
    typedef typename extends::out_writer_t out_writer_t;
    typedef typename extends::err_writer_t err_writer_t;

    /// run
    int (derives::*run_)(int argc, char_t** argv, char_t** env);
    virtual int run(int argc, char_t** argv, char_t** env) {
        int err = 0;
        if ((run_)) {
            err = (this->*run_)(argc, argv, env);
        } else {
            err = extends::run(argc, argv, env);
        }
        return err;
    }

    /// ...port...
    virtual short& accept_port() const {
        return (short&)accept_port_;
    }
    virtual short& connect_port() const {
        return (short&)connect_port_;
    }

    /// ...gpio...request
    virtual string_t& begin_gpioWrite_request() const {
        return (string_t&)begin_gpioWrite_request_;
    }
    virtual string_t& middle_gpioWrite_request() const {
        return (string_t&)middle_gpioWrite_request_;
    }
    virtual string_t& end_gpioWrite_request() const {
        return (string_t&)end_gpioWrite_request_;
    }
    virtual string_t& gpioWrite_request_gpio() const {
        return (string_t&)gpioWrite_request_gpio_;
    }
    virtual string_t& gpioWrite_request_level_off() const {
        return (string_t&)gpioWrite_request_level_off_;
    }
    virtual string_t& gpioWrite_request_level_on() const {
        return (string_t&)gpioWrite_request_level_on_;
    }
    virtual string_t& off_gpioWrite_request() const {
        return (string_t&)off_gpioWrite_request_;
    }
    virtual string_t& on_gpioWrite_request() const {
        return (string_t&)on_gpioWrite_request_;
    }

    virtual string_t& begin_gpioRead_request() const {
        return (string_t&)begin_gpioRead_request_;
    }
    virtual string_t& middle_gpioRead_request() const {
        return (string_t&)middle_gpioRead_request_;
    }
    virtual string_t& end_gpioRead_request() const {
        return (string_t&)end_gpioRead_request_;
    }
    virtual string_t& gpioRead_request_gpio() const {
        return (string_t&)gpioRead_request_gpio_;
    }
    virtual string_t& gpioRead_request() const {
        return (string_t&)gpioRead_request_;
    }

    virtual string_t& gpioRestart_request() const {
        return (string_t&)gpioRestart_request_;
    }
    virtual string_t& gpioStop_request() const {
        return (string_t&)gpioStop_request_;
    }
    virtual string_t& gpio_request() const {
        return (string_t&)gpio_request_;
    }
    
protected:
    string_t begin_gpioWrite_request_, middle_gpioWrite_request_, end_gpioWrite_request_, 
             gpioWrite_request_gpio_, gpioWrite_request_level_off_, gpioWrite_request_level_on_, 
             off_gpioWrite_request_, on_gpioWrite_request_,
             begin_gpioRead_request_, middle_gpioRead_request_, end_gpioRead_request_, 
             gpioRead_request_gpio_, gpioRead_request_,
             gpioRestart_request_, gpioStop_request_, gpio_request_;
    short accept_port_, connect_port_;    
}; /// class maint 
typedef maint<> main;

} /// namespace base 
} /// namespace pigpio 
} /// namespace protocol 
} /// namespace app 
} /// namespace xos 

#endif /// ndef XOS_APP_PROTOCOL_PIGPIO_BASE_MAIN_HPP
