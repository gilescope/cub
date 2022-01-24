git clone https://github.com/paritytech/substrate.git & \
git clone https://github.com/paritytech/polkadot.git & \
git clone https://github.com/paritytech/cumulus.git & \
git clone https://github.com/AcalaNetwork/Acala.git & \
git clone https://github.com/paritytech/polkadot-launch.git
cd substrate
git remote remove origin && git remote add origin git@github.com:paritytech/substrate.git
cd ..
cd polkadot
git remote remove origin && git remote add origin git@github.com:paritytech/polkadot.git
cd ..
cd cumulus
git remote remove origin && git remote add origin git@github.com:paritytech/cumulus.git
cd ..
cd Acala
git submodule update --init --recursive
cd ..
