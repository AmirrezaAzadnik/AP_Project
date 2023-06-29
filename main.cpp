#include <iostream>
// #include <mongocxx/client.hpp>
// #include <mongocxx/instance.hpp>
// #include <mongocxx/uri.hpp>

void mongodb_handler();

int main() {
  while (true)
  {
    
  }
  return 0;
}

// void mongodb_handler()
// {
//     // Initialize the MongoDB driver
//     mongocxx::instance instance{};

//     // Replace the placeholder values with your actual connection string details
//     std::string username = "azadnikamirreza";
//     std::string password = "Amir2647%40%5e%24%26";
//     std::string cluster_hostname = "my-cluster.mongodb.net";
//     std::string database_name = "my-database";
//     std::string connection_string = "mongodb+srv://" + username + ":" + password + "@" + cluster_hostname + "/" + database_name + "?retryWrites=true&w=majority";

//     // Create the MongoDB client and connect to the database
//     mongocxx::uri uri(connection_string);
//     mongocxx::client client(uri);
//     mongocxx::database db = client[database_name];

//     // Perform some CRUD operations on your MongoDB collections
//     // ...

// }