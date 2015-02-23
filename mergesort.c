// #include <stdio.h>

void merge(int *a, int low, int high, int mid){
    int i, j, k, c[50];
    i =low;
    k =low;
    j =mid+1;
    while(i<=mid && j<=high){
        if(a[i]<a[j]){
            c[k]=a[i];
            k++;
            i++;
        }else{
            c[k]=a[j];
            k++;
            j++;
        }
    }
    while(i<=mid){
        c[k]=a[i];
        k++;
        i++;

    }
    while(j<=high){
        c[k]=a[j];
        k++;
        j++;
    }
    for(i=low; i<k; i++){
        a[i]=c[i];
    }

}


void mergesort(int *a, int low, int high){
    int mid;
    if(low<high){
        mid = (low+high)/2;
        mergesort(a, low, mid);
        mergesort(a, mid+1, high);
        merge(a, low, high, mid);
    }
    return ;
}

int main(){
    int a[8];
    a[0]=9;
    a[1]=2;
    a[2]=4;
    a[3]=3;
    a[4]=10;
    a[5]=2;
    a[6]=4;
    a[7]=3;

    mergesort(a, 0, 8);
    // for(int i=0; i<8; i++){
    //     printf("%d ", a[i]);
    // }
    return 0;
}



