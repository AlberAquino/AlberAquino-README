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
Remix - Ethereum IDE
Sent
