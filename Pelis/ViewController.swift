//
//  ViewController.swift
//  Pelis
//
//  Created by Alumno on 24/10/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

   
    @IBOutlet weak var txtPelicula: UITextField!
    
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblAño: UILabel!
    @IBOutlet weak var lblRated: UILabel!
    @IBOutlet weak var lblDuracion: UILabel!
    @IBOutlet weak var lblGenero: UILabel!
    @IBOutlet weak var lblDirector: UILabel!
    
    let urlMovieSearch = "http://www.omdbapi.com/?apikey=32503cad&t="
    
    
    @IBAction func dotapBuscar(_ sender: Any) {
   
    Alamofire.request("\(urlMovieSearch)\(txtPelicula.text!)").responseJSON {
            response in
        
        if let dictmovie = response.result.value as? NSDictionary
        {
            
        }
        
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

