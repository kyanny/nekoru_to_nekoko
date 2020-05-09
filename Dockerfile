FROM shyd/instagram-scraper
RUN apt-get update && apt-get install curl -y
COPY timestamp.txt /home/timestamp.txt
COPY entrypoint.sh /home/entrypoint.sh
RUN chmod a+x /home/entrypoint.sh
ENTRYPOINT [ "/home/entrypoint.sh" ]
