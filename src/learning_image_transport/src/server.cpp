#include <stdio.h>
#include <iostream>
#include <stdlib.h>
#include <netinet/in.h>
#include <unistd.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <string.h>

using namespace std;
 
#define BUF_SIZE 1024
#define PORT 41089
 
int main()
{
    struct sockaddr_in s_in;//server address structure
    struct sockaddr_in c_in;//client address structure
    int Listenner,sockServer;
    socklen_t len;
    char buf[BUF_SIZE];//content buff area
    string tem;
    float x_value = 0.0;
    float y_value = 0.0;
    memset((void *)&s_in,0,sizeof(s_in));

    s_in.sin_family = AF_INET;//IPV4 communication domain
    s_in.sin_addr.s_addr = INADDR_ANY;//accept any address
    s_in.sin_port = htons(PORT);//change port to netchar

    Listenner = socket(AF_INET,SOCK_STREAM,0);//socket(int domain, int type, int protocol)
    bind(Listenner,(struct sockaddr *)&s_in,sizeof(s_in));
    listen(Listenner,1);//同时只能有一个连接

    cout<<"begin"<<endl;
    char successMeg[30] = "success!";
    char sendBuf[BUF_SIZE];
    char recvBuf[BUF_SIZE];
    sockServer = accept(Listenner,(struct sockaddr *)&c_in,&len);
    while(1)
    {
        read(sockServer, recvBuf, BUF_SIZE);
        int fileSize = atoi(recvBuf);
        if(fileSize > 0)
        {
            write(sockServer, successMeg, strlen(successMeg) + 1);
	    printf("%s\n", recvBuf);
 
	    FILE * file;
	    file = fopen("s.jpg", "wb");
	    while (fileSize > 0)
	    {
	        int recvLen = recv(sockServer, recvBuf, 1024, 0);
	        size_t writelen = fwrite(recvBuf, sizeof(char), recvLen, file);
	        fileSize -= recvLen;
	    }
	    fclose(file);

            char replyMessage[50] = "File \"s.jpg\" saved!";
            cout << replyMessage << endl;
            //send back message
            write(sockServer, replyMessage, BUF_SIZE);
        }
    }
/*
    while(1)
    {
        c_fd = accept(Listenner,(struct sockaddr *)&c_in,&len);
        while(1)
        {
            for(int j=0;j<BUF_SIZE;j++)
            {
                buf[j] = 0;
            }
            int n = read(c_fd,buf,BUF_SIZE);//read the message send by client
            if(!strcmp(buf, "q\n") || !strcmp(buf, "Q\n"))
            {
                cout << "q pressed\n";
                close(c_fd);
                break;
            }
            //“二进制整数” －> “点分十进制
            tem = buf;
            x_value = atof(tem.substr(0,5).c_str());
            y_value = atof(tem.substr(5,5).c_str());
            cout << x_value << "dd" << y_value <<endl;
            write(c_fd,buf,n);//sent message back to client
        }
    }*/
    return 0;
}
