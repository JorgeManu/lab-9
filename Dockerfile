FROM mcr.microsoft.com/dotnet/sdk:6.0

WORKDIR /app

RUN apt-get update && apt-get install -y git

RUN git clone https://github.com/JorgeManu/lab-9.git

WORKDIR /app/lab09DAE

RUN dotnet publish -c Release -o out

WORKDIR /app/lab09DAE/out

EXPOSE 5000

ENTRYPOINT ["dotnet", "BlazingPizza.dll", "--urls", "http://0.0.0.0:5000"]
