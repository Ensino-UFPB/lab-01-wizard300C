# Usando a imagem oficial do Ubuntu
FROM ubuntu:latest

# Atualizando pacotes e instalando as ferramentas necessárias
RUN apt update && apt install -y \
    iproute2 \
    dnsutils \
    net-tools \
    traceroute \
    inetutils-ping \
    telnet \
    mtr-tiny \
    && rm -rf /var/lib/apt/lists/*

# Definir um comando padrão (opcional)
CMD ["/bin/bash"]