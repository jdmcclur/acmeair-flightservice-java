podman build --ulimit nofile=65535:65535 -t quarkus-semeru-flightservice -f Dockerfile.quarkus.semeru  --cap-add=ALL --security-opt seccomp=unconfined --cpu-quota=100000 -m 1g .
