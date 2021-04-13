pragma solidity ^0.8.0;

import "../ERC20.sol";
import "../safeMath.sol";

contract GREEN is ERC20
{
    
    using SafeMath for uint; // 
    address owner_;
    address team_;
    mapping(address => uint) balances;
    
       // Functions with this modifier can only be executed by the owner
  modifier onlyOwner {
		require(_msgSender() == owner_, "Only owner can call this."); _;
	}
    
    
   constructor(
    string memory _name,
    string memory _symbol,
    uint totalSupply_,
    uint teambalance
  ) ERC20(_name, _symbol) {
      
    owner_ = 0x906Dd025ce1f7862A7970E1877F8A19657B4F3a5;
    team_ = 0xc19fE55085469a008C46A6402191575b4689B36B;
    
    _mint(team_,teambalance);
    
    _mint(owner_, totalSupply_.sub(teambalance));

  }
   
}
