#include <iostream>
#include "./include/client_app.h"
#include "./include/client.h"
#include "./include/gp_chat.h"
#include "./include/pv_chat.h"
#include "./include/message.h"

// #include <curlpp/Easy.hpp>
// #include <curlpp/Options.hpp>
// #include <curlpp/cURLpp.hpp>

int main() {
  
  Client_App client_app{"1"};
  while(true)
  {
    std::cout << "Welcome to Messenger Server !" << std::endl;
    std::cout << "1) SignUp  2)Login  3)Exit " << std::endl;
    int entry_1;
    std::cin >> entry_1;
    if(entry_1 == 1)
    {
      while (true)
      {
        std::cout << "Enter ID : " << std::endl;
        std::string ID;
        std::cin >> ID;
        std::cout << "Enter Password : " << std::endl;
        std::string Password;
        std::cin >> Password;
        
        bool signup_result = client_app.signup(ID,Password);
        // std::cout << "You are Signed Up !" << std::endl;
        if(signup_result)
          break;
        else
          continue;
      }
    }

    else if(entry_1 == 2)
    {
        while(true)
        {

          std::cout << "Enter ID : " << std::endl;
          std::string ID;
          std::cin >> ID;
          std::cout << "Enter Password : " << std::endl;
          std::string Password;
          std::cin >> Password;
          client_app.login(ID,Password);
          if(client_app.login(ID,Password))
          {
              while(true)
              {
                  std::cout << "Logedin !" << std::endl;
                  std::cout << "Options : \n";
                  std::cout << "1)Create PV \n";
                  std::cout << "2)Create GP \n";
                  std::cout << "3)Delete Chat \n";
                  std::cout << "4)Send Message \n";
                  std::cout << "5)Delete Message \n";
                  std::cout << "6)Delete Account \n";
                  std::cout << "7)LogOut \n";
                  std::cout << "8)Change ID \n";
                  std::cout << "9)Change Password \n";
                  std::cout << "10)Add User to Group \n";
                  std::cout << "11)Remove User From Group \n";
                  int entry_3;
                  std::cin >> entry_3;
                  if(entry_3 == 1)
                  {
                    std::cout << "Who do you want to chat with ?" << std::endl;
                    std::string name;
                    std::cin >> name;
                    std::shared_ptr<Client> client = client_app.find_client(name);
                    client_app.create_pv(client);
                  }

                  else if(entry_3 == 2)
                  {
                    std::cout << "Select name for group :" << std::endl;
                    std::string name;
                    std::cin >> name;
                    client_app.create_gp(name);
                    std::cout << "Groupe " << name << " Created !" << std::endl;
                  }

                  else if(entry_3 == 3)
                  {
                    std::cout << "Enter Chat's name :" << std::endl;
                    std::string _chat_name;
                    client_app.delete_chat(_chat_name);
                  }

                  else if(entry_3 == 4)
                  {
                    std::cout << "Enter the user id you want to send message to :" << std::endl;
                    std::string user;
                    std::cin >> user;
                    std::cout << "Enter the text message you want to send :" << std::endl;
                    std::string text_message;
                    std::cin >> text_message;
                    std::cout << "Enter the file message url you want to send :" << std::endl;
                    std::string file_message;
                    std::cin >> file_message;
                    std::cout << "Enter the chat name you want to send message to :" << std::endl;
                    std::string chat_name;
                    std::cin >> chat_name;
                    std::shared_ptr<Client> client = client_app.find_client(user);
                    client_app.send_message(text_message, file_message, client,chat_name);
                  }

                  else if(entry_3 == 5)
                  {
                    std::cout << "Which message you wish to delete? Enter chat name :" << std::endl;
                    std::string chat_name;
                    std::cin >> chat_name;
                    std::cout << "Enter message content :" << std::endl;
                    std::string message_content;
                    std::cin >> message_content;
                    std::shared_ptr<Message> message = client_app.find_chat(chat_name)->find_message(message_content,client_app.get_active_user().get_id(),chat_name);
                    client_app.find_chat(chat_name)->remove_message(message);
                    std::cout << "Message Removed !" << std::endl;

                  }

                  else if(entry_3 == 6)
                  {
                      std::cout << "Enter ID : " << std::endl;
                      std::string ID;
                      std::cin >> ID;
                      std::cout << "Enter Password : " << std::endl;
                      std::string Password;
                      std::cin >> Password;
                      client_app.delete_account(ID,Password);
                      std::cout << "Your Account has been deleted !" << std::endl;
                      break;
                  }

                  else if(entry_3 == 7)
                  {
                      std::cout << "Enter ID : " << std::endl;
                      std::string ID;
                      std::cin >> ID;
                      std::cout << "Enter Password : " << std::endl;
                      std::string Password;
                      std::cin >> Password;
                      client_app.logout(ID,Password);
                      std::cout << "You are Logged Out !" << std::endl;
                      break;
                  }

                  else if(entry_3 == 8)
                  {
                      std::cout << "Enter Your Old ID : " << std::endl;
                      std::string old_ID;
                      std::cin >> old_ID;
                      std::cout << "Enter Password : " << std::endl;
                      std::string Password;
                      std::cin >> Password;
                      std::cout << "Enter Your New ID : " << std::endl;
                      std::string new_ID;
                      std::cin >> new_ID;
                      client_app.get_active_user().change_id(old_ID,Password,new_ID);
                  }

                  else if(entry_3 == 9)
                  {
                      std::cout << "Enter Your ID : " << std::endl;
                      std::string ID;
                      std::cin >> ID;
                      std::cout << "Enter Your Old Password : " << std::endl;
                      std::string old_Password;
                      std::cin >> old_Password;
                      std::cout << "Enter Your New Password : " << std::endl;
                      std::string new_Password;
                      std::cin >> new_Password;
                      client_app.get_active_user().change_id(ID,old_Password,new_Password);
                  }

                  else if(entry_3 == 10)
                  {
                    continue;
                  }

                  else if(entry_3 == 11)
                  {
                    continue;
                  }
                  else
                  {
                      std::cout << "Not Valid Input" << std::endl;
                  }

              }
              break;
          }
          else
          {
            std::cout << "Wrong Information !" << std::endl;
            std::cout << "Try Again(1) No(2) :" << std::endl;
            int entry_2;
            std::cin >> entry_2;
            if(entry_2 == 1)
              continue;
            else
              break;
          }
        }
    }

    else if(entry_1 == 3)
    {
      break;
    }

  }

  return 0;
}
