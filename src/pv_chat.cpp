#include "../include/pv_chat.h"

Pv_Chat::Pv_Chat(std::string _chat_name, Client _user1, std::shared_ptr<Client> _user2)
: Chat{_chat_name, _user1}, user2{_user2}
{
    std::cout << "Private Chat Constructor" << std::endl;
}

Pv_Chat::~Pv_Chat()
{
    std::cout << "PV Chat Destructor" << std::endl;
}

Pv_Chat::Pv_Chat(const Pv_Chat& p)
: Chat{p}, user2{p.user2} 
{
    std::cout << "Copy Constructor of Pv Chat" << std::endl;
}
