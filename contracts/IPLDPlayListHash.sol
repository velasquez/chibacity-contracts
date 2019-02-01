pragma solidity >=0.4.21 <0.6.0;

import "openzeppelin-solidity/contracts/ownership/Ownable.sol";

/**
 * @title IPLDHashPlaylist
 * @dev A Contract to set the play list played at chibacity-radio.
 */

contract IPLDPlayListHash is Ownable {
  string public playlistHash;

  event PlaylistChanged(string newHash);

  function changeHash(string memory newHash) public onlyOwner {
    playlistHash = newHash;
    emit PlaylistChanged(newHash);
  }
}
