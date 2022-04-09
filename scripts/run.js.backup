const main = async () => {
	const waveContractFactory = await hre.ethers.getContractFactory("WavePortal");
	const waveContract = await waveContractFactory.deploy({
	  value: hre.ethers.utils.parseEther("0.1"),
	});
	await waveContract.deployed();
	console.log("Contract addy:", waveContract.address);
  
	/*
	 * Get Contract balance
	 */
	let contractBalance = await hre.ethers.provider.getBalance(
	  waveContract.address
	);
	console.log(
	  "Contract balance:",
	  hre.ethers.utils.formatEther(contractBalance)
	);
  
	/*
	 * Send Wave
	 */
	let waveTxn = await waveContract.wave("A message!");
	await waveTxn.wait();
  
	/*
	 * Get Contract balance to see what happened!
	 */
	contractBalance = await hre.ethers.provider.getBalance(waveContract.address);
	console.log(
	  "Contract balance:",
	  hre.ethers.utils.formatEther(contractBalance)
	);
  
	let allWaves = await waveContract.getAllWaves();
	console.log(allWaves);
  };
  
  const runMain = async () => {
	try {
	  await main();
	  process.exit(0);
	} catch (error) {
	  console.log(error);
	  process.exit(1);
	}
  };
  
  runMain();