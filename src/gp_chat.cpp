#include "../include/gp_chat.h"

Gp_Chat::Gp_Chat(std::string _chat_name, Client _user)
: Chat{_chat_name, _user}, users{}
{
    std::cout << "Group Chat Constructor" << std::endl;
}

Gp_Chat::~Gp_Chat()
{
    std::cout << "Group Chat Destructor" << std::endl;
    users.clear();
}

Gp_Chat::Gp_Chat(const Gp_Chat& g)
: Chat{g}
{
    std::cout << "Group Chat Copy Constructor" << std::endl;
    for(size_t i{}; i < g.users.size(); i++)
        users[i] = g.users[i];
}

Gp_Chat::Gp_Chat(Gp_Chat&& g)
: Chat{std::move(g)}, users{g.users} 
{
    std::cout << "Group Chat Move Constructor" << std::endl;
}

void Gp_Chat::add_user(std::shared_ptr<Client> user)
{
    users.push_back(user);
}

void Gp_Chat::remove_user(std::shared_ptr<Client> user)
{
    for(size_t i{}; i < users.size(); i++)
        if(user->get_id() == users[i]->get_id())
            users.erase(users.begin() + i);
}