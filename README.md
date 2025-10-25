# Bithatch Maven P2

Builds an Eclipse P2 repository with a select number of Bithatch libraries from
Maven  Central.

# Building

Run ..

```
mvn clean package
```

By default, repository copied to ../bithatch.github.io/repositories/p2.

# Testing

You can build and run a docker container with Apache that just servers this repository at a fixed path http://localhost/repositories/p2.

```
docker build -t p2-repository-server:v1 .
```

Then run it.

```
docker run -itd --name o2 -p 10080:80 p2-repository-server:v1
```