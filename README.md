# Algorand Node Docker
Docker build for quick node deployment of the Algorand blockchain.

### Build

- Clone the repository:

```shell
git clone https://github.com/Sensei-Node/algorand-node.git
```

- Navigate to the `node` folder:

```shell
cd algorand-node/algorand/node
```

- Run docker command:

```shell
docker build -t algo_node:latest .
```

### Docker run

```shell
docker run -itd -p 8080:8080 --name algo_node algo_node:latest
```

### Docker run from image

A compiled version is available on Docker Hub [here](https://hub.docker.com/r/senseinode/algorand)

You can run this version with the pre-configured docker-compose.yml found in the algorand folder:

- Navigate to the `algorand` folder:

```shell
cd algorand
```

- Run docker compose command to raise the container in the background with:

```shell
docker-compose up -d
```

### Get algod.token

- For RPC usage you will need the algod.token of the node, you can get this token by running:

```shell
docker exec -it algo_node cat data/algod.token
```

- Once you got your token you can check that your node is running and syncing from the latest catchup point:

```shell
curl http://localhost:8080/v2/status -H "X-Algo-API-Token:<your_token_here>"
```

The complete `REST API` documentation for algorand can be found [here](https://developer.algorand.org/docs/rest-apis/algod/v2/)

### Algorand SDKs

Algorand provides developers with SDKs to interact with the network by connecting to your node, this will allow you to submit requests and transactions. They also contain methods to help construct and sign transactions, encoding/decoding addresses and mnemonics, etc. 

[Python](https://developer.algorand.org/docs/sdks/python/)

[JavaScript](https://developer.algorand.org/docs/sdks/javascript/)

[Go](https://developer.algorand.org/docs/sdks/go/)

[Java](https://developer.algorand.org/docs/sdks/java/)

# Contributing
 
- Contributions are welcome. Feel free to suggest improvements!

Made with ❤️ by [Sensei Team](https://github.com/orgs/Sensei-Node/people)