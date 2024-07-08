#include <iostream>
using namespace std;
int main(){
    int n;
    cout<<"Ingrese la cantidad de elementos: ";
    cin>>n;
    int arreglo[n];
    int pares[n], impares[n];
    int npares=0, nimpares=0;
    cout << "Ingrese los elementos del arreglo:\n";
    for (int i=0;i<n; ++i) {
        cin>>arreglo[i];
    }
    for(int i=0;i<n; ++i) {
        if (arreglo[i] % 2==0) {
            pares[npares]=arreglo[i];
            npares++;
        } else {
            impares[nimpares] = arreglo[i];
            nimpares++;
        }
    }
    cout<<"Arreglo de elementos pares:\n";
    for(int i = 0; i<npares; ++i) {
        cout<<pares[i]<< " ";
    }
    cout<<endl;
    cout<<"Arreglo de elementos impares:\n";
    for(int i=0;i<nimpares;++i) {
        cout<<impares[i] << " ";
    }
    cout<<endl;
    return 0;
}
