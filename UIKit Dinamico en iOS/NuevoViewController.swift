//
//  NuevoViewController.swift
//  UIKit Dinamico en iOS
//
//  Created by alumno on 3/14/17.
//  Copyright © 2017 Jorge Limo. All rights reserved.
//

import UIKit

class NuevoViewController: UIViewController {
    
    var vwCabecera:UIView!
    var lbltitulo:UILabel!
    
    var sgswitch:UISegmentedControl!
    
    var btnAceptar:UIButton!
    var btnCancelar:UIButton!
    
    var arregloVistas = Array<UIView>()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //con medida especifica
       // vwCabecera = UIView(frame: CGRect(x: 0, y: 0, width: 375, height: 60))
        //para ocupar todo le ancho de la pantalla
        vwCabecera = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width , height: 70))
        
        vwCabecera.backgroundColor = UIColor(red: 23/255.0, green: 206/255.0, blue: 255/255.0, alpha: 1.0)
        self.view.addSubview(vwCabecera)
        // Do any additional setup after loading the view.
        
        //constructor po defecto para el label ...
        //lbltitulo = UILabel(frame: CGRect(x: vwCabecera.frame.origin.x, y: vwCabecera.frame.origin.y, width: vwCabecera.frame.size.width, height: vwCabecera.frame.size.height))
        
        lbltitulo = UILabel(frame: vwCabecera.frame)
        lbltitulo.text = "UIKit Dinamico en iOS"
        lbltitulo.textColor = UIColor.white
        lbltitulo.font = UIFont(name: "System", size: 17)
        lbltitulo.textAlignment = NSTextAlignment.center
        vwCabecera.addSubview(lbltitulo)
        
        
        let margen:CGFloat = 10;
        
        sgswitch = UISegmentedControl(frame: CGRect(x: 10, y: vwCabecera.frame.size.height + margen, width: self.view.frame.width - (margen * 2), height: 30))
        
        sgswitch.insertSegment(withTitle: "Primero", at: 0, animated: true)
        sgswitch.insertSegment(withTitle: "Segundo", at: 1, animated: true)
        
        
        sgswitch.tintColor = UIColor(red: 23/255.0, green: 206/255.0, blue: 255/255.0, alpha: 1.0)
        
        
        sgswitch.selectedSegmentIndex = 0
        
        self.view.addSubview(sgswitch)
        
        btnAceptar = UIButton(frame: CGRect(x: margen, y: self.view.frame.size.height - 60, width: 100, height: 30))
        
        btnAceptar.setTitle("Aceptar", for: UIControlState.normal)
        btnAceptar.backgroundColor  = UIColor(red: 23/255.0, green: 206/255.0, blue: 255/255.0, alpha: 1.0)
        btnAceptar.addTarget(self, action: #selector(aceptar), for: UIControlEvents.touchDown)
        self.view.addSubview(btnAceptar)
        
        btnCancelar = UIButton(frame: CGRect(x: self.view.frame.width - 40, y: self.view.frame.size.height - 60, width: 100, height: 30))
      
        
        btnCancelar.setTitle("Cancelar", for: UIControlState.normal)
        btnCancelar.addTarget(self, action: #selector(cancelar), for: UIControlEvents.touchDown)

        btnCancelar.backgroundColor  = UIColor(red: 23/255.0, green: 206/255.0, blue: 255/255.0, alpha: 1.0)
        
        self.view.addSubview(btnCancelar)
        
    }

    func cancelar(){
        
        for vistas in arregloVistas {
            vistas.removeFromSuperview()
        }
        
        arregloVistas.removeAll()
    }
    
    func aceptar(){
        
        if  arregloVistas.count == 0 {
            
            
            for i in 1...8{
                
                let vista = UIView(frame: CGRect(x: (10*i), y: (10*i), width: 100, height: 100))
                vista.backgroundColor = UIColor.red
                self.view.addSubview(vista)
                arregloVistas.append(vista)
            }
            
            
        }else{
            
            
        }

        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
