#include "../include/client.h"
#include <sstream>

// using json = nlohmann::json;

//---------------Constructors---------------------------

Client::Client(std::string _id, std::string _password)
: id{_id}, password{_password}
{
    // Creating JSON Object
    // json client;
    // client ["ID"] = id;
    // client ["Password"] = password;

    // std::string client_str {client.dump()};

    // //sending client to database mongodb atlas through http request by json object
    std::cout << "Client Constructor !" << std::endl;
    // std::string url {"https://ap-south-1.aws.data.mongodb-api.com/app/data-ndvsb/endpoint/data/v1"};
    // curlpp::Easy request;
    // request.setOpt(new curlpp::options::Url(url));
    // std::ostringstream result;
    // request.setOpt(new curlpp::options::WriteStream(&result));
    // std::list<std::string> headers;
    // headers.push_back("Content-Type: application/json");
    // headers.push_back("apiKey: 649e07851bedd26bdf6d283d");
    // request.setOpt(new curlpp::options::HttpHeader(headers));
    // request.setOpt(new curlpp::options::PostFields(client_str));
    // request.setOpt(new curlpp::options::PostFieldSize(client_str.size()));

    // request.perform();
    // std::cout << result.str() << std::endl;
    // std::string response{result.str{}};
    // json server_data {json::parse(response)};
    // for(auto item : server_data["results"])
    //     std::cout << 
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
        std::cout << "Your id changed !" << std::endl;
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
        std::cout << "Your Password changed !" << std::endl;
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