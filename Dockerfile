FROM debian:stable
RUN apt update && apt install -y ansible python3 python3-apt git
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
