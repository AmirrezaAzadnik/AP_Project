#ifndef CLIENT_APP_H
#define CLIENT_APP_H

#include <iostream>
#include <string>
#include <vector>
#include <stack>
#include "gp_chat.h"
#include "pv_chat.h"

class Client;

class Client_App{
public:
    Client_App(std::string client_app_id);
    ~Client_App();
    Client_App(const Client_App& c);
    Client_App(Client_App&& c);
    
    bool signup(std::string id, std::string password);
    bool login(std::string id, std::string password);
    bool logout(std::string id, std::string password);
    bool delete_account(std::string id, std::string password);
    bool create_gp(std::string chat_name);
    bool create_pv(Client user2);
    bool delete_chat(std::string chat_name);
    bool send_message(std::string _text_message, std::string _file_message_link, Client user, std::string _chat_name);
    bool delete_message(Message& message);

private:
    std::string client_app_ip;
    std::stack<Client*> users;
    std::stack<Chat*> chats;           //check
    std::stack<Client*> logedin;
    Client active_user;
};  

#endif