#include <iostream>
using namespace std;

int main() {
    int n;
    cout << "Ingrese la cantidad de elementos: ";
    cin >> n;
    int arreglo[n];
    int pares[n], impares[n];
    int numPares = 0, numImpares = 0;
    cout << "Ingrese los elementos del arreglo:\n";
    for (int i = 0; i < n; ++i) {
        cin >> arreglo[i];
    }
    for (int i = 0; i < n; ++i) {
        if (arreglo[i] % 2 == 0) {
            pares[numPares] = arreglo[i];
            numPares++;
        } else {
            impares[numImpares] = arreglo[i];
            numImpares++;
        }
    }
    cout << "Arreglo de elementos pares:\n";
    for (int i = 0; i < numPares; ++i) {
        cout << pares[i] << " ";
    }
    cout << endl;
    cout << "Arreglo de elementos impares:\n";
    for (int i = 0; i < numImpares; ++i) {
        cout << impares[i] << " ";
    }
    cout << endl;

    return 0;
}
