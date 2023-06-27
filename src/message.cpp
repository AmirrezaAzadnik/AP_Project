#include "../include/message.h"
#include "../include/client.h"


//--------------------Constructors----------------------------------

Message::Message(std::string _text_message, std::string _file_message_link, Client _sender, Client _reciever, std::string _chat_name)
: text_message{_text_message} , file_message_link{_file_message_link}, sender{_sender}, reciever{_reciever}, chat_name{_chat_name}, time{}
{
    std::cout << "Message Constructor" << std::endl;
    
    // time of message -----------------------------------
    time = new int[6];
        // Get the current time point
    std::chrono::system_clock::time_point now = std::chrono::system_clock::now();

    // Convert the time point to a time_t object
    std::time_t now_t = std::chrono::system_clock::to_time_t(now);

    // Convert the time_t object to a tm struct
    std::tm* now_tm = std::localtime(&now_t);

    // Extract the year, month, and day from the tm struct
    int year = now_tm->tm_year + 1900; // years since 1900
    int month = now_tm->tm_mon + 1; // months since January
    int day = now_tm->tm_mday; // day of the month

    // Extract the hour, minute, and second from the time point
    std::chrono::seconds seconds_since_epoch =
        std::chrono::duration_cast<std::chrono::seconds>(now.time_since_epoch());
    int hour = (seconds_since_epoch.count() % 86400) / 3600 + 3; // hours since midnight
    int minute = (seconds_since_epoch.count() % 3600) / 60 + 30; // minutes since the hour
    // Tehran = GMT +3:30
    int second = seconds_since_epoch.count() % 60; // seconds since the minute
    time[0] = year;
    time[1] = month;
    time[2] = day;
    time[3] = hour;
    time[4] = minute;
    time[5] = second;
    // end of time ------------------------------------------------
}

Message::~Message()
{
    std::cout << "Message Destructor" << std::endl;
    delete[] time;
}

Message::Message(const Message& m)
: text_message{m.text_message},file_message_link{m.file_message_link},
sender{m.sender},reciever{m.reciever},chat_name{m.chat_name},time{new int[6]}
{
    std::cout << "Message copy constructor" << std::endl;
    for(size_t i{}; i < 6; i++)
        time[i] = m.time[i];
}

Message::Message(Message&& m)
: text_message{m.text_message},file_message_link{m.file_message_link},
sender{m.sender},reciever{m.reciever},chat_name{m.chat_name},time{m.time}
{
    std::cout << "Move Constructor of Message" << std::endl;
    m.time = nullptr;
}

//-----------------------------end of constructors------------------------------

//-----------------------------methods------------------------------------------

std::string Message::get_time_in_string()
{
    std::string time_string {std::to_string(time[0]) + "," + std::to_string(time[1]) + "," + std::to_string(time[2]) + "," + std::to_string(time[3]) + "," + std::to_string(time[4]) + "," + std::to_string(time[5])};
    return time_string;
}

void Message::show()
{
    if(file_message_link == "")
        std::cout << text_message << std::endl;
}

int* Message::get_time()
{
    return time;
}

std::string Message::get_message()
{
    if(file_message_link == "" && text_message != "")
        return text_message;
    else if(text_message == "" && file_message_link != "")
        return file_message_link;
    else if(text_message != "" && file_message_link != "")
        return "(" + text_message + "," + file_message_link + ")";
    else
        return "This message does not exist !" ;
}

Client Message::get_sender()
{
    return sender;
}

Client Message::get_reciever()
{
    return reciever;
}

std::string Message::get_chat_name()
{
    return chat_name;
}

//----------------------------end of methods--------------------------------------

//----------------------------operators-------------------------------------------

Message& Message::operator=(const Message& m)
{
    std::cout << "Message operator = copy version" << std::endl;
    if (this == &m)
        return *this;
    delete[] time;
    text_message = m.text_message;
    file_message_link = m.file_message_link;
    sender = m.sender;
    reciever = m.reciever;
    chat_name = m.chat_name;

    time = new int[6];
    for (size_t i {}; i < 6; i++)
        time[i] = m.time[i];
    return *this;
}

Message& Message::operator=(Message&& m)
{
    delete[] time;
    text_message = m.text_message;
    file_message_link = m.file_message_link;
    sender = m.sender;
    reciever = m.reciever;
    chat_name = m.chat_name;

    time = m.time;
    m.time = nullptr;
    return *this;
}

//----------------------------end of operators-------------------------------------------