# Ng2AspCore

Website location: http://localhost:8123/

### installing Webpack and Angular CLI.

Install Webpack again:
* npm install webpack -g
* npm uninstall -g webpack
* npm rm webpack -g

Angular CLI
* npm uninstall -g @angular/cli
* npm rm @angular/cli –g
* npm install @angular/cli -g

### Launching the Application

* webpack
* dotnet restore
* dotnet ef database update –context HRContext
* dotnet run

### Webpack Adjustment

.Net core and Angular does not know how to interact with each other yet. To do this Webpack must bundled files to the wwwroot folder. Check b55cc3b for the change

Webpack transpile the TypeScript code to JavaScript code, then bundle, minify and put this code in the destination folder.

Therefore always run the command `webpack` everytime changes are done on the front end.

### Docker

* dotnet build
* dotnet publish
* docker build bin\Debug\netcoreapp2.0\publish -t <<TAG_NAME>>
* docker run -it -d -p 8123:80 <<TAG_NAME>>

How to push docker images to Docker Hub?
> docker tag <tagName> <your repository name>/<image name>:<tag>
> docker push <your repository name>/<image name>:<tag>

How to check if container can run from the respoitory?
> docker run -p 8456:80 <your repository name>/<image name>:<tag>
> http://localhost:8456

How to get IP address for Windows container?
> docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' container_name_or_id

How to clean up dangling images and stopped container?
> docker system prune