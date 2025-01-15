PRD (Product Requirements Document)

Descripción del Producto

Desarrollaremos una aplicación nativa para dispositivos Apple (iPhone, iPad, Mac) que permitirá a los usuarios cargar sus estados de cuenta financieros en formato PDF. La aplicación utilizará la API de Grok 2 para analizar y categorizar automáticamente las transacciones de estos estados de cuenta, facilitando la preparación de impuestos y proporcionando análisis detallados para la gestión financiera personal.

Requisitos Funcionales

	1.	Carga de PDFs:
	•	Funcionalidad: Los usuarios deben poder seleccionar y subir archivos PDF de estados de cuenta de diferentes bancos desde su dispositivo.
	•	Especificaciones: Debe soportar múltiples formatos de PDF y manejar los diferentes patrones de datos que hemos identificado de bancos como Chase Bank, Bank of America, Navy Federal Credit Union, American Express, Apple Card, Discover IT®, y Capital One.
	2.	Procesamiento de Transacciones:
	•	Funcionalidad: La aplicación debe extraer datos de los PDFs subidos y enviarlos en formato JSON a la API de Grok 2 para su categorización.
	•	Especificaciones:
	•	Para cada banco, seguir las reglas de extracción de datos detalladas en los análisis previos.
	•	Convertir fechas al formato ISO 8601 (YYYY-MM-DD).
	•	Manejar montos en USD con dos decimales.
	•	Enviar datos en el siguiente formato JSON:
{
  "transactions": [
    {
      "date": "YYYY-MM-DD",
      "description": "Descripción de la transacción",
      "amount": 0.00,
      "category": "Categoría inferida"
    }
  ]
}

	3.	Visualización de Transacciones:
	•	Funcionalidad: Mostrar una lista de transacciones categorizadas al usuario, permitiendo revisión y corrección.
	•	Especificaciones:
	•	Mostrar fecha, descripción, monto, y categoría.
	•	Permitir al usuario editar la categoría de cada transacción con un toque largo o botón de edición.
	•	Opción de filtrar por categoría y buscar por descripción.
	4.	Análisis de Gastos:
	•	Funcionalidad: Generar gráficos de pastel y análisis temporales de los gastos basados en las transacciones categorizadas.
	•	Especificaciones:
	•	Gráfico de pastel interactivo donde el usuario puede tocar para ver detalles de cada categoría.
	•	Gráficos de barras o líneas para análisis temporal, con opciones para trimestre, semestre, y año.
	5.	Exportación de Datos:
	•	Funcionalidad: Permitir al usuario exportar los datos de transacciones a un archivo Excel.
	•	Especificaciones:
	•	Debe incluir columnas para Fecha, Descripción, Monto, Categoría, y cualquier otro dato relevante identificado en los análisis.
	•	Opción para configurar qué columnas se exportan en los ajustes.
	6.	Seguridad:
	•	Funcionalidad: Implementar medidas de seguridad para la autenticación de la API y el almacenamiento de datos.
	•	Especificaciones:
	•	Autenticación básica para la API de Grok 2, con la API key almacenada en el Keychain.
	•	Uso de Core Data para el almacenamiento local, con sincronización segura a través de iCloud.
	7.	Manejo de Errores:
	•	Funcionalidad: Proporcionar feedback claro al usuario sobre errores o problemas durante el procesamiento de los PDFs.
	•	Especificaciones:
	•	Mensajes de error amigables con sugerencias para reintentar o pasos para verificar la conectividad.
	•	Implementar reintentos con un retardo entre ellos para manejar errores temporales.

Requisitos No Funcionales

	•	Usabilidad: La aplicación debe ser intuitiva, con una interfaz de usuario clara y coherente con las directrices de diseño de Apple.
	•	Rendimiento: Debe ser eficiente en el procesamiento de PDFs y en la interacción con la API, minimizando los tiempos de espera.
	•	Accesibilidad: Cumplir con las mejores prácticas de accesibilidad de iOS, incluyendo soporte para VoiceOver.
	•	Escalabilidad: Diseñada para manejar un número creciente de usuarios y tipos de cuentas bancarias.

Usuarios Objetivo

Inicialmente, la aplicación está dirigida a amigos y familiares del desarrollador, con el objetivo de expandirse a un público más amplio en el futuro. Los usuarios deben tener acceso a estados de cuenta en PDF de diferentes bancos y estar interesados en una herramienta que simplifique la gestión de sus finanzas personales.

Casos de Uso

	•	Caso de Uso 1: Un usuario carga su estado de cuenta de Chase Bank para ver sus gastos categorizados y prepararse para la declaración de impuestos.
	•	Caso de Uso 2: Un usuario de Apple Card revisa sus recompensas de Daily Cash y cómo se han aplicado a su cuenta.
	•	Caso de Uso 3: Un usuario de Capital One Simply Checking analiza sus transferencias Zelle y compras para entender su flujo de caja mensual.
