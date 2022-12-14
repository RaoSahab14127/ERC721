let provider = new ethers.providers.Web3Provider(window.ethereum);
let signer;
async function connectMetamask() {
  await provider.send("eth_requestAccounts", []);
  signer = await provider.getSigner();
  const address = await signer.getAddress();
  document.getElementById("adda").value = address;
}
