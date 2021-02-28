# [nginx primitives](#)


### [ethereum.conf](ethereum.conf)
    * Go Ethereum JSON-RPC Configuration


A [small NGINX recipe](https://www.nginx.com/resources/wiki/start/topics/recipes/geth/) that makes Geth’s RPC and Websocket interface remotely accessible on a node. 
With this config RPC becomes remotely accessible at http://{SERVER_IP}/rpc and websockets at http://{SERVER_IP}/ws.

First start and sync a node on the device with the RPC and websocket endpoints opened, you can use the following command:

```bash
./geth --cache 4096 --rpc --rpcaddr "127.0.0.1" --rpccorsdomain "*" --rpcport "8545" --rpcapi "db, eth, net, web3, personal" --ws --wsport 8546 --wsaddr "127.0.0.1" --wsorigins "*" --wsapi "web3, eth" --maxpeers=100
```

To test with Web3.js you can use the following providers:

```js
var Web3 = require('web3');
var web3 = new Web3()

// Replace localhost with remote IP
web3.setProvider(new Web3.providers.HttpProvider('http://localhost/rpc'));
web3.setProvider(new Web3.providers.WebsocketProvider('http://localhost/ws'));
```
