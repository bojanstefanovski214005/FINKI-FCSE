// Во дадена датотека “broevi.txt” се запишани повеќе редови со броеви така што секој ред започнува со еден цел број (N>=1) што означува колку броеви следуваат по него во тој ред. Да се напише програма која на СИ за секој ред ќе го испечати бројот со најголема најзначајна цифра. Читањето на броеви завршува кога ќе се прочита 0.

#include <stdio.h>
#include <string.h>
#define MAX 100

//ne menuvaj!
void wtf() {
    FILE *f = fopen("broevi.txt", "w");
    char c;
    while((c = getchar()) != EOF) {
        fputc(c, f);
    }
    fclose(f);
}

int main()
{
    wtf();
    
    // vashiot kod ovde
    
    FILE * f = fopen("broevi.txt", "r");
    char linija[100];
    int broj, cifra = 0;
    int maxbroj = 0;
    int maxcifra = 0;
    
    int n = -1;
    while(n!=0){
        fscanf(f, "%d", &n);
        int broj, cifra = 0;
    int maxbroj = 0;
    int maxcifra = 0;
        for(int i=0; i<n; i++){
            fscanf(f, "%d", &broj);
            cifra = broj;
            while(cifra/10 != 0){
                cifra = cifra / 10;
            }
            if(cifra>maxcifra){
                maxcifra = cifra;
                maxbroj = broj;
            }
        }
        if(maxbroj != 0)
        printf("%d\n", maxbroj);
    }
        

    

	
}