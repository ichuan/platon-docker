FROM ubuntu:18.04
WORKDIR /opt/coin
RUN apt update && apt install -y gnupg2 software-properties-common
RUN add-apt-repository -y ppa:ppatwo/alaya && apt update && apt install -y platon0.14.0
# cleanup
RUN apt autoremove -y && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/platon"]
CMD ["--alaya", "--nousb", "--syncmode", "fast", "--rpc", "--rpcaddr", "0.0.0.0", "--rpcapi", "debug,db,platon,net,web3,admin,personal,txpool", "--rpcvhosts", "*", "--datadir", "/root/.platon", "--rpcport", "6789"]
