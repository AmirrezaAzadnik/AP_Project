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
                  int entry_3;
                  std::cin >> entry_3;
                  if(entry_3 == 1)
                  {
                    std::cout << "Who do you want to chat with ?" << std::endl;
                    std::string name;
                    std::cin >> name;
                    //end
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
                  {}

                  else if(entry_3 == 4)
                  {}

                  else if(entry_3 == 5)
                  {}

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

                  else
                  {
                      std::cout << "Not Valid Input" << std::endl;
                  }

              }
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
