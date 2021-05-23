# graphxq 
<<<<<<< HEAD
An interface to Graphviz for BaseX 9.5+
=======
An interface to Graphviz for BaseX 9.5.
>>>>>>> branch 'master' of https://github.com/Quodatum/graphxq

## Local Install

copy the contents of the `src` folder to your `webapp` folder
### Requires
 
1. Graphviz intallation with `dot` on the path
1. restxq default config with (static)

## Docker
```
docker build --tag=graphxq .

docker run -p 8999:8984 graphxq
```
## other

* includes dotML 
* BaseX RestXQ interface
