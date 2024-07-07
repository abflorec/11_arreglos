#include <iostream>
#include <string>
using namespace std;
int main() {
    const int DAYS = 7;
    string dayNames[DAYS] = {"Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado", "Domingo"};
    float tempMin[DAYS], tempMax[DAYS], tempMedia[DAYS];
    float minTemp = FLT_MAX;
    int minTempDayIndex = -1;
    for (int i = 0; i < DAYS; ++i) {
        cout<<"Ingrese la temperatura mínima para "<<dayNames[i]<<": ";
        cin>>tempMin[i];
        cout<<"Ingrese la temperatura máxima para "<<dayNames[i] << ": ";
        cin>>tempMax[i];
        tempMedia[i]=(tempMin[i]+tempMax[i])/2;
        if (tempMin[i]<minTemp){
            minTemp=tempMin[i];
            minTempDayIndex=i;
        }
    }
    cout << "\nTemperaturas medias de cada día:" << endl;
    for (int i = 0; i < DAYS; ++i) {
        cout << dayNames[i] << ": " << tempMedia[i] << "°C" << endl;
    }
    cout << "\nEl día con la menor temperatura mínima es " << dayNames[minTempDayIndex] << " con " << minTemp << "°C." << endl;
    float searchTemp;
    cout << "\nIngrese una temperatura máxima para buscar los días que coinciden: ";
    cin >> searchTemp;
    bool found = false;
    cout << "Días con temperatura máxima de " << searchTemp << "°C:" << endl;
    for (int i = 0; i < DAYS; ++i) {
        if (tempMax[i] == searchTemp) {
            cout << dayNames[i] << endl;
            found = true;
        }
    }
    if (!found) {
        cout << "No hay ningún día con esa temperatura máxima." << endl;
    }

    return 0;
}
