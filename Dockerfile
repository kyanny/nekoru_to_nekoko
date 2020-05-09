FROM shyd/instagram-scraper
RUN apt-get update && apt-get install curl -y
COPY timestamp.txt timestamp.txt
COPY entrypoint.sh entrypoint.sh
RUN chmod a+x entrypoint.sh
ENTRYPOINT [ "./entrypoint.sh" ]