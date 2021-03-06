#include <ros/ros.h>  
#include <image_transport/image_transport.h>  
#include <opencv2/highgui/highgui.hpp>  
#include <cv_bridge/cv_bridge.h>

#include <stdio.h>
#include <string.h>
#include <iostream>
#include <stdlib.h>
#include <string>
#include <unistd.h>
#include <arpa/inet.h>
#include <sys/socket.h>
#define BUF_SIZE 1024
#define ADDR "188.166.241.84"
#define SERVERPORT 41089 

using namespace std;

unsigned int fileNum = 1;
bool imageSaveFlag;

int sock;
char opmsg[BUF_SIZE];
char get_msg[BUF_SIZE] = {0};
int result, opnd_cnt, i;
int len;
bool if_first = true;
struct sockaddr_in serv_addr;


size_t getFileSize(const char* strFilePath)
{
    FILE * file;
    file = fopen(strFilePath, "rb");
    size_t sizeOfFile;
 
    fseek(file, 0, SEEK_END);  //将文件指针移动文件结尾
    sizeOfFile = ftell(file);  //求出当前文件指针距离文件开始的字节数
    fclose(file);
	
    return sizeOfFile;
}

void imageCallback(const sensor_msgs::ImageConstPtr& msg)  
{  
    try  
    {  
        cv::imshow("view", cv_bridge::toCvShare(msg, "bgr8")->image);  
     // cv::waitKey(30); 

        char key;
        key=cv::waitKey(33);
        cout << "key:" << key << endl;
        if(key==27)
            cout << "ESC" << endl;
        //if(imageSaveFlag)
        //{
            stringstream fileName;
            stringstream filePath;
            fileName<<"goal rgbImage"<<fileNum<<".jpg";
            filePath<<"~/images/"<<fileNum<<".jpg";
            string fn = fileName.str();
            string fp = "/home/ubuntu1404/images/s.jpg";//filePath.str();
            cv::imwrite(fp,cv_bridge::toCvShare(msg, "bgr8")->image);
            imageSaveFlag =false;
            fileNum++;
            cout<<fileName<<"had saved."<<endl;
        //}

        //socket transfer
        size_t fileSize = getFileSize("/home/ubuntu1404/images/s.jpg");
        char fSize_trans[30];
        char recvBuf[30];
        
        sprintf(fSize_trans, "%lu", fileSize);
        write(sock, fSize_trans, strlen(fSize_trans) + 1);
        read(sock, recvBuf, BUF_SIZE);
        if (strcmp(recvBuf, "success!") == 0)
	{
	    cout << recvBuf << endl;
 
	    FILE* file;
	    file = fopen("/home/ubuntu1404/images/s.jpg", "rb");
	    char buf[BUF_SIZE];
	    while (!feof(file))
	    {
		memset(buf, 0, sizeof(buf));
		size_t readlen = fread(buf, sizeof(char), sizeof(buf), file);
		write(sock, buf, readlen);
	    }
	    fclose(file);

            //print reply message
            char replyMessage[50];
            read(sock, replyMessage, BUF_SIZE);
            cout << replyMessage << endl;
	}
        else
            cout << "transfer error!" << endl;

        /*fgets(opmsg, BUF_SIZE, stdin);        
        len = write(sock, opmsg, strlen(opmsg)); // 注释4
        if(!strcmp(opmsg, "q\n") || !strcmp(opmsg, "Q\n"))
        {
            puts("q pressed\n");
        }
        else
        {
            int read_msg = read(sock, get_msg, len);
            cout << "send length:" << len << " get:" << get_msg << endl;
        }*/
    }  

    catch (cv_bridge::Exception& e)  
    {  
        ROS_ERROR("Could not convert from '%s' to 'bgr8'.", msg->encoding.c_str());  
    }  
}  

int main(int argc, char **argv)  
{  
    sock = socket(PF_INET, SOCK_STREAM, 0);
    if(sock == -1)
    {
        return -1;
    }
    memset(&serv_addr, 0, sizeof(serv_addr));
    serv_addr.sin_family = AF_INET;
    serv_addr.sin_addr.s_addr = inet_addr(ADDR);  // 注释1
    serv_addr.sin_port = htons(SERVERPORT);
    if(connect(sock, (struct sockaddr*) &serv_addr, sizeof(serv_addr))==-1) //
    {
        cout << "connect error\n";
        return -1;
    }
    else
    {
        cout << "connected ...\n" << endl;  //注释3
    }

    ros::init(argc, argv, "image_listener");  
    ros::NodeHandle nh;  
    cv::namedWindow("view");  
    cv::startWindowThread();  
    image_transport::ImageTransport it(nh);  
    image_transport::Subscriber sub = it.subscribe("camera/image", 1, imageCallback);
    ros::spin();  
    cv::destroyWindow("view");

    close(sock);
}  
