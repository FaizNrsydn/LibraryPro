# Tahap 1: Kompilasi kode Java menggunakan Maven dan JDK 17
FROM maven:3.8.5-openjdk-17 AS build
COPY . .
RUN mvn clean package -DskipTests

# Tahap 2: Jalankan aplikasi di dalam Apache Tomcat 10
FROM tomcat:10.1-jdk17-openjdk-slim
COPY --from=build /target/*.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]