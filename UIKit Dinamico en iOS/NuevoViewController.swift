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
