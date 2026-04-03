FROM wiremock/wiremock:latest

COPY mappings/ /home/wiremock/mappings/
COPY files/ /home/wiremock/__files/

EXPOSE 8080

CMD ["--port", "8080", "--verbose", "--global-response-templating"]
