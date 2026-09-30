//
//  ViewControllerConfirmacion.swift
//  Semana06_02
//
//  Created by Tecsup on 30/09/26.
//

import UIKit

class ViewControllerConfirmacion: UIViewController {

    var pCliente: ClienteModel = ClienteModel()

    @IBOutlet weak var tfApellido: UILabel!
    @IBOutlet weak var tfNombre: UILabel!
    @IBOutlet weak var tfDni: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
