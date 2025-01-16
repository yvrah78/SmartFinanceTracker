Documento de Estructura Backend para SmartFinanceTracker v1.1

Este documento describe cómo está organizado el backend de SmartFinanceTracker, incluyendo la arquitectura de datos, los servicios, las APIs, y cómo se integran con el frontend, con un enfoque en la implementación técnica y la lógica de negocio.

Arquitectura de Datos

	•	Core Data: Utilizaremos Core Data para el almacenamiento local de datos en dispositivos Apple. Core Data facilita la gestión de modelos de datos, la persistencia de objetos, y la sincronización entre dispositivos a través de iCloud.
	•	Modelo de Datos: Definiremos un modelo de datos detallado que refleje la estructura de las transacciones financieras:
	•	Transaction: Representa una transacción individual con atributos como date, description, amount, category, etc.

@objc(Transaction)
public class Transaction: NSManagedObject {
    @NSManaged public var date: Date?
    @NSManaged public var description: String?
    @NSManaged public var amount: Double
    @NSManaged public var category: String?
}

•	Category: Para almacenar las categorías personalizadas del usuario.

@objc(Category)
public class Category: NSManagedObject {
    @NSManaged public var name: String
    @NSManaged public var userDefined: Bool
}

•	Account: Para información de la cuenta bancaria si es necesario.
	•	Sincronización: La sincronización con iCloud se configurará para permitir que los datos de transacciones estén disponibles en múltiples dispositivos del usuario. Esto se gestiona automáticamente por Core Data.

Servicios y APIs

	•	API de Grok 2 (xAI): La única API externa que integraremos es la de Grok 2 para la categorización automática de transacciones. Esta API se usará para enviar datos de transacciones en formato JSON y recibir las categorías asignadas.
	•	Autenticación: Implementaremos autenticación básica para la API de Grok 2. La clave API se almacenará de manera segura en el Keychain de iOS.
	•	Ejemplo de Solicitud JSON:

{
  "transactions": [
    {
      "date": "2024-07-12",
      "description": "Compra en BEST BUY CO",
      "amount": 29.83
    }
  ]
}

•	Ejemplo de Respuesta JSON:

{
  "transactions": [
    {
      "date": "2024-07-12",
      "description": "Compra en BEST BUY CO",
      "amount": 29.83,
      "category": "Electrónicos",
      "confidence": 0.98
    }
  ]
}

•	Endpoints de la API de Grok 2:
	•	Categorización de Transacciones:
	•	Endpoint: POST /categorize
	•	Autenticación: Clave API almacenada en Keychain, enviada en el header Authorization: Bearer <API_KEY>.

Integración Frontend-Backend

	•	Flujo de Datos:
	1.	Extracción de Datos del PDF: La aplicación extrae datos de transacciones de los PDFs cargados por el usuario usando PDFKit.

func extractTransactions(from pdfURL: URL) -> [Transaction] {
    // Pseudocódigo para la extracción de datos del PDF
}

	2.	Preparación para la API: Los datos extraídos se formatean en un JSON que cumple con el esquema esperado por la API de Grok 2.
	3.	Envío a la API: Se envía la solicitud JSON a la API de Grok 2 para la categorización.

func categorizeTransactions(transactions: [Transaction]) {
    // Pseudocódigo para la autenticación y envío de datos a la API
    let apiKey = obtenerClaveDelKeychain()
    let url = URL(string: "https://api.grok2.xai/categorize")!
    var request = URLRequest(url: url)
    request.httpMethod = "POST​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​​
