FROM microsoft/aspnetcore:2.0
ARG source=.
WORKDIR /api
EXPOSE 80
EXPOSE 1433
COPY $source .
ENTRYPOINT ["dotnet", "Ng2AspCore.dll"]