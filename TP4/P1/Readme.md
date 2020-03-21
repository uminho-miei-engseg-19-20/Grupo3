# BlockChain

## Pergunta 1.1
O objetivo deste exercício é alterar o método que cria o Genesis Block, de modo a que o timestamp seja a data do dia de hoje e o dado
incluído nesse Bloco seja "Bloco inicial da koreCoin". Para tal,usamos a `Date()` que retorna o dia e hora atuais. Podemos observar estas
alterações no código:

```javascript
  createGenesisBlock(){
	var date = new Date();
  return new Block(0,date, "Block inicial da koreCoin", "0");
    }
```
Ao correr `node pergunta1.js` o output obtido foi o seguinte:
```
"chain": [
        {
            "index": 0,
            "timestamp": "2020-03-21T12:40:59.565Z",
            "data": "Block inicial da koreCoin",
            "previousHash": "0",
            "hash": "9f6d6e2781584f684c82fc022fb521b94cee7da151bc3493ed1f2ba3f2dd9df4"      
```
## Pergunta 1.2
Para esta pergunta, foram adicionados alguns blocos, recorrendo à função `addBlock()`,com diferentes quantidades que simulam 
várias transações em cada um deles.
```javascript
koreCoin.addBlock(new Block (4,Date(), {amount1: 35000, amount2: 87}))
koreCoin.addBlock(new Block (5,Date(), [{from:55, to:45, amount: 26},{from:3500, to:87, amount:300}]));
koreCoin.addBlock(new Block (6,Date(), {amount1: 0.5, amount2: 400}))
```
Ao correr `node pergunta1.js` o output obtido foi o seguinte:
```
{
            "index": 1,
            "timestamp": "01/01/2018",
            "data": {
                "amount": 100
            },
            "previousHash": "9f6d6e2781584f684c82fc022fb521b94cee7da151bc3493ed1f2ba3f2dd9df4",
            "hash": "d87a3b757cae35b35212468076a013c023d7397df0ecc4ac140201f83c49eba2"
        },
        {
            "index": 2,
            "timestamp": "02/01/2018",
            "data": {
                "amount": 40
            },
            "previousHash": "739a80053fb1901fd9aa5d45240fd90671ad5db5a48993c6ffe3d30a1ee9f5ea",
            "hash": "65c6fecb45acc7b0e8fdea5b10a4e5a1ce76db9f7af4edf93b4492958aa7ea30"
        },
        {
            "index": 3,
            "timestamp": "02/01/2018",
            "data": {
                "amount": 40
            },
            "previousHash": "65c6fecb45acc7b0e8fdea5b10a4e5a1ce76db9f7af4edf93b4492958aa7ea30",
            "hash": "0d7ab2ce933436a769948faeb4279b19e973a8895752f560b8208981d79d6828"
        },
        {
            "index": 4,
            "timestamp": "Sat Mar 21 2020 12:40:59 GMT+0000 (Western European Standard Time)",
            "data": {
                "amount1": 35000,
                "amount2": 87
            },
            "previousHash": "0d7ab2ce933436a769948faeb4279b19e973a8895752f560b8208981d79d6828",
            "hash": "1fe2d2f9628fc55d418ff390551856868af6aabd9d13e5d24ac2932b3c74689e"
        },
        {
            "index": 5,
            "timestamp": "Sat Mar 21 2020 12:40:59 GMT+0000 (Western European Standard Time)",
            "data": [
                {
                    "from": 55,
                    "to": 45,
                    "amount": 26
                },
                {
                    "from": 3500,
                    "to": 87,
                    "amount": 300
                }
            ],
            "previousHash": "1fe2d2f9628fc55d418ff390551856868af6aabd9d13e5d24ac2932b3c74689e",
            "hash": "7f63503587cd57b702a4e8e1af299d9d2673c5da4b5d6074ed2570596c061c72"
        },
        {
            "index": 6,
            "timestamp": "Sat Mar 21 2020 12:40:59 GMT+0000 (Western European Standard Time)",
            "data": {
                "amount1": 0.5,
                "amount2": 400
            },
            "previousHash": "7f63503587cd57b702a4e8e1af299d9d2673c5da4b5d6074ed2570596c061c72",
            "hash": "fa26096b0b4907637b365a48f5993e11262c46647cf1d99264cdb2dc8e4496e7"
        }
    ]
}
```
