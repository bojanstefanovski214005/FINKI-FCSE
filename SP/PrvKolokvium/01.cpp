// Благ број е број што е составен само од парни цифри (0, 2, 4, 6, 8). Во зададен опсег (почетокот m и крајот на опегот n се цели броеви чија вредност се внесува од тастатура), да се најде и испечати најмалиот „благ број“. Ако не постои таков број, да се испечати NE.

#include <stdio.h>
#include <stdlib.h>
 
int main()
{
    int m, n, i=0, tempI=0, last=0, flag;
    scanf("%d %d", &m, &n);
 
    for(i=m; i<=n; i++){
        tempI=i;
        while(tempI){
            last=tempI%10;
            if(last%2==0){
                flag=1;
            }
            else{
                flag=0;
                break;
            }
            tempI=tempI/10;
        }
    if(flag){
        printf("%d", i);
        break;
    }
    }
    if(flag==0){
        printf("NE");
    }
 
 
    return 0;
}