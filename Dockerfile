FROM alpine 

RUN mkdir -p /home/app

COPY . /home/app

ENTRYPOINT ["java","-jar","/usr/local/lib/iti-g111-1.0.1.jar"]
