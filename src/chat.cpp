#include "../include/chat.h"
#include "../include/message.h"
#include "../include/client.h" //chat.cpp


Chat::Chat(std::string _chat_name, Client _user)
:chat_name{_chat_name}, messages{},user{_user}, messagesfile{{_chat_name+".txt",std::ios::app}}
{
    std::cout << "Chat Constructor !" << std::endl;
}

Chat::~Chat()
{
    std::cout << "Chat Destructor" << std::endl;
    messages.clear();
    messagesfile.close();
}

Chat::Chat(const Chat& c)
:chat_name{c.chat_name}, user{c.user}
{
    std::cout << "Chat Copy Constructor" << std::endl;
    for(size_t i{}; i < c.messages.size(); i++)
        messages[i] = c.messages[i];
    // std::ifstream messagesfile(c.messagesfile);
    // messagesfile << c.messagesfile.rdbuf();

    std::string source_path = c.chat_name + ".txt";
    std::string dest_path = chat_name + "_1.txt";

    std::ifstream source(source_path, std::ios::binary);
    std::ofstream dest(dest_path, std::ios::binary);


    
    // std::string line;
    // while (std::getline(c.messagesfile, line)) {
    //     messagesfile << line << std::endl;
    // }
}

Chat::Chat(Chat&& c)
:chat_name{std::move(c.chat_name)}, messages{std::move(c.messages)},messagesfile{std::move(c.messagesfile)}, user{std::move(c.user)}
{
    std::cout << "Move Constructor of Chat" << std::endl;
}

//---------------------Methods-----------------------------------------

bool Chat::store_message(std::shared_ptr<Message> message)
{
    messages.push_back(message);
    messagesfile << message->get_sender().get_id() << " " << message->get_reciever()->get_id() << " " << message->get_message() << " " << message->get_time_in_string() << std::endl;
    return true;
}

bool Chat::remove_message(std::shared_ptr<Message> message)
{
    for(size_t i{}; i < messages.size(); i++)
    {
        if(messages[i]->get_message() ==  message->get_message())
           {
                messages.erase(messages.begin()+i);
                return true;
           } 
    }
    std::cout << "Message not found !" <<std::endl;
    return false;
    
}

std::string Chat::get_chat_name()
{
    return chat_name;
}

std::string Chat::get_messagesfile_name()
{
    return chat_name + ".txt";
}

std::shared_ptr<Message> Chat::find_message(std::string message_content, std::string user_id, std::string _chat_name)
{
    for(size_t i{}; i < messages.size(); i++)
    {
        if(messages[i]->get_message() == message_content && messages[i]->get_sender().get_id() == user_id && messages[i]->get_chat_name() == _chat_name)
            return messages[i];
    }
    std::cout << "Message not found !" << std::endl;
    return nullptr;
}

//------------------------end of Methods--------------------------------------