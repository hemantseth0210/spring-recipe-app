# spring-recipe-app

To run it in docker container
- docker build -t spring-recipe-app:0.0.3 .
- docker run --name spring-recipe-app-container --link mysqldb:mysql -p 8080:8080 -d spring-recipe-app:0.0.3
- docker logs --follow spring-recipe-app-container
