// Од стандарден влез се внесуваат два цели броја N и Х.

// Да се најде најблискот број помал од N коj е тотално различен од бројот Х.

// Еден број е тотално различен од друг ако и само ако во него не се појавува ниту една од цифрите на другиот број.

// Задачата да се реши без употреба на низи и матрици.

#include <stdio.h>
int main (){
    int n,x,pomx,pomn,cn,cx,temp=1,i;
    scanf("%d %d",&n,&x);
    --n;
    for(i=n;i>=0;--i){
 
        pomn=i;
        while(pomn>0){
            pomx=x;
            cn=pomn%10;
            while(pomx>0){
                cx=pomx%10;
                if(cn==cx){
                    temp=0;
                    break;
                }
                pomx/=10;
            }
            if(temp==0)
                break;
            pomn/=10;
        }
        if(temp){
            printf("%d",i);
            break;
        }       
       temp=1;
    }
    return 0;
}