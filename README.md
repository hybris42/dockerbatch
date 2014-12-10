dockerbatch
===========

HOWTO
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

Usage
-----
* -c: continue on batch fail (batch script return non-zero exit status)
* -r: remove container if batch failed
* takes a list of batch images, launched sequentially:
```
batch -c batch:mysql_clean batch:mysql_dump
```
