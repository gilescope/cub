# substrate
cd substrate
git stash -u
git checkout master
git branch --set-upstream-to=origin/master master
git pull
# git checkout polkadot-v0.9.16
# git reset --hard origin/polkadot-v0.9.16
git checkout polkadot-v0.9.16
git reset --hard origin/polkadot-v0.9.16
cd ..

# polkadot
cd polkadot
git stash -u
git checkout master
git branch --set-upstream-to=origin/master master
git pull
git checkout wk-version-bumps-to-0.9.16
git reset --hard origin/wk-version-bumps-to-0.9.16
#git cherry-pick adf3c59f71a52fe316b2fd6560e3aa3bbecc3196
diener patch --crates-to-patch ../substrate --substrate
cargo update -p sp-io
cd ..

# cumulus
cd cumulus
git stash -u
git checkout master
git branch --set-upstream-to=origin/master master
git pull
git reset --hard origin/master
diener patch --crates-to-patch ../substrate --substrate
diener patch --crates-to-patch ../polkadot --polkadot
cargo update -p sp-io -p polkadot-primitives
cd ..
#cp Cargo.lock L
#git checkout Cargo.lock
#git revert 9388723d8186b84907b5d73937f7a70398309ac2
#rm Cargo.lock
#cp L Cargo.lock

cd Acala
git stash -u
git checkout master
git branch --set-upstream-to=origin/master master
git pull
git reset --hard origin/master
diener patch --crates-to-patch ../substrate --substrate
diener patch --crates-to-patch ../polkadot --polkadot
diener patch --crates-to-patch ../cumulus --cumulus
cargo update -p sp-io -p polkadot-primitives -p cumulus-client-collator
cd ..