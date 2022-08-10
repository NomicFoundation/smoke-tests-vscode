# Hardhat for Visual Studio Code Smoke Tests

Release prep for *Hardhat for Visual Studio Code* involves running through manual tests from this repo on multiple os. This is to support our integration tests and provide a final sanity check that core functionality is working on different platforms.

*Hardhat for Visual Studio Code* is tested against:

- Mac OS X
- Windows
- Remote containers with docker as the backing

## Manual Test Run

Install the Release Candidate vsix file into your local instance of vscode on one of the test platforms (i.e. windows). Open this repo within vscode and install the dependencies:

```shell
yarn
```

Confirm that the contracts build cleanly at the command line:

```shell
npx hardhat compile
```

You should see one warning that a contract is too large to deploy to mainnet.

Any new features or bugs that constitute the release should be checked.

To sanity check core functionality:

- function signature quickfixes: open [Quickfix.sol](./contracts/Quickfix.sol), and remove the function signature keyword until you have tested:
    * Constrain mutability by adding view/pure to function signature
    * Meet inheritance requirements by adding virtual/override on function signature
    * Provide accessibility by adding public/private to function signature
- Implement interface quickfix: open [CodeCoin.sol](./contracts/CodeCoin.sol), delete the contract and import statement:
    * add back the openzepplin IERC20 import checking code completion
    * add `contract CodeCoin is IERC20 {}` to the body and confirm the `implement interface` quickfix is working
- Single file rename: open [Rename](./contracts/Rename.sol), rename the `complete` signature and confirm all usages are updated
- Multi file rename: confirm `npx hardhat compile`, open [Greeter.sol](./contracts/Greeter.sol), rename the `Auth` contract, confirm `npx hardhat compile` still works
- Imports: check import line errors by opening [404-non-existant.sol](./contracts/imports/404-non-existant.sol) and uncommenting the import line, a 404 error should be reported inline. Add the comment back and check the other imports.
