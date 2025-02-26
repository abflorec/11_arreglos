#include <iostream>
#include <string>

using namespace std;

const int MAX_COCHES = 100; // Definimos un tamaño máximo para el arreglo

struct Coche {
    string marca;
    int anio;
    double precio;
    bool alquilado; // true = alquilado, false = disponible
};

// Función para añadir un coche
void agregarCoche(Coche autos[], int &numAutos) {
    if (numAutos >= MAX_COCHES) {
        cout << "No se pueden añadir más coches. Capacidad máxima alcanzada.\n";
        return;
    }

    Coche nuevo;
    cout << "Ingrese la marca del coche: ";
    cin >> nuevo.marca;
    cout << "Ingrese el año del coche: ";
    cin >> nuevo.anio;
    cout << "Ingrese el precio del alquiler por día: ";
    cin >> nuevo.precio;
    nuevo.alquilado = false; // Al iniciar, el coche está disponible
    autos[numAutos] = nuevo;
    numAutos++;
    cout << "Coche añadido exitosamente.\n";
}

// Función para alquilar un coche
void alquilarCoche(Coche autos[], int numAutos) {
    bool hayDisponibles = false;

    cout << "Lista de coches disponibles:\n";
    for (int i = 0; i < numAutos; i++) {
        if (!autos[i].alquilado) {
            cout << i + 1 << ". " << autos[i].marca << " " << autos[i].anio << " - $" << autos[i].precio << "/día\n";
            hayDisponibles = true;
        }
    }

    if (!hayDisponibles) {
        cout << "No hay coches disponibles para alquilar.\n";
        return;
    }

    int opcion;
    cout << "Seleccione el número del coche que desea alquilar: ";
    cin >> opcion;

    if (opcion > 0 && opcion <= numAutos && !autos[opcion - 1].alquilado) {
        autos[opcion - 1].alquilado = true;
        cout << "El coche ha sido alquilado con éxito.\n";
    } else {
        cout << "Selección inválida o coche ya alquilado.\n";
    }
}

// Función para mostrar coches disponibles
void mostrarDisponibles(const Coche autos[], int numAutos) {
    bool hayDisponibles = false;

    cout << "Coches disponibles:\n";
    for (int i = 0; i < numAutos; i++) {
        if (!autos[i].alquilado) {
            cout << autos[i].marca << " " << autos[i].anio << " - $" << autos[i].precio << "/día\n";
            hayDisponibles = true;
        }
    }

    if (!hayDisponibles) {
        cout << "No hay coches disponibles.\n";
    }
}

// Función para mostrar el menú
void mostrarMenu() {
    cout << "\n--- Menú de Alquiler de Autos ---\n";
    cout << "1. Agregar coche\n";
    cout << "2. Alquilar coche\n";
    cout << "3. Mostrar coches disponibles\n";
    cout << "4. Salir\n";
    cout << "Seleccione una opción: ";
}

int main() {
    Coche autos[MAX_COCHES]; // Arreglo estático de coches
    int numAutos = 0; // Contador de coches añadidos
    int opcion;

    do {
        mostrarMenu();
        cin >> opcion;

        switch (opcion) {
            case 1:
                agregarCoche(autos, numAutos);
                break;
            case 2:
                alquilarCoche(autos, numAutos);
                break;
            case 3:
                mostrarDisponibles(autos, numAutos);
                break;
            case 4:
                cout << "Saliendo del programa...\n";
                break;
            default:
                cout << "Opción inválida, intente nuevamente.\n";
        }
    } while (opcion != 4);

    return 0;
}
