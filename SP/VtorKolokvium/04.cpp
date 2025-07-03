// Да се напише програма која што од датотека со име "text.txt" ќе ги одреди и ќе ги испечати на стандарден излез:

// релативната фреквенција на сите мали букви
// релативната фреквенција на сите големи букви
// Релативната фреквенција на даден(и) карактер(и) се пресметува како количник на вкупното појавување на тој/тие карактер/и со вкупниот број на карактери во текстот (да се игнорираат празните места и специјалните знаци).

#include <stdio.h>

void writeToFile() {
    FILE *f = fopen("text.txt", "w");
    char c;
    while((c = getchar()) != '#') {
        fputc(c, f);
    }
    fclose(f);
}

int main() {
    writeToFile();
    
    FILE * f = fopen("text.txt", "r");
    int vkupno=0;
    int mali=0;
    int golemi=0;
    char curr;
    while((curr=fgetc(f))!=EOF){
        if(isalpha(curr)){
            vkupno=vkupno+1;
            if(islower(curr)){
                mali=mali+1;
            } else {
                golemi=golemi+1;
            }
        }
    }
       
    
    printf("%.4f\n", golemi / (float)vkupno);
    printf("%.4f", mali / (float)vkupno);
    // vasiot kod ovde
}
