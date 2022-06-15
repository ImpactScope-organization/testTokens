# istest Token

This is the Impact Token Contract.

## Token Name and Symbol

    On line 11,
    ERC20(name, symbol) = ERC20("istest", "istest")

## Max Supply

    On line 12, Max Supply is set to 1000000000 isTest
    MAX_SUPPLY = 1000000000 * 10**18;

## Mint

    On line 15,
    mint function takes token amount as parameter. It will mint that amount of tokens to function
    caller account by considering maximum supply should not be exceeded. This function has a
    modifer of onlyOwner. Only the owner can call this function. Remove this modifier
    for public calling.
