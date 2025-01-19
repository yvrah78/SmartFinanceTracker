Documento de Flujo de la Aplicación para SmartFinanceTracker v1.1

Este documento detalla el flujo de interacción dentro de la aplicación SmartFinanceTracker, desde la perspectiva del usuario, ahora con una mayor concreción en la implementación técnica y la lógica de negocio.

Flujo de Usuario

1. Pantalla de Bienvenida

	•	Descripción: Al iniciar la aplicación, se presenta una animación de bienvenida que introduce al usuario en la experiencia de SmartFinanceTracker. Esta animación puede ser simple, mostrando el logo de la app con una transición suave, seguido de un mensaje de bienvenida.
	•	Acciones Disponibles:
	•	Botón de Carga de PDF: Un botón prominente en el centro de la pantalla con el texto “Cargar tu Estado de Cuenta”.
	•	Texto Instructivo: Debajo del botón, un breve texto que guía al usuario: “Para comenzar, simplemente sube tus estados de cuenta en PDF”.
	•	Implementación: El código SwiftUI para esta vista podría ser el siguiente:
struct WelcomeView: View {
    var body: some View {
        VStack {
            Image("AppLogo")
                .resizable()
                .frame(width: 150, height: 150)
                .padding(.top, 50)
            
            Text("Bienvenido a SmartFinanceTracker")
                .font(.title)
                .padding()
            
            Text("Para comenzar, simplemente sube tus estados de cuenta en PDF")
                .multilineTextAlignment(.center)
                .padding()
            
            Button(action: {
                // Acción para cargar el PDF, se implementará con UIDocumentPickerViewController
                print("Cargar PDF seleccionado")
            }) {
                Text("Cargar tu Estado de Cuenta")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
        }
    }
}


2. Carga de PDF

	•	Descripción: Al tocar el botón de “Cargar tu Estado de Cuenta”, la aplicación abre una interfaz para seleccionar y subir archivos PDF desde el dispositivo del usuario.
	•	Acciones Disponibles:
	•	Selector de Archivos: Permite al usuario navegar por su dispositivo y seleccionar uno o más archivos PDF.
	•	Feedback Visual: Durante la carga y procesamiento del PDF, se muestra un indicador de progreso, como una barra de progreso o un spinner.
	•	Confirmación: Una vez cargado, se muestra un mensaje de confirmación o se pasa automáticamente a la siguiente pantalla.
	•	Implementación: Para seleccionar un PDF, se usaría UIDocumentPickerViewController. Aquí un ejemplo de cómo integrarlo en SwiftUI:
import SwiftUI
import UIKit

struct DocumentPicker: UIViewControllerRepresentable {
    var callback: (URL) -> Void

    func makeUIViewController(context: Context) -> UIDocumentPickerViewController {
        let picker = UIDocumentPickerViewController(forOpeningContentTypes: [.pdf], asCopy: true)
        picker.delegate = context.coordinator
        return picker
    }

    func updateUIViewController(_ uiViewController: UIDocumentPickerViewController, context: Context) {}

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    class Coordinator: NSObject, UIDocumentPickerDelegate {
        var parent: DocumentPicker

        init(_ parent: DocumentPicker) {
            self.parent = parent
        }

        func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentsAt urls: [URL]) {
            guard let url = urls.first else { return }
            parent.callback(url)
        }
    }
}


3. Procesamiento de PDF

	•	Descripción: En esta fase, la aplicación extrae los datos de las transacciones del PDF. Este proceso se realiza en segundo plano.
	•	Acciones Disponibles:
	•	Feedback de Procesamiento: Un mensaje o indicador visual informa al usuario que la aplicación está procesando el PDF.
	•	Categorización: Los datos extraídos se envían a la API de Grok
