#include "../include/client.h"

//---------------Constructors---------------------------

Client::Client(std::string _id, std::string _password)
: id{_id}, password{_password}
{
    std::cout << "Client Constructor !" << std::endl;
}

Client::Client(const Client& c) 
: id{c.id}, password{c.password}
{
    std::cout << "Copy Constructor Of Client" << std::endl;
}

Client::Client(Client&& c)
: id{c.id}, password{c.password}
{
    std::cout << " Move Constructor of Client" << std::endl;
}

// Client::~Client()
// {
//     std::cout << "Client Destructor" << std::endl;
// }

//---------------end of constructors-----------------------

//--------------Methods----------------------------------

bool Client::change_id(std::string old_id, std::string _password, std::string new_id)
{
    if(old_id == id && _password == password)
    {
        id = new_id;
        return true;
    }
    else
    {
        std::cout << "Your id or password is incorrect !" << std::endl;
        return false;   //to correct input information and try again
    }    
}

bool Client::change_password(std::string _id, std::string old_password, std::string new_password)
{
    if(id == _id && password == old_password)
    {
        password = new_password;
        return true;
    }
    else
    {
        std::cout << "Your id or password is incorrect !" << std::endl;   
        return false;   //to correct input information and try again
    }
}

std::string Client::get_id()
{
    return id;
}

std::string Client::get_password()
{
    return password;
}

//--------------end of methods----------------------------

//--------------operators---------------------------------

Client& Client::operator=(const Client& c)
{
    std::cout << "Client Operator = " << std::endl; 
    if(this == &c)
        return *this;
    id = c.id;
    password = c.password;
    return *this;
}


//--------------end of operators--------------------------