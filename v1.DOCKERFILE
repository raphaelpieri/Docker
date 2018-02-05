#Imagem principal
FROM ubuntu

#Criador da imagem
LABEL maintainer="raphaeldppf@hotmail.com"

#Executa um comando no container
RUN apt-get update 
RUN apt-get install -y nginx

#Copia um arquivo para dentro do container
ADD exemplo /etc/nginx/sites-enabled/default

#Executa um comando no container
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

#Define o diretorio de trabalho
#ADD ./ /rails

#Mapeamento de porta
EXPOSE 8080

#Inicializa um serviço
CMD service nginx start

