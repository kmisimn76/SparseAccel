for entry in `ls -d HW_300_*`; do
    echo $entry
    cd $entry
    pwd
    head -n 5 Makefile
    nohup make > makelog.log 2> makelog.err &
    cd ..
    echo ""
done
