
GITUSER=$USER
COMPONENT=$1

echo $GITUSER
echo $COMPONENT

pwd

gh repo create bos.$COMPONENT --include-all-branches --public --template=$GITUSER/bos_component_template

#git submodule add https://github.com/$GITUSER/bos.$COMPONENT.git src/components/$COMPONENT

#gh project link 20 --owner $GITUSER --repo bos.$COMPONENT 

#git clone https://github.com/$GITUSER/bos.$COMPONENT.git ../bos.$COMPONENT