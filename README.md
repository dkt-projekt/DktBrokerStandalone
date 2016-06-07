# DktBrokerStandalone

## Docker Build and Run

To create the build artifacts (which mainly consists of a very large .jar file), use:

```
./docker_build.sh
```

You will need to have docker installed on your system (and in the path) for this to work.
This mounts your local Maven repository (expected at ~/.m2) in the container.
If you want to clean before building, use `./docker_build.sh mvn clean install`

To run the created jar within a container, use

```
./docker_run.sh
```

The script expects the `target` directory to exist and contain the results of the build. That is,
it expects that `./docker_build.sh` has been executed before.

Note that the host machine needs a large amount of memory (~ 8GB). The script reserves a large percentage
of the available memory for the JVM heap.
