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
///   Date: 3/25/2023
//////////////////////////////////////////////////////////////////////////
#ifndef XOS_APP_PIGPIO_CLIENT_MAIN_HPP
#define XOS_APP_PIGPIO_CLIENT_MAIN_HPP

#include "xos/app/pigpio/client/main_opt.hpp"

namespace xos {
namespace app {
namespace pigpio {
namespace client {

/// class maint
template 
<class TMain = xos::app::protocol::network::sockets::client::maint<>,
 class TExtends = xos::app::pigpio::client::main_optt<TMain>,  class TImplements = typename TExtends::implements>

class maint: virtual public TImplements, public TExtends {
public:
    typedef TImplements implements;
    typedef TExtends extends;
    typedef maint derives;

    typedef typename extends::main_t main_t;
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
      power_on_active_low_request_("{\"pigpio\":{\"gpioWrite\":[{\"gpio\":\"17\"},{\"level\":\"0\"}]}}"),
      power_off_active_low_request_("{\"pigpio\":{\"gpioWrite\":[{\"gpio\":\"17\"},{\"level\":\"1\"}]}}"),
      power_on_active_high_request_("{\"pigpio\":{\"gpioWrite\":[{\"gpio\":\"17\"},{\"level\":\"1\"}]}}"),
      power_off_active_high_request_("{\"pigpio\":{\"gpioWrite\":[{\"gpio\":\"17\"},{\"level\":\"0\"}]}}"),
      power_on_state_request_("{\"pigpio\":{\"gpioRead\":[{\"gpio\":\"22\"}]}}") {
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

    /// on...power_on_option...
    virtual int on_set_power_on_option
    (const char_t* optarg, int optind, int argc, char_t**argv, char_t**env) {
        int err = 0;
        main_t& main = this->main();
        string_t& request = this->power_on_request();
        main.set_request(request);
        return err;
    }
    virtual int on_power_on_option_set
    (const char_t* optarg, int optind, int argc, char_t**argv, char_t**env) {
        int err = 0;
        if (!(err = this->on_connect_option_get(optarg, optind, argc, argv, env))) {
        } else {
        }
        return err;
    }
    /// on...power_off_option...
    virtual int on_set_power_off_option
    (const char_t* optarg, int optind, int argc, char_t**argv, char_t**env) {
        int err = 0;
        main_t& main = this->main();
        string_t& request = this->power_off_request();
        main.set_request(request);
        return err;
    }
    virtual int on_power_off_option_set
    (const char_t* optarg, int optind, int argc, char_t**argv, char_t**env) {
        int err = 0;
        if (!(err = this->on_connect_option_get(optarg, optind, argc, argv, env))) {
        } else {
        }
        return err;
    }
    /// on...power_state_option...
    virtual int on_set_power_state_option
    (const char_t* optarg, int optind, int argc, char_t**argv, char_t**env) {
        int err = 0;
        main_t& main = this->main();
        string_t& request = this->power_on_state_request();
        main.set_request(request);
        return err;
    }
    virtual int on_power_state_option_set
    (const char_t* optarg, int optind, int argc, char_t**argv, char_t**env) {
        int err = 0;
        if (!(err = this->on_connect_option_get(optarg, optind, argc, argv, env))) {
        } else {
        }
        return err;
    }

    /// on...active_high_option...
    virtual int on_set_active_high_option
    (const char_t* optarg, int optind, int argc, char_t**argv, char_t**env) {
        int err = 0;
        if (!(err = set_active_high_power_on_request(argc, argv, env))) {
            if (!(err = active_high_power_on_request_set(argc, argv, env))) {
                if (!(err = set_active_high_power_off_request(argc, argv, env))) {
                    if (!(err = active_high_power_off_request_set(argc, argv, env))) {
                    } else {
                    }
                } else {
                }
            } else {
            }
        } else {
        }
        return err;
    }
    /// on...active_low_option...
    virtual int on_set_active_low_option
    (const char_t* optarg, int optind, int argc, char_t**argv, char_t**env) {
        int err = 0;
        if (!(err = set_active_low_power_on_request(argc, argv, env))) {
            if (!(err = active_low_power_on_request_set(argc, argv, env))) {
                if (!(err = set_active_low_power_off_request(argc, argv, env))) {
                    if (!(err = active_low_power_off_request_set(argc, argv, env))) {
                    } else {
                    }
                } else {
                }
            } else {
            }
        } else {
        }
        return err;
    }

    /// ...power_on_request
    /// ...
    string_t& (derives::*power_on_request_)();
    virtual string_t& power_on_request() {
        string_t& request = power_on_active_high_request();
        if (power_on_request_) {
            return (this->*power_on_request_)();
        }
        return request;
    }
    /// ...active_low_power_on_request
    virtual string_t& active_low_power_on_request() {
        string_t& request = power_on_active_low_request();
        return request;
    }
    virtual int set_active_low_power_on_request(int argc, char_t** argv, char_t** env) {
        int err = 0;
        power_on_request_ = &derives::active_low_power_on_request;
        return err;
    }
    virtual int active_low_power_on_request_set(int argc, char_t** argv, char_t** env) {
        int err = 0;
        return err;
    }
    virtual int unset_active_low_power_on_request(int argc, char_t** argv, char_t** env) {
        int err = 0;
        power_on_request_ = 0;
        return err;
    }
    virtual int active_low_power_on_request_unset(int argc, char_t** argv, char_t** env) {
        int err = 0;
        return err;
    }
    /// ...active_high_power_on_request
    virtual string_t& active_high_power_on_request() {
        string_t& request = power_on_active_high_request();
        return request;
    }
    virtual int set_active_high_power_on_request(int argc, char_t** argv, char_t** env) {
        int err = 0;
        power_on_request_ = &derives::active_high_power_on_request;
        return err;
    }
    virtual int active_high_power_on_request_set(int argc, char_t** argv, char_t** env) {
        int err = 0;
        return err;
    }
    virtual int unset_active_high_power_on_request(int argc, char_t** argv, char_t** env) {
        int err = 0;
        power_on_request_ = 0;
        return err;
    }
    virtual int active_high_power_on_request_unset(int argc, char_t** argv, char_t** env) {
        int err = 0;
        return err;
    }
    /// ...
    /// ...power_on_request

    /// ...power_off_request
    /// ...
    string_t& (derives::*power_off_request_)();
    virtual string_t& power_off_request() {
        string_t& request = power_off_active_high_request();
        if (power_off_request_) {
            return (this->*power_off_request_)();
        }
        return request;
    }
    /// ...active_low_power_off_request
    virtual string_t& active_low_power_off_request() {
        string_t& request = power_off_active_low_request();
        return request;
    }
    virtual int set_active_low_power_off_request(int argc, char_t** argv, char_t** env) {
        int err = 0;
        power_off_request_ = &derives::active_low_power_off_request;
        return err;
    }
    virtual int active_low_power_off_request_set(int argc, char_t** argv, char_t** env) {
        int err = 0;
        return err;
    }
    virtual int unset_active_low_power_off_request(int argc, char_t** argv, char_t** env) {
        int err = 0;
        power_off_request_ = 0;
        return err;
    }
    virtual int active_low_power_off_request_unset(int argc, char_t** argv, char_t** env) {
        int err = 0;
        return err;
    }
    /// ...active_high_power_off_request
    virtual string_t& active_high_power_off_request() {
        string_t& request = power_off_active_high_request();
        return request;
    }
    virtual int set_active_high_power_off_request(int argc, char_t** argv, char_t** env) {
        int err = 0;
        power_off_request_ = &derives::active_high_power_off_request;
        return err;
    }
    virtual int active_high_power_off_request_set(int argc, char_t** argv, char_t** env) {
        int err = 0;
        return err;
    }
    virtual int unset_active_high_power_off_request(int argc, char_t** argv, char_t** env) {
        int err = 0;
        power_off_request_ = 0;
        return err;
    }
    virtual int active_high_power_off_request_unset(int argc, char_t** argv, char_t** env) {
        int err = 0;
        return err;
    }
    /// ...
    /// ...power_off_request

    virtual string_t& power_on_active_low_request() const {
        return (string_t&)power_on_active_low_request_;
    }
    virtual string_t& power_off_active_low_request() const {
        return (string_t&)power_off_active_low_request_;
    }

    virtual string_t& power_on_active_high_request() const {
        return (string_t&)power_on_active_high_request_;
    }
    virtual string_t& power_off_active_high_request() const {
        return (string_t&)power_off_active_high_request_;
    }

    virtual string_t& power_on_state_request() const {
        return (string_t&)power_on_state_request_;
    }

protected:
    string_t power_on_active_low_request_, power_off_active_low_request_, 
             power_on_active_high_request_, power_off_active_high_request_, 
             power_on_state_request_;
}; /// class maint 
typedef maint<> main;

} /// namespace client 
} /// namespace pigpio 
} /// namespace app 
} /// namespace xos 

#endif /// ndef XOS_APP_PIGPIO_CLIENT_MAIN_HPP
