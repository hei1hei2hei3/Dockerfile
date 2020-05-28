FROM ubuntu

#ADD sources.list /etc/apt/sources.list 
RUN mkdir -p /home/src/ \
&& apt-get -y update \
&& apt-get install -y gcc libc6-dev make
#&& wget -0 redis.ta.gz "http://downloat.redis.io/releases/#redis-3.2.5.tar.gz"\
#&&tar -xzf redis.tar.gz -C /home/src/ --strip-component s = 1 \
WORKDIR /home/src 
ADD abc.txt /home/src/ 
ADD helloworld.c /home/src/ 
RUN cd /home/src/ \
&& gcc helloworld.c 
ENTRYPOINT /home/src/helloworld.o

