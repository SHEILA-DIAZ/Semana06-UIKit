# Prompts utilizados - Ejercicio 3

Ejercicio 3: "Calculadora de Venta a Plazos de Electrodoméstico".

## Prompt para VentaModel

Se solicitó a la IA:

- Crear `VentaModel` como clase `NSObject` en el archivo `VentaModel.swift`.
- Incluir los seis valores de tipo `Double`: `subtotal`, `igv`, `base`, `intereses`, `total` y `cuota`.
- Incluir un inicializador que reciba los seis valores y los asigne.
- Mantener el código dentro de los temas vistos hasta la semana 6.

## Prompt para cálculo y navegación

Se solicitó a la IA:

- Obtener precio unitario, cantidad, meses e interés desde los `UITextField` de la pantalla "Nueva Venta" y convertirlos a `Double`.
- Aplicar las fórmulas:

  ```
  subtotal = precioUnitario * cantidad
  igv = subtotal * 0.18
  base = subtotal + igv
  intereses = base * (tasaInteresMensual / 100) * meses
  total = base + intereses
  cuota = total / meses
  ```

- Evitar la división por cero: si meses es 0 o no es un valor válido, no continuar con el cálculo.
- Crear `VentaModel` con los resultados.
- Utilizar `prepare(for:sender:)` para pasar `VentaModel` a `ResultadoViewController`, verificando el identifier `"showResultado"`.
- Mostrar los resultados usando `String(format: "S/. %.2f", valor)`.
- Mantenerse dentro de los temas de la semana 6.
- No usar Combine, Codable ni persistencia.

## Decisión sobre el segue

El segue Show `showResultado` estaba conectado directamente al botón "Calcular", por lo que se ejecutaba siempre al pulsarlo, incluso con un número de meses inválido. Se decidió moverlo desde el botón Calcular hacia la escena "Nueva Venta" (manteniendo el tipo Show y el identifier `showResultado`). Así `btnCalcular` valida los meses y solo llama a `performSegue(withIdentifier: "showResultado", sender: self)` cuando el valor es válido.
