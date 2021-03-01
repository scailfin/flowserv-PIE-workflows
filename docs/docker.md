# Docker Container for PIE

Build Docker container image containing the PIE code base:

```
docker image build -t pie:0.1.3.flowserv .
```

Push container image to DockerHub.

```
docker image tag pie:0.1.3.flowserv heikomueller/pie:0.1.3.flowserv
docker image push heikomueller/pie:0.1.3.flowserv
```


Run Commands inside Docker Container
------------------------------------

Use the following command to run PIE single-image analysis in the Docker container.

```
docker container run \
    --rm \
    -v /home/user/projects/PIE/PIE_test_data:/data \
    pie:0.1.1.flowserv \
    pieflow colony_recognition -t brightfield /data/IN/SL_170619_2_GR_small/t01xy0001.tif /data/OUT
```
