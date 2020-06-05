# ISCA_assignment
docker_file 

STEPS:
1) docker build -t Local_Image_Name:tagname {PATH}
eg: docker build -t isac_assignment2:1.0.1 .

2) docker run -it Local_Image_Name:tagname
eg: docker run -it isac_assignment2:1.0.1 

NOTE: after running the docker run command you might need to run "service apache2 start" once or twice to start the webserver

eg :
$ docker run -it maverick2623/isac_submission:2.0.2
root@ea1b8ea440d5:/# service apache2 start 
 * Starting Apache httpd web server apache2                                                                                             * 
root@ea1b8ea440d5:/# curl http://127.0.0.1
curl: (7) Failed to connect to 127.0.0.1 port 80: Connection refused
root@ea1b8ea440d5:/# service apache2 start 
 * Starting Apache httpd web server apache2                                                                                            AH00558: apache2: Could not reliably determine the server's fully qualified domain name, using 172.17.0.2. Set the 'ServerName' directive globally to suppress this message
 * 
root@ea1b8ea440d5:/# curl http://127.0.0.1
Hello World!
root@ea1b8ea440d5:/# 
