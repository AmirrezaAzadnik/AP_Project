#ifndef PV_CHAT_H
#define PV_CHAT_H

#include <iostream>
#include <string>
// #include <vector>
#include "client.h"
#include "chat.h"

class Pv_Chat : public Chat{
public:
    Pv_Chat(std::string chat_name, Client user1, std::shared_ptr<Client> user2);
    virtual ~Pv_Chat();
    Pv_Chat(const Pv_Chat& p);
    Pv_Chat(Pv_Chat&& p);

private:
    std::shared_ptr<Client> user2;
};

#endif