//
//  ResultadoViewController.swift
//  Ejercicio3
//
//  Created by Tecsup on 30/09/26.
//

import UIKit

class ResultadoViewController: UIViewController {

    @IBOutlet weak var lblSubtotal: UILabel!
    @IBOutlet weak var lblIgv: UILabel!
    @IBOutlet weak var lblBase: UILabel!
    @IBOutlet weak var lblIntereses: UILabel!
    @IBOutlet weak var lblTotal: UILabel!
    @IBOutlet weak var lblCuota: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func btnVolver(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }

}
