# DNS Demo


Demo using DNS on a cluster of 3 docker containers.

To start the 3 instances and create the network:

```
./start.sh
```

To stop the 3 instances and destroy the network:

```
./stop.sh
```

To test the DNS, exec into one of the containers:

```
docker exec -it dns-demo-server /bin/bash
docker exec -it dns-demo-client-1 /bin/bash
docker exec -it dns-demo-client-2 /bin/bash
```

The containers can then talk to each other via the following names:

```
demo-server.dns.test
demo.client-1.dns.test
demo.client-2.dns.test
```

