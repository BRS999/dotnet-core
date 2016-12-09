FROM microsoft/dotnet:latest
COPY . /app
WORKDIR /app/src

RUN ["dotnet", "restore"]
RUN ["dotnet", "build"]

EXPOSE 5000/tcp
ENV ASPNETCORE_URLS http://*:5000

ONBUILD COPY README /README

ENTRYPOINT ["dotnet", "run"]
