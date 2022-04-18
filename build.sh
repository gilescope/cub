
cd ./polkadot && cargo build --release --features fast-runtime &
cd ./cumulus && cargo build --release &
cd ./community-parachain/parachain-template && cargo build --release
