FROM circleci/python:3.6.1

RUN sudo apt-get update
RUN sudo apt-get install --yes curl
RUN curl --silent --location https://deb.nodesource.com/setup_8.x | sudo bash -
RUN sudo apt-get install --yes nodejs
RUN sudo apt-get install --yes build-essential
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
RUN sudo apt-get update && sudo apt-get install yarn

