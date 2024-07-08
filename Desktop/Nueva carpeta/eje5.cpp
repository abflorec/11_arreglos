#include <iostream>
#include <string>
using namespace std;
const int MAX_CELDAS = 100;
int encontrarComunes(string clase1[],int tam1,string clase2[],int tam2,string comunes[]) {
    int k = 0;
    for(int i=0;i<tam1;++i){
        for(int j=0; j<tam2;++j){
            if(clase1[i]==clase2[j]){
                comunes[k]=clase1[i];k++;
                break;
            }
        }
    }
    return k;
}
int main() {
    int tam1,tam2;
    do{
        cout<<"Ingrese la cantidad de estudiantes en Fundamentos de Programacion (max "<<MAX_CELDAS<<"): ";cin>>tam1;
    }while (tam1<1||tam1>MAX_CELDAS);
    string fundamentos[MAX_CELDAS];
    cout<<"Ingrese los nombres de los estudiantes en Fundamentos de Programacion:\n";
    for(int i=0;i<tam1;++i) {
        cout<<"Estudiante " << i + 1 << ": ";
        cin>>fundamentos[i];
    }
    do{
        cout<<"Ingrese la cantidad de estudiantes en Programacion Grafica (max "<<MAX_CELDAS<<"): ";cin>>tam2;
    } while(tam2<1||tam2>MAX_CELDAS);
     string grafica[MAX_CELDAS];
    cout<<"Ingrese los nombres de los estudiantes en Programación Grafica:\n";
    for(inti=0;i<tam2;++i) {
        cout<<"Estudiante "<<i+1<< ": ";cin>>grafica[i];
    }
    string comunes[MAX_CELDAS];
    int numComunes=encontrarComunes(fundamentos,tam1,grafica,tam2,comunes);
    if(numComunes>0) {
        cout<<"\nEstudiantes comunes en ambas asignaturas:\n";
        for(int i=0;i<numComunes;++i) {
            cout<<comunes[i]<<endl;
        }
        cout<<"Numero de estudiantes comunes: "<<numComunes<<endl;
    }else{
        cout<<"\nNo hay estudiantes comunes en ambas asignaturas."<<endl;
    }
    return 0;
}
