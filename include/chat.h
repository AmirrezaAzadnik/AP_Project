#ifndef CHAT_H
#define CHAT_H

#include <iostream>
#include <string>
#include <vector>
#include <fstream>
#include "client.h"

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
    bool store_message(Message& message);
    bool remove_message(Message& message);

private:
    std::string chat_name;
    std::vector<Message*> messages;
    std::ofstream messagesfile;
    Client user;
};

#endif