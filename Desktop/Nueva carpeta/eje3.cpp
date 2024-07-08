#include <iostream>
#include <string>
using namespace std;
int main() {
    const int dias = 7;
    string dayNames[dias] = {"Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado", "Domingo"};
    float tempmin[dias], tempmax[dias], tempmedia[dias];
    float mintemp = FLT_MAX;
    int mintempdiaIndex = -1;
    for(int i = 0; i<dia; ++i) {
        cout<<"Ingrese la temperatura minima para "<<diaNames[i]<<": ";cin>>tempmin[i];
        cout<<"Ingrese la temperatura maxima para "<<diaNames[i] << ": ";cin>>tempmax[i];
        tempmedia[i]=(tempmin[i]+tempmax[i])/2;
        if(tempmin[i]<mintemp){
            mintemp=tempmin[i];
            mintempdiaIndex=i;
        }
    }
    cout<<"\nTemperaturas medias de cada dia:"<<endl;
    for (int i=0; i<dia; ++i) {
        cout<<dianames[i]<<": "<<tempmedia[i]<<"°C"<<endl;
    }
    cout<<"\nEl dia con la menor temperatura minima es "<<dianames[mintempdiaIndex] <<" con "<<mintemp<<"°C."<<endl;
    float buscartemp;
    cout<<"\nIngrese una temperatura maxima para buscar los días que coinciden: ";cin>>buscartemp;
    bool found=false;
    cout<<"Dias con temperatura máxima de "<<buscartemp<<"°C:"<<endl;
    for (int i=0; i<dia; ++i) {
        if (m[i] ==buscartemp) {
            cout <<dianames[i] << endl;
            found = true;
        }
    }
    if (!found) {
        cout<<"No hay ningun dia con esa temperatura maxima."<<endl;
    }

    return 0;
}
