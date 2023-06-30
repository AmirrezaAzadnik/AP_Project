#include "../include/client_app.h"
#include "../include/message.h"
#include "../include/client.h"

//-------------------Constructors-------------------------

Client_App::Client_App(std::string _client_app_ip)
:client_app_ip{_client_app_ip}, users{}, chats{}, logedin{}, active_user{}
{
    std::cout << "Client App Constructor" << std::endl;
    // users.push(&default_user);
}

Client_App::~Client_App()
{
    std::cout << "Client App Destructor" << std::endl;
    for(size_t i{}; i < users.size(); i++)
        {
            users.pop();
        }
    for(size_t i{}; i < chats.size(); i++)
        {
            chats.pop();
        }
    for(size_t i{}; i < logedin.size(); i++)
        {
            logedin.pop();
        }
}

Client_App::Client_App(const Client_App& c)
: client_app_ip{c.client_app_ip}, active_user{c.active_user}
{
    std::cout << "Client App Copy Constructor" << std::endl;
    std::stack s1{c.users};
    for(size_t i{}; i < c.users.size(); i++)
        {
            users.push(s1.top());
            s1.pop();
        }
    std::stack s2{c.chats};
    for(size_t i{}; i < c.users.size(); i++)
        {
            chats.push(s2.top());
            s2.pop();
        }
    std::stack s3{c.logedin};
    for(size_t i{}; i < c.logedin.size(); i++)
        {
            logedin.push(s3.top());
            s3.pop();
        }
}

Client_App::Client_App(Client_App&& c)
: client_app_ip{c.client_app_ip}, users{std::move(c.users)}, chats{std::move(c.chats)}, logedin{std::move(c.logedin)}, active_user{c.active_user}
{
    std::cout << "Client App Move Constructor" << std::endl;
}

//----------------------end of Constructors-------------------

//----------------------methods-------------------------------

bool Client_App::signup(std::string id, std::string password)
{
    //checking if it's already signedup-----------------------------------
    std::stack<std::shared_ptr<Client>> temp{};
    while(!users.empty())
    {
        if(users.top()->get_id() == id)
            {
                std::cout << "User is already signedup !" << std::endl;
                while (!temp.empty())   //returning back elements in temp to users
                {
                    users.push(temp.top());
                    temp.pop();
                }
                return true;
            }
        else
        {
            temp.push(users.top());
            users.pop();
        }
    }
    std::cout <<"YEP" << std::endl;
    while (!temp.empty())   //returning back elements in temp to users
        {
            users.push(temp.top());
            temp.pop();
        }
    //------------end of check already signedup---------------------------------
    
    std::shared_ptr<Client> newClient = std::make_shared<Client>(id, password);
    users.push(newClient);
    std::cout << "You are signed up !" << std::endl;
    return true;
}

bool Client_App::login(std::string id, std::string password)
{
    //checking if it's already logedin-----------------------------------
    std::stack<std::shared_ptr<Client>> temp{};
    while(!logedin.empty())
    {
        if(logedin.top()->get_id() == id && logedin.top()->get_password() == password )
            {
                std::cout << "User is already logedin !" << std::endl;
                while (!temp.empty())   //returning back elements in temp to logedin
                {
                    logedin.push(temp.top());
                    temp.pop();
                }
                return true;
            }
        else
        {
            temp.push(logedin.top());
            logedin.pop();
        }
    }
    while (!temp.empty())   //returning back elements in temp to logedin
        {
            logedin.push(temp.top());
            temp.pop();
        }
    //------------end of check already logedin---------------------------------
    std::stack<std::shared_ptr<Client>> s{users};    //it's stack of pointers !
    for(size_t i{}; i < users.size(); i++)
    {
        if(s.top()->get_id() == id && s.top()->get_password() == password)
            {
                logedin.push(s.top());
                active_user = *s.top();
                return true;
            }
        else
            {
               s.pop();
            }
    }
    std::cout << "Incorrect informatiion !" << std::endl;
    while(!s.empty())   //empty copy stack
        s.pop();
    return false;
}

bool Client_App::logout(std::string id, std::string password)
{
    std::stack<std::shared_ptr<Client>> temp{};    //it's stack of pointers !
    for(size_t i{}; i < logedin.size(); i++)
    {
        if(logedin.top()->get_id() == id && logedin.top()->get_password() == password)
            {
                logedin.pop();
                while(!temp.empty())    //returning back elements in temp to logedin
                    {
                        logedin.push(temp.top());
                        temp.pop();
                    }
                Client emp{};
                active_user = emp; 
                return true;
            }
        else
            {
               temp.push(logedin.top());
               logedin.pop();
            }
    }
    std::cout << "Incorrect informatiion !" << std::endl;
    while(!temp.empty())    //returning back elements in temp to logedin
        {
            logedin.push(temp.top());
            temp.pop();
        }

    return false;
}  

bool Client_App::delete_account(std::string id, std::string password)
{
    //checking if user exist-----------------------------------
    std::stack<std::shared_ptr<Client>> temp{};
    while(!users.empty())
    {
        if(users.top()->get_id() == id)
        {
            users.pop();
            while(!temp.empty())    //returning back elements in temp to users
            {
                users.push(temp.top());
                temp.pop();
            }
            return true;
        }
        else
        {
            temp.push(users.top());
            users.pop();
        }
    }
    while (!temp.empty())       //returning back elements in temp to users
        {
            users.push(temp.top()); 
            temp.pop();
        }
    std::cout << "user does not exist !" << std::endl;
    return false;
}

bool Client_App::create_gp(std::string chat_name)
{
    std::shared_ptr<Gp_Chat> new_gp = std::make_shared<Gp_Chat>(chat_name, active_user);
    // Gp_Chat new_gp{chat_name,active_user};
    chats.push(new_gp);
    return true;
}

bool Client_App::create_pv(std::shared_ptr<Client> user2)
{
    std::shared_ptr<Pv_Chat> new_pv = std::make_shared<Pv_Chat>(user2->get_id(), active_user,user2);
    // Pv_Chat new_pv{user2.get_id(),active_user,user2};
    chats.push(new_pv);
    return true;
}

bool Client_App::delete_chat(std::string _chat_name)
{
    std::stack<std::shared_ptr<Chat>> temp{};
    for(size_t i{}; i < chats.size(); i++)
    {
        if(chats.top()->get_chat_name() == _chat_name)
        {
            chats.pop();
            while(!temp.empty())
            {
                chats.push(temp.top());
                temp.pop();
            }
            std::cout << "Chat deleted !" << std::endl;
            return true;
        }
        else
        {
            temp.push(chats.top());
            chats.pop();
        }
    }
    std::cout << "Chat does not exist !" << std::endl;
    while(!temp.empty())
    {
        chats.push(temp.top());
        temp.pop();
    }
    return false;
}

bool Client_App::send_message(std::string _text_message, std::string _file_message_link, std::shared_ptr<Client> user, std::string _chat_name)
{
    // Message newMessage{_text_message, _file_message_link, active_user, user, _chat_name};
    std::shared_ptr<Message> newMessage = std::make_shared<Message>(_text_message, _file_message_link, active_user, user, _chat_name);
    
    std::stack<std::shared_ptr<Chat>> temp{};
    for(size_t i{}; i < chats.size(); i++)
    {
        if(chats.top()->get_chat_name() == _chat_name)
        {
            chats.top()->store_message(newMessage);
            while(!temp.empty())
            {
                chats.push(temp.top());
                temp.pop();
            }
            std::cout << "Message Stored in chat !" << std::endl;
            return true;
        }
        else
        {
            temp.push(chats.top());
            chats.pop();
        }
    }
    std::cout << "Chat does not exist !" << std::endl;
    while(!temp.empty())
    {
        chats.push(temp.top());
        temp.pop();
    }
    return false;

}

bool Client_App::delete_message(std::shared_ptr<Message> message)
{
    std::stack<std::shared_ptr<Chat>> temp{};
    for(size_t i{}; i < chats.size(); i++)
    {
        if(chats.top()->get_chat_name() == message->get_chat_name())
        {
            chats.top()->remove_message(message);  
            while(!temp.empty())
            {
                chats.push(temp.top());
                temp.pop();
            }
            std::cout << "Message Deleted in chat !" << std::endl;
            return true;
        }
        else
        {
            temp.push(chats.top());
            chats.pop();
        }
    }
    std::cout << "Chat does not exist !" << std::endl;
    while(!temp.empty())
    {
        chats.push(temp.top());
        temp.pop();
    }
    return false;
}

std::shared_ptr<Client> Client_App::find_client(std::string user_id)
{
    std::stack<std::shared_ptr<Client>> temp{};
    while(!users.empty())
    {
        if(users.top()->get_id() == user_id)
        {
            while(!temp.empty())    //returning back elements in temp to users
            {
                users.push(temp.top());
                temp.pop();
            }
            return users.top();
        }
        else
        {
            temp.push(users.top());
            users.pop();
        }
    }
    while (!temp.empty())       //returning back elements in temp to users
        {
            users.push(temp.top()); 
            temp.pop();
        }
    std::cout << "User does not exist !" << std::endl;
    return nullptr;
}

std::shared_ptr<Chat> Client_App::find_chat(std::string _chat_name)
{
    std::stack<std::shared_ptr<Chat>> temp{};
    while(!chats.empty())
    {
        if(chats.top()->get_chat_name() == _chat_name)
        {
            while(!temp.empty())    //returning back elements in temp to chats
            {
                chats.push(temp.top());
                temp.pop();
            }
            return chats.top();
        }
        else
        {
            temp.push(chats.top());
            chats.pop();
        }
    }
    while (!temp.empty())       //returning back elements in temp to chats
        {
            chats.push(temp.top()); 
            temp.pop();
        }
    std::cout << "User does not exist !" << std::endl;
    return nullptr;
}

bool Client_App::add_user_to_group(std::string _chat_name, std::shared_ptr<Client> user)
{
    std::shared_ptr<Chat> selected_chat {find_chat(_chat_name)};
    // std::shared_ptr<Client> selected_user {find_client(user)};
    // selected_chat->add_user(user);
    std::cout << "User added to group" << std::endl;
    return true;
}

bool Client_App::remove_user_from_group(std::string _chat_name, std::shared_ptr<Client> user)
{
    std::shared_ptr<Chat> selected_chat {find_chat(_chat_name)};
    // selected_chat->remove_user(user);
    // std::shared_ptr<Client> selected_user {find_client(user)};
    std::cout << "User removed from group" << std::endl;
    return true;
}

Client& Client_App::get_active_user()
{
    return active_user;
}

//------------------end of methods----------------------------