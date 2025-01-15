Guías de Frontend para SmartFinanceTracker

Este documento proporciona directrices sobre cómo debe ser diseñado y desarrollado el frontend de SmartFinanceTracker. Incluye estilos de código, patrones de diseño, y estándares de UI/UX.

Estilo de Código

	•	Swift y SwiftUI: Seguiremos las convenciones de estilo de Apple para Swift y SwiftUI, enfocándonos en la claridad, legibilidad y mantenibilidad del código.
	•	Nombres: Usaremos nombres descriptivos para variables, funciones, y tipos, siguiendo el estilo CamelCase (ejemplo: transactionList, updateCategory).
	•	Comentarios: Añadiremos comentarios donde sea necesario para explicar lógica compleja o decisiones de diseño.
	•	Espaciado: Mantendremos un espaciado consistente, con 2 espacios para la indentación.
	•	Formateo: Utilizaremos Xcode para el formateo automático del código, asegurando consistencia en la estructura.

Diseño de UI/UX

	•	Directrices de Apple: Nos adherimos a las directrices de diseño de Apple para iOS, garantizando una experiencia de usuario coherente y familiar.
	•	Minimalismo: Mantendremos un diseño limpio y minimalista, evitando sobrecargar la interfaz.
	•	Consistencia: Usaremos componentes de SwiftUI de manera uniforme, como List, VStack, HStack, NavigationView, etc.
	•	Animaciones: Implementaremos animaciones suaves para transiciones entre vistas y para feedback de acciones del usuario.
	•	Feedback Visual y Háptico: Proveeremos feedback visual para todas las interacciones y, cuando sea apropiado, feedback háptico para mejorar la experiencia táctil.

Accesibilidad

	•	Soporte para VoiceOver: Aseguraremos que la aplicación sea compatible con VoiceOver, proporcionando etiquetas adecuadas para los elementos interactivos.
	•	Contraste y Tamaño de Texto: Usaremos colores con suficiente contraste y permitiremos el ajuste del tamaño del texto para mejorar la legibilidad.
	•	Controles Accesibles: Los controles serán lo suficientemente grandes y con suficiente espacio entre ellos para ser fácilmente utilizables.

Componentes

	•	SwiftUI Components: Utilizaremos los siguientes componentes de SwiftUI:
	•	List para listar transacciones.
	•	VStack y HStack para la disposición de elementos en la interfaz.
	•	NavigationView para la navegación entre diferentes secciones de la app.
	•	Picker para seleccionar periodos de análisis o categorías.
	•	TextField para la búsqueda de transacciones.

Colores y Tipografía

	•	Paleta de Colores: Seleccionaremos una paleta de colores que sea agradable visualmente y accesible:
	•	Primario: Un color principal que represente la marca de la aplicación.
	•	Secundario: Colores para resaltar elementos importantes como botones o gráficos.
	•	Fondo: Colores de fondo que proporcionen un buen contraste con el texto y elementos de la interfaz.
	•	Tipografía: Utilizaremos fuentes de sistema de iOS para mantener la coherencia:
	•	Cuerpo: SF Pro Text Regular para el texto general.
	•	Encabezados: SF Pro Display Semibold para encabezados y títulos.
	•	Tamaño: Ajustable según las preferencias del usuario, siguiendo las directrices de accesibilidad de iOS.

Consideraciones de Desarrollo

	•	Prototipos: Antes de implementar, usaremos V0 para crear prototipos de alta fidelidad, asegurando que el diseño se traduzca bien en la implementación.
	•	Revisión: Implementaremos revisiones de código para asegurar que las directrices de estilo y diseño se siguen correctamente.
	•	Iteración: Basándonos en el feedback de usuarios y pruebas, iteraremos sobre el diseño para mejorar la usabilidad y la experiencia visual.
