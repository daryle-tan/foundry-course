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

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public virtual {
        myFavoriteNumber = _favoriteNumber;
    }
    // view(read), pure no gas spent
    function retrieve() public view returns(uint256){
        return myFavoriteNumber;
    }
    // calldata = temporary variable that can't be altered
    // memory is temporary variable that CAN be altered
    // storage is permanent variable that can be modified
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        friends.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}

// struct, mapping, or array must be given a memory variable