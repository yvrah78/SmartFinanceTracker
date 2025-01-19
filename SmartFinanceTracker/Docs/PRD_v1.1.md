Product Requirements Document (PRD) para SmartFinanceTracker v1.1

Este documento detalla los requisitos del producto para SmartFinanceTracker, una aplicación nativa para dispositivos Apple diseñada para facilitar la gestión financiera personal a través de la categorización automática de transacciones.

Descripción del Proyecto

SmartFinanceTracker es una aplicación que permite a los usuarios cargar sus estados de cuenta bancarios en formato PDF, extraer y categorizar automáticamente las transacciones financieras utilizando una API avanzada, facilitando así la preparación de impuestos y proporcionando análisis detallados para una mejor comprensión de los hábitos de gasto.

Objetivos

	•	Facilitar la gestión de finanzas personales mediante la automatización de la categorización de transacciones.
	•	Proveer herramientas analíticas para entender mejor los patrones de gasto.
	•	Mejorar la eficiencia en la preparación de impuestos al categorizar automáticamente las transacciones.

Requisitos Funcionales

	•	Carga de PDFs: Debe permitir la selección de múltiples archivos PDF, validar su formato y extraer datos relevantes.
	•	Implementación: Utilizando UIDocumentPickerViewController para la selección y PDFKit para la extracción de datos.
func loadPDF() {
    // Pseudocódigo para cargar y validar PDFs
    let documentPicker = UIDocumentPickerViewController(forOpeningContentTypes: [.pdf], asCopy: true)
    documentPicker.delegate = self
    // Presentar el picker
}

	•	Procesamiento de Transacciones: La app debe procesar los PDFs para extraer datos de transacciones y enviarlos a la API de Grok 2 para su categorización. Incluir lógica para manejar errores de procesamiento.
	•	Implementación: Extracción de datos con PDFKit y comunicación con la API de Grok 2.
func processTransactions(from pdfURLs: [URL]) {
    // Pseudocódigo para procesar múltiples PDFs y enviar a la API
    for url in pdfURLs {
        let transactions = extractTransactions(from: url)
        categorizeTransactions(transactions: transactions)
    }
}

	•	Visualización de Transacciones: Mostrar una lista de transacciones con la posibilidad de editar categorías.
	•	Implementación: Con SwiftUI, utilizando List para mostrar las transacciones y un menú contextual para la edición de categorías.
struct TransactionListView: View {
    @FetchRequest(entity: Transaction.entity(), sortDescriptors: [NSSortDescriptor(keyPath: \Transaction.date, ascending: false)]) var transactions: FetchedResults<Transaction>
    
    var body: some View {
        List(transactions, id: \.self) { transaction in
            TransactionRow(transaction: transaction)
        }
    }
}

	•	Análisis Financiero: Gráficos interactivos para análisis de gastos por categoría y periodo.
	•	Implementación: Utilizando la biblioteca Charts para visualizar datos en SwiftUI.
struct AnalysisView: View {
    var body: some View {
        Chart {
            // Pseudocódigo para generar gráficos basados en los datos de transacciones
        }
    }
}

	•	Exportación de Datos: Capacidad de exportar datos a Excel para análisis detallado o preparación de impuestos.
	•	Implementación: Se necesitará una lógica para convertir datos de Core Data a un formato compatible con Excel (CSV o similar).
func exportToExcel() {
    // Pseudocódigo para exportar datos a un formato compatible con Excel
}

	•	Seguridad: Implementar autenticación segura para la API y cifrado de datos sensibles en almacenamiento local.
	•	Implementación: Almacenamiento de la clave API en el Keychain y uso de encriptación proporcionada por Core Data.
func secureAPIKey() {
    // Pseudocódigo para almacenar la clave API en el Keychain de manera segura
}


Requisitos No Funcionales

	•	Performance: La app debe ser capaz de manejar grandes volúmenes de datos de
