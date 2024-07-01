#include <iostream>
#include <vector>
using namespace std;
int main() {
    int n;
    cout << "Ingrese la cantidad de numeros que desea almacenar: ";cin>>n;
    vector<int> numeros(n);
    int r = 0;
    int contadorCeros = 0;
    for (int i = 0; i < n; ++i) {
        cout<<"Ingrese el numero "<<i + 1<<": ";
        cin>> numeros[i];
        r += numeros[i];
        if (numeros[i] == 0) {
            contadorCeros++;
        }
    }
    double porcentajeCeros = (static_cast<double>(contadorCeros) / n) * 100;
    cout<<"La sumatoria de los numeros ingresados es: "<<r<<endl;
    cout<<"El porcentaje de ceros ingresados es: "<<porcentajeCeros<<"%"<<endl;
    return 0;
}
