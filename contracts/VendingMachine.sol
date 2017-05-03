pragma solidity ^0.4.4;

// Vending machine to sell X number of tokens for approx Y number of ETH.
// As purchases are made, the owned ERC20 tokens will be sent out to purchaser.
// Purchases will be priced based on the purchase "Generation" the vending machine is in.
// As more purchases are made the Generation gets incremented.
// Each generation will sell the tokens for twice as much as the previous generation.
contract VendingMachine is Ownable {

    // The contract where the tokens are held by this contract until they are sold.
    ERC20 public token;

    // Total Amount of tokens to sell to purchasers
    uint public amountToSell = 21000000;

    // Total amount of tokens that have been sold so far.  Starts at 0.
    uint public amountSold = 0;

    // Initial price that each ETH sent in will get back in tokens.
    uint public initialPricePerEth = 10000;

    // Constructor initalized with the token contract that it will be selling.
    function VendingMachine(ERC20 tokenContract){
        token = tokenContract;
    }

    function calculateSaleAmount(uint alreadySold, uint ethAmount) uint{
        // First get the amount of tokens sold from the beginning of this generation.
        // Calculate the price per ETH of the current generation
        // Calculate how mant tokens they are trying to buy
        // If they are buying past the current generation, then figure out how much they purchase in the next generation.
    }    

    // When this function is called, it will send the originator X tokens.  
    // X is determined by the price calculated based on the current generation of sales.
    function PurchaseTokens payable(){

        

        // Updatete the total amount sold

        // Send the tokens to the sender's account
    }

    // This function allows the owner to withdraw any ETH that was sent in via purchases.
    function WithdrawEth(uint amount) onlyOwner {
        // Send out what they are requesting to withdraw
        msg.sender.send(amount);
    }
}



Example:

I want to sell 10 tokens for 10 ETH, but I want the first token sole to be super cheap

First token sells for 0.1 ETH and last sells for 0.9 ETH

0.1
0.2
0.3
0.4
0.5
0.6
0.7
0.8
0.9
1