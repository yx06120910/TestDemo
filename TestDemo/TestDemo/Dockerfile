FROM docker.io/microsoft/dotnet

RUN mkdir /TestDemo

COPY /publish /TestDemo

WORKDIR /TestDemo

EXPOSE 80

CMD ["dotnet","TestDemo.dll"]