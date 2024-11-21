podman build --ulimit nofile=65535:65535 -t quarkus-semeru-flightservice-step1 -f Dockerfile.quarkus.semeru.step1
podman build -t quarkus-semeru-flightservice -f Dockerfile.quarkus.semeru.step2  --cap-add=ALL --security-opt seccomp=unconfined --cpu-quota=100000 -m 1g --no-cache .
