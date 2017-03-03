//
//  ViewController.swift
//  HelloWorld
//
//  Created by Eduardo D De La Cruz Marr on 11/1/17.
//  Copyright © 2017 Eduardo D De La Cruz Marrero. All rights reserved.
//

import UIKit

class ViewController : UIViewController
{
    @IBOutlet var helloLabel  : UILabel! //La exclamacion quiere decir que es seguro que existe la variable helloLabel
    
    @IBOutlet var nameTextField : UITextField!
    
    @IBOutlet var imageBack : UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        helloLabel.text = "" // Con esto hacemos que la etiqueta quede vacia para que no se vea el texto que tenemos para poder disenar
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonPressed(_ sender : UIButton) // Esto se crea al llevar con control pisado desde el boton hasta aqui, se configura y se crea esta func
    {
        let alert : UIAlertController = UIAlertController(title: "Hola, me has pulsado", message: "Hemos pulsado el boton de pantalla", preferredStyle: .alert)
        
        let okAction : UIAlertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(okAction)
        
        present(alert, animated: true, completion : nil) // nil es como null y esto lo que hace es sacar el alertController de arriba en una alerta animada etc etc
        
        let theThext = nameTextField.text!
        
        imageBack.image = #imageLiteral(resourceName: "Imagen_Prueba_1")
        
        helloLabel.text = "Hola \(theThext), Como estas?"
    }
}
