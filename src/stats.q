/ statistics

\d .qsl

/ combine variances
/ @param n list of original lists lenghts
/ @param m list of original lists means
/ @param v list of original lists variances
/ @return V variance of the combined original lists 
cbnVars:{[n;m;v] n wavg v + {x*x}m-wavg[n;m]};

/ combine standard deviations
/ @param n list of original lists lenghts
/ @param m list of original lists means
/ @param d list of original lists standard deviations
/ @return D standard deviation of the combined original lists
cbnDevs:{[n;m;d] sqrt cbnVars[n;m;d*d]};

