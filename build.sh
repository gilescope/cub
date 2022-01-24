cd ~/git/sm8/substrate && CARGO_TARGET_DIR=~/git/sm8/cumulus/target cargo build --release
cd ~/git/sm8/polkadot && CARGO_TARGET_DIR=~/git/sm8/cumulus/target cargo build --release --features fast-runtime
cd ~/git/sm8/cumulus && cargo build --release
