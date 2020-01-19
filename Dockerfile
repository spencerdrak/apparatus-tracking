FROM iron/go

WORKDIR /app

ADD apparatus-tracking /app/

RUN chmod +x /app/apparatus-tracking

RUN ls -al /app/

ENTRYPOINT ["./apparatus-tracking"]