// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

interface ISwaps {
	function get_best_rate(
		address _from,
		address _to,
		uint256 _amount
	) external view returns (address, uint256);

	function get_exchange_amount(
		address _pool,
		address _from,
		address _to,
		uint256 _amount
	) external view returns (uint256);

	function exchange(
		address _pool,
		address _from,
		address _to,
		uint256 _amount,
		uint256 _expected,
		address _receiver
	) external payable returns (uint256);
}
