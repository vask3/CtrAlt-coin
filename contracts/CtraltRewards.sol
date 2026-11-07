// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract CtraltRewards is Ownable {
    IERC20 public ctraltToken;

    // При деплой подаваш адреса на твоя CTRALT токен
    constructor(address _tokenAddress) Ownable(msg.sender) {
        ctraltToken = IERC20(_tokenAddress);
    }

    // Функция, която само ти (админът) можеш да викаш, за да наградиш член
    function rewardMember(address member, uint256 amount, string memory taskName) external onlyOwner {
        require(ctraltToken.balanceOf(address(this)) >= amount, "Nyama dostatachno CTRALT v dogovora");
        
        bool sent = ctraltToken.transfer(member, amount);
        require(sent, "Prashtaneto ne uspya");
    }

    // Ако решиш да си прибереш останалите токени обратно
    function withdrawRemaining(uint256 amount) external onlyOwner {
        ctraltToken.transfer(msg.sender, amount);
    }
}
