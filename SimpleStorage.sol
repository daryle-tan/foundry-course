// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; 

contract SimpleStorage {
    // state variable
    uint256 myFavoriteNumber = 22;
    // custom type
    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public friends;
    // Person public myFriend = Person({favoriteNumber: 7, name: "Tan"});

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }
    // view(read), pure no gas spent
    function retrieve() public view returns(uint256){
        return myFavoriteNumber;
    }


}