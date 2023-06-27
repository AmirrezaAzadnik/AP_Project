#include "../include/server.h"

//---------------------Constructors--------------------------------
Server::Server()
: clients{}
{
    std::cout << "Seerver Constructor !" << std::endl;
}

Server::~Server()
{
    std::cout << "Server Destructor" << std::endl;
    while(!clients.empty())
        clients.pop();
}

//------------------------endo of Constructors---------------------------

//------------------------Methods----------------------------------------

bool Server::create_client_app(Client_App& CA)
{
    //check if client app exists---------------
    std::stack<Client_App*> s{};
    while(!clients.empty())
    {
        if(clients.top() == &CA)
        {
            while (!s.empty())  //returning back elements into clients
            {
                clients.push(s.top());
                s.pop();
            }
            std::cout << "Client App exists !" << std::endl;
            return true;
        }
        else
        {
            s.push(clients.top());
            clients.pop();
        }
    }
    while(!s.empty())
    {
        clients.push(s.top());
        s.pop();
    }

    //end of check-----------------------------
    clients.push(&CA);
    return true;
}

bool Server::remove_client_app(Client_App& CA)
{
    std::stack<Client_App*> s;
    while(!clients.empty())
    {
        if(clients.top() == &CA)
        {
            clients.pop();
            while (!s.empty())
            {
                clients.push(s.top());
                s.pop();
            }
            return true;
        }
        else
        {
            s.push(clients.top());
            clients.pop();
        }
    }
    std::cout << "Client App does not exist !" << std::endl;
    while(!s.empty())
    {
        clients.push(s.top());
        s.pop();
    }
    return false; 
}

bool Server::save_messages_to_DataBase(Client_App& CA)
{
    return true;
}

//--------------------------------end of Methods---------------------------------