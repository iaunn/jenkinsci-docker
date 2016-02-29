FROM jenkins

RUN apt-get update && apt-get install -y wget git curl zip fabric python build-essential 
RUN curl -sL https://deb.nodesource.com/setup | bash -
RUN apt-get update && apt-get install -y nodejs && npm install -g npm && rm -rf /var/lib/apt/lists/*
RUN wget -qO- https://get.docker.com/ | sh
RUN usermod -aG docker $(whoami)
