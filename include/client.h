#ifndef CLIENT_H_H
#define CLIENT_H_H

#include <iostream>
#include <string>
#include <vector>
// #include <curlpp/Easy.hpp>
// #include <curlpp/Options.hpp>
// #include <curlpp/cURLpp.hpp>
// #include "json.hpp"

class Client{
public:
    Client(std::string id = "", std::string password = "");
    ~Client() = default;    //we do not have dynamic variables in this class
    Client(const Client& c);    // this won't be neccessary because we do not have dynamic variables in this class!
    Client(Client&& c);      //do we need move constructor?
    std::string get_id();
    std::string get_password();
    bool change_id(std::string old_id, std::string _password, std::string new_id);
    bool change_password(std::string _id, std::string old_password, std::string new_password);
    Client& operator=(const Client& c);

private:
    std::string id;
    std::string password;
};

#endif