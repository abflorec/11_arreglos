#include <iostream>
#include <string>
using namespace std;
int main() {
    const int MAX = 100;
    int numf, numg;
    string fundamentos[MAX], grafica[MAX], comunes[MAX];
    int comunesc = 0;
    cout<<"Ingrese el numero de estudiantes en Fundamentos de Programacion: ";cin>>numf;
    cin.ignore();
    cout<<"Ingrese los nombres de los estudiantes en Fundamentos de Programacion:" << endl;
    for (int i=0; i<numf; ++i) {
        cout<<"Estudiante "<<i+1<<": ";
        getline(cin, fundamentos[i]);
    }
    cout<<"Ingrese el numero de estudiantes en Programacion Grafica: ";cin >> numg;
    cin.ignore();
    cout << "Ingrese los nombres de los estudiantes en Programacion Grafica:" << endl;
    for (int i=0; i<numg; ++i) {
        cout<<"Estudiante "<<i + 1<<": ";
        getline(cin, grafica[i]);
    }
    for (int i = 0; i < numf; ++i) {
        for (int j = 0; j < numg; ++j) {
            if (fundamentos[i] == grafica[j]) {
                comunes[comunesc++] = fundamentos[i];
            }
        }
    }
    cout<<"\nEstudiantes comunes en ambas asignaturas:"<<endl;
    if (comunesc > 0) {
        for (int i=0; i<comunesc;++i) {
            cout<<comunes[i]<<endl;
        }
        cout<<"Numero total de estudiantes comunes: "<<comunesc<<endl;
    } else {
        cout<<"No hay estudiantes comunes en ambas asignaturas."<<endl;
    }
    return 0;
}
