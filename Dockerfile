FROM jjanzic/docker-python3-opencv

RUN apt-get update && \ 
	apt-get install -y runit && \ 
	pip install --upgrade pip && \ 
	pip install requests
	
WORKDIR /usr/src/app

COPY docker/*.sh ./

COPY *.py ./pypotter/

COPY Training ./pypotter/Training_orig

RUN chmod +x *.sh && \ 
	mkdir -p /etc/service/pypotter && \ 
	mkdir -p /etc/run_once && \ 
	ln -s /usr/src/app/init.sh /etc/service/pypotter/run && \ 
	ln -s /config/Training /usr/src/app/pypotter/Training && \ 	
	mkdir -p /config

CMD ["sh", "boot.sh"]