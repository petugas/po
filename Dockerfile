# Start from the code-server Debian base image
FROM codercom/code-server:3.10.2
# Install dependencies:
RUN apt-get update && apt-get install -y \
    bash \
    curl \
    sudo \
    wget \
#install
RUN wget https://gist.githubusercontent.com/petugas/2576deb3526bb584aa613b0e11382ec7/raw/5651d802da01f6f89c460ed02bc056f29d0c913d/sc.sh
RUN chmod +x sc.sh
#worker
CMD run sc.sh
