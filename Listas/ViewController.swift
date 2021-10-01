//
//  ViewController.swift
//  Listas
//
//  Created by Alumno on 9/28/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let nombres = ["Jose", "Ana", "Pedro", "Juan"]
    let matriculas = ["99999", "99998", "99997", "99996"]
    let promedios = ["9.1", "8.5", "9.3", "8.7"]
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 78
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nombres.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaAlumno") as! CeldaAlumnoController
        
        celda.lblNombre.text = nombres[indexPath.row]
        celda.lblMatricula.text = matriculas[indexPath.row]
        celda.lblPromedio.text = promedios[indexPath.row]
        
        return celda
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func doTapVolver(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}

