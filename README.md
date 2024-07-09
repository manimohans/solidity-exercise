# 30-day smart contract personal challenge

I'm challenging myself to code one smart contract a day for the next two weeks. I'll start by storing simple math and physics constants and gradually tackle complex data structures and scientific applications.

Each day, the goal is to focus on a new concept, getting a bit harder as I go. By the end, I hope to have a good grasp of Solidity and understand how it can be used in scientific fields.

Using the following:
* Base Sepolia for testnet deployment
* Remix IDE for development
* Coinbase wallet

For any question or information - message me on Farcaster @mani 

- day 1 - 0x32f4d661ead48582f5c7c3f78aae03d2fa00bc02
- day 2 - 0x78214E69aD086E100e438628DC555ad059a3Bf16
- day 3 - 0xF326168B4c3e8cDbAada78156170Ab5db9D30D5F
- day 4 - 0x3270Ae8aBaf1FdaA22D1d11F6eEB71fAF55af20b
- day 5 - 0xEb0a8992cF61c38A52362c4575c97D8A12baF92a
- day 6 - 0xf382d1Baf0B10D9978cE94e832F64Dd384444015
- day 7 - 0xC1Eab919a8817a11D0e745E6E57659287d686FDB
- day 8 - 0xf8A71Be3b4FFeB9f27503686C25Ac339C7650e5a
- day 9 - 0xce6a3F84aD346ae68Dc0b8Bd69171EA654DDd686
- day 10 - 0x01b4E7f03Ece803024E166912de9EC24a3bCcBf3
- day 11 - 0x8ea87d9762cc7fF68AcEcD83316aDD8C0bf75Bcd
- day 12 - 0x2d6626a9b14c792e44F9E4cAC443CbA59FEDb907
- day 13 - 0xA164cd659b0466C1887ddD49D0A194C852F06f01
- day 14 - 0x3D5D33e6F7Fb995e428b617008C0D62602d1B7f0


## Learnings 
* Lack of Floating-Point: For science and math computations, floating point precision is most times necessary. It was very hard to use fixed point arithmetic etc., as workaround.

* Limited Math Functions:  Very limited math functions - had to use taylor series and other approximations for complex functions. Considering gas costs, the precision had to be kept low for these series calculations (often stopping at var^3 or var^4)

* Gas Costs:  As mentioned above, it is a tough trade off between precision and computational costs.

* Fixed-Point Representation: Fixed point arithmetic was often times used as a replacement for floats. But, it's very hard to determine a good scale factor to use, and also, precision takes a hit with fixed point representaiton. 

* Complexity and Readability: Code gets very complex for all the above reasons. As you can see in some of the contract files in this repo, the code's readability is questionable - I tried my best to keep it neat. 
