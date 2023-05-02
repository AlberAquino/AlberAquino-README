# My Token
The main objective of this Solidity project is to construct a token contract that enables users to create and burn tokens. In order to ensure that specific actions are only taken when possible, the program additionally uses conditional expressions. Additionally, it makes it possible to track balances connected to specific addresses.s.
# Description
This application is a straightforward contract that counts the number of tokens owned by each address using a mapping data structure. The software offers two operations: one to add tokens and the other to remove them. Overall, this program serves as a helpful simulation, illuminating the creation and destruction of tokens.
# Getting Started
# Executing Program
Remix is an online Solidity IDE that you may use to run this application. To get started, go to https://remix.ethereum.org/.

When you are on the Remix website, click the "+" icon in the left sidebar to start a new file. Save the document with the extension.sol (for example, myToken.sol). The code below should be copied and pasted into the file:
```solidity
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
contract MyToken {
    // public variables here
string public TokenName = "LEAGUE";
string public TokenAbbrv = "LOL";
uint public  TotalSupply = 0;

    /// mapping variable here
    mapping(address => uint) public balances;
     
// mint function
    function mint (address _address, uint _value) public {
       TotalSupply += _value;
       balances[_address] += _value;
    }
    
// burn function
    function burn (address _address, uint _value) public {
       if (balances[_address] >= _value) {
          TotalSupply -= _value;
          balances[_address] -= _value;
       }
    }
}
```
       
    

Click the "Solidity Compiler" tab in the left-hand sidebar to compile the code. Click the "Compile myToken.sol" button after making sure the "Compiler" option is selected to "0.8.18" (or another compatible version).

Select "Deploy and Run Transactions" to start the contract deployment process. You can deploy the contract from a new window that will open as a result. Before deploying, don't forget to choose the "MyToken" contract.

Set the parameters for the balance, mint, and burn functions in the "Deployed Contracts" section of the deployment window.

Enter the recipient's address and the desired quantity of new tokens, then click "transact" to start the token minting process.
Enter the recipient's address and the desired number of tokens, then click "transact" to burn them.
Enter the recipient's address and the desired token production quantity, then click call to view the address's current balances. By selecting the "totalSupply" button, you can also view the total supply.
# Authors
NTCIAN Alber C Aquino
Discord: @albercaquino
#4427

# license
MIT

