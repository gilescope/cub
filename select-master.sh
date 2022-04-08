# substrate
cd substrate
git stash -u
git checkout master
git pull
cd ..

# polkadot
cd polkadot
git stash -u
git checkout master
git pull
#add in sudo pallet:
git cherry-pick 755a4b69c94ba75618080c76d25133b11c1d58db
diener patch --crates-to-patch ../substrate --substrate
cargo update -p sp-io
cd ..

# cumulus
cd cumulus
git stash -u
git checkout master
git pull

diener patch --crates-to-patch ../substrate --substrate
diener patch --crates-to-patch ../polkadot --polkadot
cargo update -p sp-io -p polkadot-primitives
cd ..

cd comunity-parachain
git checkout polkadot-v0.9.18-community-parachain
cd ..


#cp Cargo.lock L
#git checkout Cargo.lock
#git revert 9388723d8186b84907b5d73937f7a70398309ac2
#rm Cargo.lock
#cp L Cargo.lock

#cd Acala
#git stash -u
#git checkout master
#git branch --set-upstream-to=origin/master master
#git pull
#git reset --hard origin/master
#diener patch --crates-to-patch ../substrate --substrate
#diener patch --crates-to-patch ../polkadot --polkadot
#diener patch --crates-to-patch ../cumulus --cumulus
#cargo update -p sp-io -p polkadot-primitives -p cumulus-client-collator
#cd ..
