FROM mcr.microsoft.com/dotnet/sdk:10.0 AS build
WORKDIR /src

COPY ["ZerostLanding.csproj", "./"]
RUN dotnet restore "ZerostLanding.csproj"

COPY . .
RUN dotnet publish "ZerostLanding.csproj" -c Release -o /app/publish /p:UseAppHost=false

FROM mcr.microsoft.com/dotnet/aspnet:10.0 AS final
WORKDIR /app

ENV ASPNETCORE_URLS=http://0.0.0.0:10000
ENV ASPNETCORE_ENVIRONMENT=Production
ENV ASPNETCORE_FORWARDEDHEADERS_ENABLED=true

EXPOSE 10000

COPY --from=build /app/publish .

ENTRYPOINT ["dotnet", "ZerostLanding.dll"]
