\d .qslTest

testCbnVars:{
    Ns:1+3?10;
    Ls:(-1)+Ns?\:2f;
    .qunit.assertEquals[
        var[raze Ls];
        .qsl.cbnVars . (count,avg,var) each\: Ls;
        "var of combined list equals combined var"
    ]
 }

testCbnDevs:{
    Ns:1+3?10;
    Ls:(-1)+Ns?\:2f;
    .qunit.assertEquals[
        dev[raze Ls];
        .qsl.cbnDevs . (count,avg,dev) each\: Ls;
        "dev of combined list equals combined dev"
    ]
 }
