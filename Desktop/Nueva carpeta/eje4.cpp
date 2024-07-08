#include <iostream>
#include <string>
using namespace std;
int main() {
    const int MAX = 100;
    int numFundamentos, numGrafica;
    string fundamentos[MAX], grafica[MAX], comunes[MAX];
    int comunesCount = 0;
    cout<<"Ingrese el número de estudiantes en Fundamentos de Programación: ";cin>>numFundamentos;
    cin.ignore();
    cout<<"Ingrese los nombres de los estudiantes en Fundamentos de Programación:" << endl;
    for (int i=0; i<numFundamentos; ++i) {
        cout<< "Estudiante "<<i + 1<<": ";
        getline(cin, fundamentos[i]);
    }
    cout<<"Ingrese el número de estudiantes en Programación Gráfica: ";cin >> numGrafica;
    cin.ignore();
    cout << "Ingrese los nombres de los estudiantes en Programación Gráfica:" << endl;
    for (int i = 0; i < numGrafica; ++i) {
        cout << "Estudiante " << i + 1 << ": ";
        getline(cin, grafica[i]);
    }
    for (int i = 0; i < numFundamentos; ++i) {
        for (int j = 0; j < numGrafica; ++j) {
            if (fundamentos[i] == grafica[j]) {
                comunes[comunesCount++] = fundamentos[i];
            }
        }
    }
    cout<<"\nEstudiantes comunes en ambas asignaturas:"<<endl;
    if (comunesCount > 0) {
        for (int i=0; i<comunesCount;++i) {
            cout<<comunes[i]<<endl;
        }
        cout<<"Número total de estudiantes comunes: "<<comunesCount<<endl;
    } else {
        cout<<"No hay estudiantes comunes en ambas asignaturas."<<endl;
    }
    return 0;
}
