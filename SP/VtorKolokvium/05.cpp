// Од датотека "input.txt" да се вчита квадратна матрица, така што прво ќе се прочита број n што означува колку редови и колони има матрица, а потоа да се вчитаат сите n x n елементи од матрицата.

// Во датотеката "output.txt" да се запише матрицата така што ќе се запишат само елементите над главната дијагонала, но ќе имаат вредност колку сумата на елементите на главната дијагонала. Печатењето да се прави со три места за бројот за елементите над главната дијагонала, а за останатите да се испечатат три празни места, со цел да се добие посакуваниот излез како во тест примерите.

#include <stdio.h>

void writeToFile() {
    FILE *f = fopen("input.txt", "w");
    char c;
    while((c = getchar()) != '#') {
        fputc(c, f);
    }
    fclose(f);
}

void printFile() {

    FILE *f=fopen("output.txt","r");
    char line[100];
    while(!feof(f)){
        fgets(line,100,f);
        if (feof(f))
            break;
        printf("%s",line);
    }
    fclose(f);
}

int main() {
    writeToFile();
    
    FILE *w=fopen("input.txt","r");
    FILE *q=fopen("output.txt","w");

    
    //Vasiot kod tuka
    int n, i, j;
    int matrica[100][100];
    int suma=0;
    
    fscanf(w, "%d", &n);
    
    for(i=0; i<n; i++){
        for(j=0; j<n; j++){
     fscanf(w, "%d", &matrica[i][j]);
        if(i==j){
            suma = suma + matrica[i][j];
        }
        }
    }
    
    
    for(i=0; i<n; i++){
        for(j=0; j<n; j++){
            if(j>i){
                fprintf(q, "%.3d", suma);
            } else {
                fprintf(q, "   ");
            }
              fprintf(q, " ");
        } fprintf(q, "\n");
    }

    
    
    fclose(w);
    fclose(q);

    printFile();
    return 0;
}