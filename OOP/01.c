// Да се напише програма во која од стандарден влез се вчитува N (бројот на производи), а потоа се вчитуваат податоците за N производи (име, цена, количина). Програмата треба на стандарден излез да ја отпечати листата на купени производи и вкупната сума која треба да се плати во следниот облик (пример):

// 1. Flips    10.00 x 3 = 30.00
// 2. CocaCola 75.00 x 2 = 150.00
// 3. ChokoBanana  5.00 x 10 = 50.00
// Total: 230.00

#include <stdio.h>

typedef struct data {
    char ime[15];
    float cena;
    float kol;
} da;

int main()
{
    int n;
    float total = 0;
    da a[20];
    
    scanf("%d", &n);
    
    for(int i = 0; i<n; i++){
        scanf("%s %f %f", a[i].ime, &a[i].cena , &a[i].kol);
    }
    
    for(int i = 0; i<n; i++){
        printf("%d. %s\t%.2f x %.1f = %.2f \n",i+1,  a[i].ime, a[i].cena , a[i].kol, a[i].cena * a[i].kol);
        total = total + (a[i].cena * a[i].kol);
    }
    
    printf("Total: %.2f", total);
    
}