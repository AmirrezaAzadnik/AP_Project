cmake_minimum_required(VERSION 3.13)
set(CMAKE_CXX_STANDARD 20)
project(AP_Project)

include_directories(include/)

# Find the curl and curlpp libraries
# find_package(CURL REQUIRED)
# find_package(curlpp REQUIRED)

# set(CMAKE_PREFIX_PATH "/path/to/curl;/path/to/curlpp")

# Include the curl and curlpp headers
# include_directories(${CURL_INCLUDE_DIR})
# include_directories(${CURLPP_INCLUDE_DIRS})

add_executable(messenger
        main.cpp
        src/chat.cpp
        src/client_app.cpp
        src/message.cpp
        src/client.cpp
        src/gp_chat.cpp
        src/pv_chat.cpp
)

target_link_libraries(messenger curl ${CMAKE_SOURCE_DIR}/lib/libcurlpp.a)
