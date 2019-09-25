pragma solidity ^0.5.1;

contract Instructor{
    
    address creator;
    string fname;
    uint age;
    
    event Instructorevent(string name, uint age);
    
    constructor() public{
        creator = msg.sender;
    }
    
    function setInstructor(string memory _fname, uint _age) public{
        fname = _fname;
        age = _age;
        emit Instructorevent(_fname, _age);
    }
    
    function getInstructor() view public returns(string memory, uint){
        return(fname, age);
    }
}
