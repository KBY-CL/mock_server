FROM wiremock/wiremock:latest

COPY mappings/ /home/wiremock/mappings/
COPY files/ /home/wiremock/__files/

EXPOSE 8080

ENTRYPOINT ["java", "-cp", "/var/wiremock/lib/*:/var/wiremock/extensions/*", \
  "com.github.tomakehurst.wiremock.standalone.WireMockServerRunner", \
  "--port=8080", \
  "--verbose", \
  "--global-response-templating"]
