#!/usr/bin/perl

%a = (
    10=>0,
    9 =>4,
    8 =>0,
#-----------------------
    7 =>0,
    6 =>0,
    5 =>0,
    4 =>0,
    3 =>0,
    2 =>0,
#-----------------------
    1 =>3,
);
for ($count=000000;$count<999999;$count++) {
    $count1 = sprintf("%06s",$count) ;
    $a{7} = substr $count1,0,1;
    $a{6} = substr $count1,1,1;
    $a{5} = substr $count1,2,1;
    $a{4} = substr $count1,3,1;
    $a{3} = substr $count1,4,1;
    $a{2} = substr $count1,5,1;


    $sum=0;
    for ($i=10;$i>1;$i--){
            $sum += ($a{$i} * $i);
    }

    $mod = $sum % 11; 
    $div11 = int($sum /= 11);
    if ($mod<2){
        $r = $mod;
    }elsif($mod >= 2){
        $r =  (11-$mod) ;
    }

    if ($r==$a{1}){
        for ($index=10;$index>=1;$index--){
                print $a{$index};
        }
        print "\n";
        #last;
    }
} 
