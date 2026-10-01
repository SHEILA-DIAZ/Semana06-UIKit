//
//  ViewController.swift
//  Ejercicio3
//
//  Created by Tecsup on 30/09/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfElectrodomestico: UITextField!
    @IBOutlet weak var tfPrecioUnitario: UITextField!
    @IBOutlet weak var tfCantidad: UITextField!
    @IBOutlet weak var tfMeses: UITextField!
    @IBOutlet weak var tfInteres: UITextField!

    var venta: VentaModel = VentaModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnCalcular(_ sender: Any) {
        let precioUnitario = Double(self.tfPrecioUnitario.text!) ?? 0
        let cantidad = Double(self.tfCantidad.text!) ?? 0
        let meses = Double(self.tfMeses.text!) ?? 0
        let tasaInteresMensual = Double(self.tfInteres.text!) ?? 0

        // Evita la division por cero en la cuota
        if meses <= 0 {
            return
        }

        let subtotal = precioUnitario * cantidad
        let igv = subtotal * 0.18
        let base = subtotal + igv
        let intereses = base * (tasaInteresMensual / 100) * meses
        let total = base + intereses
        let cuota = total / meses

        self.venta = VentaModel(pSubtotal: subtotal, pIgv: igv, pBase: base, pIntereses: intereses, pTotal: total, pCuota: cuota)
        self.performSegue(withIdentifier: "showResultado", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showResultado" {
            let pPantalla2 = segue.destination as! ResultadoViewController
            pPantalla2.pVenta = self.venta
        }
    }

}
