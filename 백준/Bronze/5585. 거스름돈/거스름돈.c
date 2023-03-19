#include <stdio.h>

int main(){
    int money = 0;
    int count = 0;
    int coin_type[] = {500,100,50,10,5,1};
    
    scanf("%d",&money);
    money = 1000 - money;
    for(int i =0; i<6;i++){
        for(int j=0; j<money/coin_type[i]; j++){
            count += 1;
        }
        money = money % coin_type[i];
    }
    printf("%d",count);
    return 0;
}