FROM docker.io/microsoft/dotnet

RUN mkdir /TestDemo

ARG env

Copy /public/TestDemo

WORKDIR /TestDemo

EXPOSE 80

ENV  ASPNETCORE_ENVIRONMENT=$env

RUN echo "Ö´ÐÐ»·¾³£º$env"
CMD ["dotnet","TestDemo.dll"]