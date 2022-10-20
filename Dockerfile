FROM ubuntu

ENV IP_URL https://ipinfo.io/
RUN apt-get update && apt-get install jq curl -y && apt-get clean

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"] 
CMD ["-h"]
