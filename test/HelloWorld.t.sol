// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {HelloWorld} from '../src/HelloWorld.sol';


contract CounterTest is Test {
    HelloWorld public helloworld;

    function setUp() public {
        helloworld = new HelloWorld();
       helloworld.setName("Abhishek");
    }

    function test_name() view public {     
        assertEq(helloworld.greet(), "Abhishek");
    }

   
}
