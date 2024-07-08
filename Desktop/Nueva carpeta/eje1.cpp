#include <iostream>
#include <vector>
using namespace std;
int main() {
    int n;
    cout<<"Ingrese la cantidad de numeros que desea almacenar: ";cin>>n;
    vector<int> numeros(n);
    int r=0;
    int contadorCeros=0;
    for (int i=0; i<n;++i) {
        cout<<"Ingrese el numero "<<i + 1<<": ";
        cin>>num[i];
        r +=num[i];
        if (num[i] == 0) {
            ceros++;
        }
    }
    double pceros=(static_cast<double>(ceros)/n)*100;
    cout<<"La sumatoria de los numeros ingresados es: "<<r<<endl;
    cout<<"El porcentaje de ceros ingresados es: "<<pceros<<"%"<<endl;
    return 0;
}
