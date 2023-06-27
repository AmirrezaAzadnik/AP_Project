#ifndef MESSAGE_H
#define MESSAGE_H

#include <iostream>
#include <string>
#include <chrono>
#include <ctime>
#include <iomanip>
#include "client.h"

class Client;

class Message{
public:
    Message(std::string text_message, std::string file_message_link , Client sender, Client reciever, std::string chat_name);
    ~Message();
    Message(const Message& m);
    Message(Message&& m);
    std::string get_time_in_string();
    int* get_time();
    std::string get_message();
    std::string get_chat_name();
    Client get_sender();
    Client get_reciever();
    void show();
    Message& operator=(const Message& m);
    Message& operator=(Message&& m);
    

private:
    std::string text_message;
    std::string file_message_link;   // image or file
    Client sender;
    Client reciever;
    std::string chat_name;  //that message belongs to it
    int* time;          //time of message
};

#endif