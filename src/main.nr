use dep::std::field::bn254::assert_lt;

mod SinType {
    global LustforEndlessCryptocurrencies: Field = 0;
    global GluttonyofSmartContracts: Field = 1;
    global GreedforGasFees: Field = 2; 
    global SlothinBlockchainSyncing: Field = 3;
    global WrathAgainstForks: Field = 4;
    global EnvyofEthereumSuccess: Field = 5;
    global PrideinDecentralization: Field = 6;
}

fn main(sins: [Field; 7]) {
    let mut total = 0;
    // Corresponding weights for each sin
    let weights = [5, 1, 10000, 2, 1, 1, 1];

    // Check for the 'Greed for Gas Fees' sin
    assert(sins[2] == 0);

    for i in 0..sins.len() {
        total += sins[i] * weights[i];
    }

    assert_lt(total, 12);
}
