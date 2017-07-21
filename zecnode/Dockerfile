FROM ubuntu:latest

RUN rm -rf /var/lib/apt/lists/* && apt-get update && apt-get install -y \
  apt-transport-https libcurl4-openssl-dev libxml2-dev libssl-dev apt-utils wget ca-certificates pwgen && \
  wget -qO - https://apt.z.cash/zcash.asc | apt-key add - && \
  echo "deb [arch=amd64] https://apt.z.cash/ jessie main" | tee /etc/apt/sources.list.d/zcash.list && \
  apt-get update && apt-get install zcash && \
  adduser --uid 1000 --system zcash && \
  # mv /root/.zcash-params /home/zcash/ && \
  mkdir -p /home/zcash/.zcash/ && \
  chown -R zcash /home/zcash && \
  echo "STEP1 COMPLETE"

USER zcash

RUN zcash-fetch-params && \
  echo "rpcuser=zcash" >> ~/.zcash/zcash.conf && \
  echo "rpcpassword=`head -c 32 /dev/urandom | base64`" >> ~/.zcash/zcash.conf && \
  echo "mainnet=1" >> ~/.zcash/zcash.conf && \
  echo "addnode=mainnet.z.cash" >> ~/.zcash/zcash.conf && \
  # echo "gen=1" && \
  echo "STEP2 COMPLETE"

VOLUME ["/home/zcash/.zcash"]

# CMD ["zcashd"]
