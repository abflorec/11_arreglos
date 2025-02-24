#include <iostream>//solucion con arreglos dinamicos
#include <cmath>
using namespace std;

void imprimirVector(int v[], int n) {
    for (int i = 0; i < n; ++i) {
        cout << v[i] << " ";
    }
    cout << endl;
}

int main() {
    cout << "ESTE PROGRAMA CALCULA LAS SIGUIENTES OPERACIONES:\n";
    cout << "1. Suma de los elementos de un vector \n";
    cout << "2. Producto de los elementos de un vector \n";
    cout << "3. Suma de los cuadrados de los elementos de un vector \n";
    cout << "4. Sumar dos arreglos que tengan la misma cantidad de elementos \n";
    cout << "5. Restar dos arreglos que tengan la misma cantidad de elementos \n";
    cout << "6. Buscar un elemento de un vector \n";
    cout << "7. Insertar un elemento en un vector \n";
    cout << "8. Eliminar un elemento de un vector \n";
    cout << "9. Multiplicar un escalar por un vector \n";
    cout << "10. Imprimir en orden inverso los elementos de un vector \n";
    cout << "11. Salir \n";

    int n;
    cout << "Ingrese la cantidad de elementos del vector: ";
    cin >> n;

    int* v = new int[n];
    cout << "Ingrese los elementos del vector: ";
    for (int i = 0; i < n; ++i) {
        cin >> v[i];
    }

    int opcion;
    do {
        cout << "Ingrese la opcion que desea realizar: ";
        cin >> opcion;

        switch (opcion) {
            case 1: {
                int suma = 0;
                for (int i = 0; i < n; ++i) {
                    suma += v[i];
                }
                cout << "La suma de los elementos del vector es: " << suma << endl;
                break;
            }
            case 2: {
                int producto = 1;
                for (int i = 0; i < n; ++i) {
                    producto *= v[i];
                }
                cout << "El producto de los elementos del vector es: " << producto << endl;
                break;
            }
            case 3: {
                int suma_cuadrados = 0;
                for (int i = 0; i < n; ++i) {
                    suma_cuadrados += pow(v[i], 2);
                }
                cout << "La suma de los cuadrados de los elementos del vector es: " << suma_cuadrados << endl;
                break;
            }
            case 4: {
                int* w = new int[n];
                cout << "Ingrese los elementos del segundo vector: ";
                for (int i = 0; i < n; ++i) {
                    cin >> w[i];
                }
                cout << "La suma de los dos vectores es: ";
                for (int i = 0; i < n; ++i) {
                    cout << v[i] + w[i] << " ";
                }
                cout << endl;
                delete[] w;
                break;
            }
            case 5: {
                int* z = new int[n];
                cout << "Ingrese los elementos del segundo vector: ";
                for (int i = 0; i < n; ++i) {
                    cin >> z[i];
                }
                cout << "La resta de los dos vectores es: ";
                for (int i = 0; i < n; ++i) {
                    cout << v[i] - z[i] << " ";
                }
                cout << endl;
                delete[] z;
                break;
            }
            case 6: {
                int elemento;
                cout << "Ingrese el elemento que desea buscar: ";
                cin >> elemento;
                bool encontrado = false;
                for (int i = 0; i < n; ++i) {
                    if (v[i] == elemento) {
                        cout << "El elemento " << elemento << " se encuentra en la posicion " << i << endl;
                        encontrado = true;
                        break;
                    }
                }
                if (!encontrado) {
                    cout << "El elemento no se encuentra en el vector." << endl;
                }
                break;
            }
            case 7: {
                int posicion, elemento_nuevo;
                cout << "Ingrese la posicion en la que desea insertar el elemento: ";
                cin >> posicion;
                cout << "Ingrese el elemento que desea insertar: ";
                cin >> elemento_nuevo;
                if (posicion < 0 || posicion > n) {
                    cout << "Posicion invalida." << endl;
                    break;
                }
                int* nuevo_v = new int[n + 1];
                for (int i = 0; i < posicion; ++i) {
                    nuevo_v[i] = v[i];
                }
                nuevo_v[posicion] = elemento_nuevo;
                for (int i = posicion; i < n; ++i) {
                    nuevo_v[i + 1] = v[i];
                }
                delete[] v;
                v = nuevo_v;
                n++;
                cout << "El vector con el elemento insertado es: ";
                imprimirVector(v, n);
                break;
            }
            case 8: {
                int posicion_eliminar;
                cout << "Ingrese la posicion del elemento que desea eliminar: ";
                cin >> posicion_eliminar;
                if (posicion_eliminar < 0 || posicion_eliminar >= n) {
                    cout << "Posicion invalida." << endl;
                    break;
                }
                for (int i = posicion_eliminar; i < n - 1; ++i) {
                    v[i] = v[i + 1];
                }
                n--;
                cout << "El vector con el elemento eliminado es: ";
                imprimirVector(v, n);
                break;
            }
            case 9: {
                int escalar;
                cout << "Ingrese el escalar por el que desea multiplicar el vector: ";
                cin >> escalar;
                cout << "El vector multiplicado por el escalar es: ";
                for (int i = 0; i < n; ++i) {
                    cout << v[i] * escalar << " ";
                }
                cout << endl;
                break;
            }
            case 10: {
                cout << "El vector en orden inverso es: ";
                for (int i = n - 1; i >= 0; --i) {
                    cout << v[i] << " ";
                }
                cout << endl;
                break;
            }
            case 11:
                break;
            default:
                cout << "Opcion invalida." << endl;
        }
    } while (opcion != 11);

    delete[] v;
    return 0;
}
