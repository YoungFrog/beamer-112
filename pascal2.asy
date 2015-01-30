// Deux boucles imbriquées
// Triangle de Pascal des (k parmi n)

size(200);
int nmax=7;
for(int n=0; n<=nmax; ++n)
    for(int k=0; k<=n; ++k) 
        label(string(choose(n,k)),(k-n/2,-n));

// shipout(bbox(10,Fill(white)));
