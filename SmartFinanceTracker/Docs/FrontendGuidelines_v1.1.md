# Guías de Frontend para SmartFinanceTracker v1.1

Este documento proporciona directrices actualizadas sobre cómo debe ser diseñado y desarrollado el frontend de SmartFinanceTracker. Incluye estilos de código, patrones de diseño, estándares de UI/UX, y ahora también la integración con la lógica de negocio.

## Estado Actual

- [x] **Estructura del Proyecto:** Revisión completada.
- [x] **Responsabilidades Claras:** Documento actualizado.
- [x] **Manejo de Core Data:** Configuración iniciada.
- [ ] **Integración con APIs:** Pendiente de desarrollo.
- [ ] **SwiftUI y Accesibilidad:** Pendiente de diseño.
- [ ] **Testing:** Pendiente de inicio.
- [ ] **Flujo de Usuario:** Pendiente de revisión.

## Estilo de Código

- **Swift y SwiftUI:** Seguiremos las convenciones de estilo de Apple para Swift y SwiftUI, enfocándonos en la claridad, legibilidad y mantenibilidad del código.
- **Nombres:** Usaremos nombres descriptivos para variables, funciones, y tipos, siguiendo el estilo CamelCase (ejemplo: `transactionList`, `updateCategory`).
- **Comentarios:** Añadiremos comentarios donde sea necesario para explicar lógica compleja o decisiones de diseño.
- **Espaciado:** Mantendremos un espaciado consistente, con 2 espacios para la indentación.
- **Formateo:** Utilizaremos Xcode para el formateo automático del código, asegurando consistencia en la estructura.

**Próximos Pasos:** Con el estilo de código establecido, procede a [Diseño de UI/UX](#diseño-de-uiux).

## Diseño de UI/UX

- **Directrices de Apple:** Nos adherimos a las directrices de diseño de Apple para iOS, garantizando una experiencia de usuario coherente y familiar.
- **Minimalismo:** Mantendremos un diseño limpio y minimalista, evitando sobrecargar la interfaz.
- **Consistencia:** Usaremos componentes de SwiftUI de manera uniforme, como `List`, `VStack`, `HStack`, `NavigationView`, etc.
- **Animaciones:** Implementaremos animaciones suaves para transiciones entre vistas y para feedback de acciones del usuario.
- **Feedback Visual y Háptico:** Proveeremos feedback visual para todas las interacciones y, cuando sea apropiado, feedback háptico para mejorar la experiencia táctil.

**Próximos Pasos:** Con el diseño de UI/UX definido, avanza a [Accesibilidad](#accesibilidad).

## Accesibilidad

- **Soporte para VoiceOver:** Aseguraremos que la aplicación sea compatible con VoiceOver, proporcionando etiquetas adecuadas para los elementos interactivos.
- **Contraste y Tamaño de Texto:** Usaremos colores con suficiente contraste y permitiremos el ajuste del tamaño del texto para mejorar la legibilidad.
- **Controles Accesibles:** Los controles serán lo suficientemente grandes y con suficiente espacio entre ellos para ser fácilmente utilizables.

**Próximos Pasos:** Tras asegurar la accesibilidad, sigue con [Componentes](#componentes).

## Componentes

- **SwiftUI Components:** Utilizaremos los siguientes componentes de SwiftUI:
  - `List` para listar transacciones.
  - `VStack` y `HStack` para la disposición de elementos en la interfaz.
  - `NavigationView` para la navegación entre diferentes secciones de la app.
  - `Picker` para seleccionar periodos de análisis o categorías.
  - `TextField` para la búsqueda de transacciones.

```swift
struct TransactionRow: View {
    @ObservedObject var transaction: Transaction
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(transaction.date ?? Date(), style: .date)
                Text(transaction.description ?? “”)
            }
            Spacer()
            Text(transaction.amount, format: .currency(code: “USD”))
                .foregroundColor(transaction.amount < 0 ? .red : .green)
            // Menú contextual para editar la categoría
            Menu {
                ForEach(Category.allCases, id: \.self) { category in
                    Button(action: {
                        transaction.category = category.rawValue
                        // Aquí iría la lógica para actualizar en Core Data
                    }) {
                        Text(category.rawValue)
                    }
                }
            } label: {
                Image(systemName: “ellipsis.circle”)
                    .foregroundColor(.gray)
            }
        }
    }
}

Próximos Pasos: Con los componentes definidos, continua con Colores y Tipografía.

Colores y Tipografía

	•	Paleta de Colores: Seleccionaremos una paleta de colores que sea agradable visualmente y accesible:
	•	Primario: Un color principal que represente la marca de la aplicación.
	•	Secundario: Colores para resaltar elementos importantes como botones o gráficos.
	•	Fondo: Colores de fondo que proporcionen un buen contraste con el texto y elementos de la interfaz.
	•	Tipografía: Utilizaremos fuentes de sistema de iOS para mantener la coherencia:
	•	Cuerpo: SF Pro Text Regular para el texto general.
	•	Encabezados: SF Pro Display Semibold para encabezados y títulos.
	•	Tamaño: Ajustable según las preferencias del usuario, siguiendo las directrices de accesibilidad de iOS.

Próximos Pasos: Una vez definidos los aspectos visuales, dirígete a Consideraciones de Desarrollo.

Consideraciones de Desarrollo

	•	Prototipos: Antes de implementar, usaremos V0 para crear prototipos.

Próximos Pasos: Finalizando las guías de frontend, procede a Integración con APIs.
