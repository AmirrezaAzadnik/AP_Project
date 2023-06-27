#ifndef SERVER_H
#define SERVER_H

#include <iostream>
#include <stack>
#include "client_app.h"

class Server{
public:
    Server();
    ~Server();
    Server(const Server& s) = delete;
    Server(Server&& s) = delete;
    bool create_client_app(Client_App& CA);
    bool remove_client_app(Client_App& CA);
    bool save_ClientApps_to_DataBase();
    bool save_messages_to_DataBase(Client_App& CA);
private:
    std::stack<Client_App*> clients;
};

#endif