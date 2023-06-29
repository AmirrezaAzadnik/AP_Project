cmake_minimum_required(VERSION 3.13)
project(AP_Project)

set(CMAKE_CXX_STANDARD 20)

include_directories(include/)

add_executable(main
        main.cpp
        src/chat.cpp
        src/client_app.cpp
        src/message.cpp
        src/client.cpp
        src/server.cpp
        src/gp_chat.cpp
        src/pv_chat.cpp
)
