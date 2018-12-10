FROM microsoft/dotnet:sdk AS build-env
WORKDIR ./html

# Copy csproj and restore as distinct layers
COPY *.csproj ./
RUN dotnet restore

# Copy everything else and build
COPY . ./
#RUN dotnet publish -c Release -o out

# Build runtime image
FROM microsoft/dotnet:aspnetcore-runtime
WORKDIR /net
COPY --from=build-env /net/out .
ENTRYPOINT ["dotnet", "aspnetapp.dll"]


