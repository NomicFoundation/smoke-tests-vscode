// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Alpha {
    function foo() public virtual {}

    function bar() public virtual {}

    function baz() public virtual {}

    function bazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbaz()
        public
        virtual
    {}

    function longFunctionName()
        public
        virtual
        mathsWorks
        returns (string memory outputlong)
    {}

    modifier mathsWorks() {
        require(25 == 25, "happy");
        _;
    }
}

contract Beta {
    function bar() public virtual {}

    function baz() public virtual {}

    function bazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbaz()
        public
        virtual
    {}

    function longFunctionName()
        public
        virtual
        returns (string memory outputlong)
    {}
}

contract Gamma {
    function foo() public virtual {}

    function bar() public virtual {}

    function baz() public virtual {}

    function bazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbaz()
        public
        virtual
    {}

    function longFunctionName()
        public
        virtual
        returns (string memory outputlong)
    {}
}

//// Uncomment then fix the override quickfixes
// contract Omega is Alpha, Beta, Gamma {
//     function foo() public {}

//     function bar() public view virtual {}

//     function baz() public virtual override(Alpha, Gamma) {}

//     function bazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbazbaz()
//         public
//         virtual
//         override
//     {}

//     function longFunctionName()
//         public
//         virtual
//         returns (string memory outputlong)
//     {}

//     modifier anotherMod() {
//         require(25 == 25, "happy");
//         _;
//     }
// }
