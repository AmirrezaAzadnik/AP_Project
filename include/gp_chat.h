#ifndef GP_CHAT_H
#define GP_CHAT_H

#include <iostream>
#include <string>
#include <vector>
#include "client.h"
#include "chat.h"

class Gp_Chat : public Chat{
public:
    Gp_Chat(std::string chat_name, Client User);
    ~Gp_Chat();
    Gp_Chat(const Gp_Chat& g);
    Gp_Chat(Gp_Chat&& g);
    void add_user(std::shared_ptr<Client> user);
    void remove_user(std::shared_ptr<Client> user);

private:
    std::vector<std::shared_ptr<Client>> users;
};

#endif