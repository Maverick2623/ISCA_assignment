# ISCA_assignment
docker_file 

STEPS:
1) docker build -t Local_Image_Name:tagname {PATH}
eg: docker build -t isac_assignment2:1.0.1 .

2) docker run -it Local_Image_Name:tagname
eg: docker run -it isac_assignment2:1.0.1 

NOTE: after running the docker run command you might need to run "service apache2 start" once or twice to start the webserver

![alt text](https://github.com/Maverick2623/ISCA_assignment/blob/master/image.png)
