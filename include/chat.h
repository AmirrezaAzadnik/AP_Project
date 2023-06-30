#ifndef CHAT_H
#define CHAT_H

#include <iostream>
#include <string>
#include <vector>
#include <fstream>
#include "client.h"
#include <memory>

class Message;
class Client;

class Chat{
public:
    Chat(std::string chat_name, Client user);
    ~Chat();
    Chat(const Chat& c);
    Chat(Chat&& c);
    std::string get_messagesfile_name();
    std::string get_chat_name();
    bool store_message(std::shared_ptr<Message> message);
    bool remove_message(std::shared_ptr<Message> message);
    std::shared_ptr<Message> find_message(std::string message_content, std::string user_id, std::string _chat_name);


private:
    std::string chat_name;
    std::vector<std::shared_ptr<Message>> messages;
    std::ofstream messagesfile;
    Client user;
};

#endif