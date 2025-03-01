while (<STDIN>) {

    print $1,"\n" if /(>scaffold\d+)\|size\d+\s/;
    print if /^[ATGC]+$/;

    
#    if ( /(>scaffold\d+)\|size\d+/ ) {
#        print $1, "\n";
#    } else {
#        print;
#    }
    
}

# cat panos.fa | sed 's/|.*//'
