Documento de Pila Tecnológica para SmartFinanceTracker v1.1

Este documento detalla las tecnologías, frameworks, bibliotecas, y herramientas que se utilizarán para desarrollar SmartFinanceTracker, con un enfoque en cómo se integran y su grado de implementación.

Lenguaje/Entorno

	•	Swift: Lenguaje de programación principal para el desarrollo de la aplicación. Swift es conocido por su seguridad, velocidad, y su integración perfecta con las APIs de Apple.
	•	SwiftUI: Framework de Apple para la construcción de interfaces de usuario declarativas y reactivas. Usaremos SwiftUI para crear una UI moderna y consistente con las directrices de diseño de Apple, facilitando la implementación de la lógica de negocio en la vista.
struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                // Aquí iría la lógica para mostrar las transacciones
            }
            .navigationTitle("Transacciones")
        }
    }
}


API

	•	API de Grok 2 (xAI): Se integrará para la categorización automática de transacciones. La API recibe datos en formato JSON y devuelve las transacciones categorizadas.
	•	Autenticación: Se implementará autenticación básica para la API, con la clave API almacenada de manera segura en el Keychain de iOS, permitiendo una comunicación segura.
func obtenerClaveDelKeychain() -> String {
    // Pseudocódigo para obtener la clave API del Keychain
}


Almacenamiento

	•	Core Data: Utilizaremos Core Data para el almacenamiento local de datos de transacciones, permitiendo una gestión eficiente de los datos y sincronización a través de iCloud.
	•	Sincronización: La sincronización con iCloud permite que los datos estén disponibles en múltiples dispositivos Apple del usuario, asegurando consistencia y respaldo.
@Environment(\.managedObjectContext) private var viewContext

@FetchRequest(
    sortDescriptors: [NSSortDescriptor(keyPath: \Transaction.date, ascending: true)],
    animation: .default)
private var transactions: FetchedResults<Transaction>


Herramientas de Diseño

	•	V0: Se usará para el diseño inicial de la interfaz de usuario, creando wireframes y mockups que guiarán el desarrollo visual de la aplicación, asegurando que la UI está bien pensada antes de la implementación.

Herramientas de Desarrollo

	•	Xcode: Entorno de desarrollo integrado (IDE) oficial de Apple, necesario para el desarrollo en Swift/SwiftUI. Incluye el simulador de iOS para pruebas.
	•	Git: Sistema de control de versiones para el seguimiento de cambios en el código y la colaboración. Utilizaremos GitHub para alojar el repositorio.
	•	GitHub: Plataforma para el control de versiones y la colaboración en el desarrollo del proyecto. Aquí se alojará el código y la documentación.
	•	Simulator: Simulador de iOS incluido en Xcode para probar la aplicación en diferentes dispositivos y versiones de iOS sin necesidad de hardware físico.

