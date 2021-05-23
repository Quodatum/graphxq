# graphxq 
An interface to Graphviz for BaseX 9.5+

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
