//
//  ViewController.swift
//  Semana06_02
//
//  Created by Tecsup on 30/09/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfApellido: UITextField!
    @IBOutlet weak var tfNombre: UITextField!
    @IBOutlet weak var tfDni: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnContinuar(_ sender: Any) {
        let pCliente = ClienteModel(pCodigo: 0, pApellido: self.tfApellido.text!, pNombre: self.tfNombre.text!, pDni: self.tfDni.text!)
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let pPantalla2 = storyboard.instantiateViewController(withIdentifier: "ViewControllerConfirmacion") as! ViewControllerConfirmacion
        pPantalla2.pCliente = pCliente
        self.present(pPantalla2, animated: true, completion: nil)
    }

}

