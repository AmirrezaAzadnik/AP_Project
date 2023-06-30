#ifndef CLIENT_APP_H
#define CLIENT_APP_H

#include <iostream>
#include <string>
#include <vector>
#include <stack>
#include <memory>
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
    bool create_pv(std::shared_ptr<Client> user2);
    bool add_user_to_group(std::string chat_name, std::shared_ptr<Client> user);
    bool remove_user_from_group(std::string chat_name, std::shared_ptr<Client> user);
    std::shared_ptr<Client> find_client(std::string user_id);
    std::shared_ptr<Chat> find_chat(std::string chat_name);
    bool delete_chat(std::string chat_name);
    bool send_message(std::string _text_message, std::string _file_message_link, std::shared_ptr<Client> user, std::string _chat_name);
    bool delete_message(std::shared_ptr<Message> message);
    Client& get_active_user();
private:
    std::string client_app_ip;
    std::stack<std::shared_ptr<Client>> users;
    std::stack<std::shared_ptr<Chat>> chats;           //check
    std::stack<std::shared_ptr<Client>> logedin;
    Client active_user;
};  

#endif