FROM mysterysd/wzmlx:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt .
RUN pip3 install --no-binary :all: marisa-trie

COPY . .

CMD ["bash", "start.sh"]
