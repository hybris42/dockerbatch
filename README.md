dockerbatch
===========

Usage
-----
* Adapt batch_dependencies in Dockerfile
* Replace batch.sh with your own batch
* use BATCH_VOLUMES as list of mountpoints
* build with :
```
docker build --rm --no-cache=true -t batch:${batch_name} .
```
* run with:
```
./batch batch:${batch_name}
```
* or for example:
```
BATCH_VOLUMES="/tmp /var/www" ./batch batch:${batch_name}
```
