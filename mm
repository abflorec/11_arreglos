#include <iostream>
#include <string>
using namespace std;
const int maxcoches = 100; // Definimos un tamaño máximo para el arreglo
struct Coche
{
    string marca;
    int anio;
    double precio;
    bool alquilado; // true = alquilado, false = disponible
};
void agregarCoche(Coche autos[], int &numautos)
{ // funcion para añadir coche
    if (numautos >= maxcoches)
    {
        cout << "No se pueden agregar mas coches,capacidad maxima alcanzada.\n";
        return;
    }
    Coche nuevo;
    cout << "Ingrese la marca del coche: ";
    cin >> nuevo.marca;
    cout << "Ingrese el anio del coche: ";
    cin >> nuevo.anio;
    cout << "Ingrese el precio del alquiler por dia: ";
    cin >> nuevo.precio;
    nuevo.alquilado = false; // Al iniciar, el coche está disponible
    autos[numautos] = nuevo;
    numautos++;
    cout << "Coche agregado exitosamente.\n";
}
void alquilarcoche(Coche autos[], int numautos)
{                                // funcion para alquilar coche
    bool hayDisponibles = false; // true disponible
    cout << "Lista de coches disponibles:\n";
    for (int i = 0; i < numautos; i++)
    {
        if (!autos[i].alquilado)
        {
            cout << i + 1 << ". " << autos[i].marca << " " << autos[i].anio << " - $" << autos[i].precio << "/día\n";
            hayDisponibles = true;
        }
    }
    if (!hayDisponibles)
    {
        cout << "No hay coches disponibles para alquilar.\n";
        return;
    }
    int opcion;
    cout << "Seleccione el numero del coche que desea alquilar: ";
    cin >> opcion;
    if (opcion > 0 && opcion <= numautos && !autos[opcion - 1].alquilado)
    {
        autos[opcion - 1].alquilado = true;
        cout << "El coche ha sido alquilado satisfactoriamente\n";
    }
    else
    {
        cout << "Seleccion invalida o coche ya alquilado.\n";
    }
}
// Funcion para mostrar coches disponibles
void mostrardisponibles(const Coche autos[], int numAutos)
{
    bool hayDisponibles = false;
    cout << "Coches disponibles:\n";
    for (int i = 0; i < numAutos; i++)
    {
        if (!autos[i].alquilado)
        {
            cout << autos[i].marca << " " << autos[i].anio << " - $" << autos[i].precio << "/día\n";
            hayDisponibles = true;
        }
    }
    if (!hayDisponibles)
    {
        cout << "No hay coches disponibles.\n";
    }
}

// Funcion para mostrar el menú
void mostrarMenu()
{
    cout << "\n--- Menu de Alquiler de Autos ---\n";
    cout << "1. Agregar coche\n";
    cout << "2. Alquilar coche\n";
    cout << "3. Mostrar coches disponibles\n";
    cout << "4. Salir\n";
    cout << "Seleccione una opcion: ";
}

int main()
{
    Coche autos[maxcoches]; // este es un arreglo estático de coches
    int numAutos = 0;       // es un contador de coches añadidos
    int opcion;
    do
    {
        mostrarMenu();
        cin >> opcion;
        switch (opcion)
        {
        case 1:
            agregarCoche(autos, numAutos);
            break;
        case 2:
            alquilarcoche(autos, numAutos);
            break;
        case 3:
            mostrardisponibles(autos, numAutos);
            break;
        case 4:
            cout << "Saliendo del programa\n";
            break;
        default:
            cout << "Opcion invalida, intentelo otra vez.\n";
        }
    } while (opcion != 4); // permite usar varias veces el menu de alquiler de autos
    return 0;
}

