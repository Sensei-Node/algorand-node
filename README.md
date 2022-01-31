# Algorand Node Docker
Docker build for quick node deployment of the Algorand Blockchain.

### Build
    git clone https://github.com/Sensei-Node/algorand_node
    cd algorand_node/algorand/node
    docker build -t algo_node:latest .

### Run

    docker run -itd -p 8080:8080 --name algo_node algo_node:latest

### Run from image

A compiled version is available on Docker Hub: https://hub.docker.com/r/senseinode/algorand

You can run this version with the pre-configured docker-compose.yml found in the algorand folder:

    cd algorand
    docker-compose up -d

### Get algod.token

For RPC usage you will need the algod.token of the node, you can get this token by running:

    docker exec -it algo_node cat data/algod.token

Once you got your token you can check that your node is running and syncing from the latest catchup point:

    curl http://localhost:8080/v2/status -H "X-Algo-API-Token:<your_token_here>"
    
The complete REST API documentation for algorand can be found here: https://developer.algorand.org/docs/rest-apis/algod/v2/ 

### Algorand SDKs

Algorand provides developers with SDKs to interact with the network by connecting to your node, this will allow you to submit requests and transactions. They also contain methods to help construct and sign transactions, encoding/decoding addresses and mnemonics, etc. 

[Python](https://developer.algorand.org/docs/sdks/python/)

[JavaScript](https://developer.algorand.org/docs/sdks/javascript/)

[GO](https://developer.algorand.org/docs/sdks/go/)

[Java](https://developer.algorand.org/docs/sdks/java/)
