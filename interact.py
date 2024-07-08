"""
trying to figure out how to interact with smart contract from python
"""

from web3 import Web3

w3 = Web3(Web3.HTTPProvider('https://sepolia.base.org'))

print(w3.is_connected())

contract_abi = """[
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "pressure",
				"type": "uint256"
			},
			{
				"internalType": "uint256",
				"name": "volume",
				"type": "uint256"
			},
			{
				"internalType": "uint256",
				"name": "temperature",
				"type": "uint256"
			}
		],
		"name": "molesCalc",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			},
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"stateMutability": "pure",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "volume",
				"type": "uint256"
			},
			{
				"internalType": "uint256",
				"name": "moles",
				"type": "uint256"
			},
			{
				"internalType": "uint256",
				"name": "temperature",
				"type": "uint256"
			}
		],
		"name": "pressureCalc",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			},
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"stateMutability": "pure",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "pressure",
				"type": "uint256"
			},
			{
				"internalType": "uint256",
				"name": "volume",
				"type": "uint256"
			},
			{
				"internalType": "uint256",
				"name": "moles",
				"type": "uint256"
			}
		],
		"name": "temperatureCalc",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			},
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"stateMutability": "pure",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "pressure",
				"type": "uint256"
			},
			{
				"internalType": "uint256",
				"name": "moles",
				"type": "uint256"
			},
			{
				"internalType": "uint256",
				"name": "temperature",
				"type": "uint256"
			}
		],
		"name": "volumeCalc",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			},
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"stateMutability": "pure",
		"type": "function"
	}
]"""
contract_address = "0x2d6626a9b14c792e44F9E4cAC443CbA59FEDb907"

contract = w3.eth.contract(address=contract_address, abi=contract_abi)

print(contract.functions.pressureCalc(2, 2, 2).call())
