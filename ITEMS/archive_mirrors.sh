
cd  ~/__WORKSHOP/.DATA/

for sourcepack in *.gitlist
do
    echo "open gitlist $sourcepack file..."
    
    mkdir ~/__WORKSHOP/archive/$sourcepack
    
    cd ~/__WORKSHOP/archive/$sourcepack

    for repo in $(cat ~/__WORKSHOP/.DATA/$sourcepack )
    do
        echo "\t clone $repo to archive"

        git clone $repo 

        echo "\t clone is done!"  

    done

    cd  ~/__WORKSHOP/.DATA/

    echo "close gitlist $sourcepack !"

done

