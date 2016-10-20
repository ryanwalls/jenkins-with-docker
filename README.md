# jenkins-with-docker
Repo for jenkins with the docker client already installed.  This allows users to mount the docker socket and be able to run docker within jenkins.

This image extends the official jenkins image (https://hub.docker.com/r/_/jenkins), so any
instructions there are applicable.  

The only addition is that this image downloads the docker client binary from https://github.com/docker/docker/releases
and adds it to the user's path.  

## Running this image

Mount the `docker.sock` so that any docker commands run inside jenkins are run against
the host docker enginer.  Therefore if jenkins creates new containers, they will
actually be siblings to the jenkins container.  

```
docker run -p 8080:8080 -p 50000:50000 -v /var/run/docker.sock:/var/run/docker.sock -v /your/home:/var/jenkins_home ryanwalls/jenkins-with-docker
```
