/*

  Copyright 2017 Loopring Project Ltd (Loopring Foundation).

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
*/
pragma solidity 0.4.24;
pragma experimental "v0.5.0";
pragma experimental "ABIEncoderV2";

import "../lib/ERC20Token.sol";
import "../lib/MathUint.sol";


/// @author Kongliang Zhong - <kongliang@loopring.org>
contract DummyToken is ERC20Token {
    using MathUint for uint;

    constructor(
        string _name,
        string _symbol,
        uint8  _decimals,
        uint   _totalSupply
    ) ERC20Token(
        _name,
        _symbol,
        _decimals,
        _totalSupply,
        msg.sender
        )
        public
    {
    }

    function setBalance(
        address _target,
        uint _value
        )
        public
    {
        uint currBalance = balanceOf(_target);
        if (_value < currBalance) {
            totalSupply_ = totalSupply_.sub(currBalance.sub(_value));
        } else {
            totalSupply_ = totalSupply_.add(_value.sub(currBalance));
        }
        balances[_target] = _value;
    }

}
