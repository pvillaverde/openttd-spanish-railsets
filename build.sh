#nmlc -c --grf release/galician-town-names.grf galician-town-names.nml
pandoc --from markdown --to plain -o dist/changelog.txt CHANGELOG.md
pandoc --from markdown --to plain -o dist/readme.txt README.md
cp -a LICENSE dist/license.txt
make
#tar -cf release/galician-town-names.tar --directory=release changelog.txt readme.txt license.txt galician-town-names.grf