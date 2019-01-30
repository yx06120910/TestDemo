FROM docker.io/microsoft/dotnet

RUN mkdir /TestDemo

ARG env

Copy /publish /TestDemo

WORKDIR /TestDemo

EXPOSE 80

CMD ["dotnet","TestDemo.dll"]