# Documento de Pila Tecnológica para SmartFinanceTracker v1.1

Este documento detalla las tecnologías, frameworks, bibliotecas, y herramientas que se utilizarán para desarrollar SmartFinanceTracker, con un enfoque en cómo se integran y su grado de implementación.

## Estado Actual

- [x] **Estructura del Proyecto:** Revisión completada.
- [ ] **Responsabilidades Claras:** Pendiente de implementación.
- [ ] **Manejo de Core Data:** Pendiente de configuración.
- [ ] **Integración con APIs:** Pendiente de desarrollo.
- [ ] **SwiftUI y Accesibilidad:** Pendiente de diseño.
- [ ] **Testing:** Pendiente de inicio.
- [ ] **Flujo de Usuario:** Pendiente de revisión.

## Lenguaje/Entorno

- **Swift:** Lenguaje de programación principal para el desarrollo de la aplicación. Swift es conocido por su seguridad, velocidad, y su integración perfecta con las APIs de Apple.
- **SwiftUI:** Framework de Apple para la construcción de interfaces de usuario declarativas y reactivas. Usaremos SwiftUI para crear una UI moderna y consistente con las directrices de diseño de Apple, facilitando la implementación de la lógica de negocio en la vista.

```swift
struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                // Aquí iría la lógica para mostrar las transacciones
            }
            .navigationTitle(“Transacciones”)
        }
    }
}

Próximos Pasos: Con el entorno de desarrollo establecido, avanza a Responsabilidades Claras.

API

	•	API de Grok 2 (xAI): Se integrará para la categorización automática de transacciones. La API recibe datos en formato JSON y devuelve las transacciones categorizadas.
	•	Autenticación: Se implementará autenticación básica para la API, con la clave API almacenada de manera segura en el Keychain de iOS, permitiendo una comunicación segura.

func obtenerClaveDelKeychain() -> String {
    // Pseudocódigo para obtener la clave API del Keychain
}

Próximos Pasos: Una vez entendido cómo interactuaremos con la API, sigue con Manejo de Core Data.

Almacenamiento

	•	Core Data: Utilizaremos Core Data para el almacenamiento local de datos de transacciones, permitiendo una gestión eficiente de los datos y sincronización a través de iCloud.
	•	Sincronización: La sincronización con iCloud permite que los datos estén disponibles en múltiples dispositivos Apple del usuario, asegurando consistencia y respaldo.

@Environment(\.managedObjectContext) private var viewContext

@FetchRequest(
    sortDescriptors: [NSSortDescriptor(keyPath: \Transaction.date, ascending: true)],
    animation: .default
) private var transactions: FetchedResults<Transaction>

Próximos Pasos: Tras configurar Core Data, continúa con Integración con APIs.

Herramientas de Diseño

	•	V0: Se usará para el diseño inicial de la interfaz de usuario, creando wireframes y mockups que guiarán el desarrollo visual de la aplicación, asegurando que la UI está bien pensada antes de la implementación.

Próximos Pasos: Con los diseños iniciales listos, dirígete a SwiftUI y Accesibilidad.

Herramientas de Desarrollo

	•	Xcode: Entorno de desarrollo integrado (IDE) oficial de Apple, necesario para el desarrollo en Swift/SwiftUI. Incluye el simulador de iOS para pruebas.
	•	Git: Sistema de control de versiones para el seguimiento de cambios en el código y la colaboración. Utilizaremos GitHub para alojar el repositorio.
	•	GitHub: Plataforma para el control de versiones y la colaboración en el desarrollo del proyecto. Aquí se alojará el código y la documentación.

Próximos Pasos: Una vez configuradas las herramientas de desarrollo, procede a Responsabilidades Claras.


El siguiente documento que necesitas proporcionarme para su revisión y modificación es el `BackendStructureDoc_v2.0.md`.
