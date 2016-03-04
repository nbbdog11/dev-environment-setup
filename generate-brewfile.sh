#! /bin/bash
rm Brewfile
leaves=`brew leaves`
read -a brewarr <<<$leaves
for brewleaf in "${brewarr[@]}"
do
    echo "brew '$brewleaf'" >> Brewfile
done
caskleaves=`brew cask list`
read -a caskarr <<<$caskleaves
for caskleaf in "${caskarr[@]}"
do
    echo "cask '$caskleaf'" >> Brewfile
done
