No hay problema, Harvy. Entiendo que la precisión en la nomenclatura es importante. Ahora que todo está corregido, procedamos con el Backend Structure Doc (Documento de Estructura Backend) para SmartFinanceTracker.

Documento de Estructura Backend para SmartFinanceTracker

Este documento describe cómo está organizado el backend de SmartFinanceTracker, incluyendo la arquitectura de datos, los servicios, las APIs, y cómo se integran con el frontend. Aunque nuestra aplicación no tiene un backend tradicional, dado que la lógica de negocio se maneja en el cliente, aquí detallamos cómo se gestionan los datos y la integración con la API externa.

Arquitectura de Datos

	•	Core Data: Utilizaremos Core Data para el almacenamiento local de datos en dispositivos Apple. Core Data es un framework que facilita la gestión de modelos de datos, la persistencia de objetos, y la sincronización entre dispositivos a través de iCloud.
	•	Modelo de Datos: Definiremos un modelo de datos que refleje la estructura de las transacciones financieras, incluyendo:
	•	Transaction: Representa una transacción individual con atributos como date, description, amount, category, etc.
	•	Category: Para almacenar las categorías personalizadas del usuario.
	•	Account: Para información de la cuenta bancaria si es necesario.
	•	Sincronización: La sincronización con iCloud se configurará para permitir que los datos de transacciones estén disponibles en múltiples dispositivos del usuario.

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


Integración Frontend-Backend

	•	Flujo de Datos:
	1.	Extracción de Datos del PDF: La aplicación extrae datos de transacciones de los PDFs cargados por el usuario.
	2.	Preparación para la API: Los datos extraídos se formatean en un JSON que cumple con el esquema esperado por la API de Grok 2.
	3.	Envío a la API: Se envía la solicitud JSON a la API de Grok 2 para la categorización.
	4.	Recepción de Datos: La aplicación recibe la respuesta JSON de la API y actualiza los objetos Transaction en Core Data con las categorías asignadas.
	5.	Visualización en el Frontend: Los datos actualizados se presentan en la interfaz de usuario, permitiendo al usuario revisar y ajustar las categorías si es necesario.
	•	Manejo de Errores: Implementaremos un manejo robusto de errores para asegurar que cualquier problema en la comunicación con la API o en el procesamiento de datos se maneje de manera elegante, informando al usuario y sugiriendo acciones correctivas.
	•	Seguridad: Dado que no hay un backend tradicional, la seguridad se centra en la autenticación de la API y el almacenamiento seguro de datos locales. Usaremos el Keychain para almacenar la clave API y Core Data para el almacenamiento de datos con encriptación proporcionada por el sistema.
