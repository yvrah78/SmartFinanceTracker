App Flow Doc (Documento de Flujo de la Aplicación)

Flujo de la Aplicación para SmartFinanceTracker

Este documento detalla el flujo de interacción dentro de la aplicación SmartFinanceTracker, desde la perspectiva del usuario. Provee una visión clara de cómo los usuarios interactuarán con la aplicación, desde la carga de sus estados de cuenta hasta la revisión y análisis de sus transacciones.

Flujo de Usuario

1. Pantalla de Bienvenida

	•	Descripción: Al iniciar la aplicación, se presenta una animación de bienvenida que introduce al usuario en la experiencia de SmartFinanceTracker. Esta animación puede ser simple, mostrando el logo de la app con una transición suave, seguido de un mensaje de bienvenida.
	•	Acciones Disponibles:
	•	Botón de Carga de PDF: Un botón prominente en el centro de la pantalla con el texto “Cargar tu Estado de Cuenta”.
	•	Texto Instructivo: Debajo del botón, un breve texto que guía al usuario: “Para comenzar, simplemente sube tus estados de cuenta en PDF”.

2. Carga de PDF

	•	Descripción: Al tocar el botón de “Cargar tu Estado de Cuenta”, la aplicación abre una interfaz para seleccionar y subir archivos PDF desde el dispositivo del usuario.
	•	Acciones Disponibles:
	•	Selector de Archivos: Permite al usuario navegar por su dispositivo y seleccionar uno o más archivos PDF.
	•	Feedback Visual: Durante la carga y procesamiento del PDF, se muestra un indicador de progreso, como una barra de progreso o un spinner.
	•	Confirmación: Una vez cargado, se muestra un mensaje de confirmación o se pasa automáticamente a la siguiente pantalla.

3. Procesamiento de PDF

	•	Descripción: En esta fase, la aplicación extrae los datos de las transacciones del PDF. Este proceso se realiza en segundo plano.
	•	Acciones Disponibles:
	•	Feedback de Procesamiento: Un mensaje o indicador visual informa al usuario que la aplicación está procesando el PDF.
	•	Categorización: Los datos extraídos se envían a la API de Grok 2 para su categorización automática.

4. Vista Principal (MainAppView)

	•	Descripción: Una vez que el PDF ha sido procesado y las transacciones categorizadas, el usuario es llevado a la vista principal de la aplicación.
	•	Listado de Transacciones:
	•	Descripción: Se muestra una lista de todas las transacciones con la fecha, descripción, monto, y categoría asignada.
	•	Acciones Disponibles:
	•	Revisión y Corrección: Los usuarios pueden tocar una transacción para editar su categoría. Un toque largo o un botón de edición permite esta acción.
	•	Filtros y Búsqueda: Opciones para filtrar por categoría o buscar transacciones por descripción.
	•	Análisis de Gastos:
	•	Descripción: Incluye gráficos de pastel interactivos para la distribución de gastos por categoría y gráficos de barras/líneas para análisis temporales.
	•	Acciones Disponibles:
	•	Interacción con Gráficos: Tocar una sección del gráfico de pastel muestra detalles específicos de esa categoría.
	•	Selección de Periodo: Opciones para ver el análisis por trimestre, semestre, o año.
	•	Botón de Exportación:
	•	Descripción: Un botón claro para exportar los datos de transacciones a Excel.
	•	Acciones Disponibles: Al tocar, se inicia el proceso de exportación, permitiendo al usuario elegir la ubicación de guardado.

5. Ajustes (SettingsView)

	•	Descripción: Esta vista permite al usuario personalizar aspectos de la aplicación.
	•	Personalización de Categorías:
	•	Descripción: Una sección para ajustar o añadir nuevas categorías de transacciones.
	•	Acciones Disponibles: Arrastrar y soltar para reordenar categorías, añadir nuevas, editar las existentes.
	•	Preferencias de Exportación:
	•	Descripción: Configuración de cómo se exportan los datos, incluyendo formato, columnas a incluir, etc.
	•	Acciones Disponibles: Seleccionar opciones de exportación antes de realizar la acción.

Consideraciones de Diseño

	•	Consistencia: Asegurarse de que el flujo de usuario sea consistente con las directrices de diseño de Apple, utilizando componentes de SwiftUI de manera coherente.
	•	Accesibilidad: Implementar prácticas de accesibilidad como texto legible, suficiente contraste, y soporte para VoiceOver.
	•	Feedback: Proporcionar feedback visual y háptico para todas las acciones del usuario, asegurando una experiencia interactiva y confirmando las acciones realizadas.
