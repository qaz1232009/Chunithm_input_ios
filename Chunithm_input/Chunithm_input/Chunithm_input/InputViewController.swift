//
//  InputViewController.swift
//  Chunithm_input
//
//  Created by ddcfv on 2020/3/2.
//  Copyright © 2020 ddcfv. All rights reserved.
//

import UIKit

class InputViewController: UIViewController {
    var server_ip = ""
    override func viewDidLoad() {
        super.viewDidLoad()
    }
     
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
         
        let alertController = UIAlertController(title: "Server IP",message: "Input Server IP\nIP:4420", preferredStyle: .alert)
        
        alertController.addTextField {
            (textField: UITextField!) -> Void in
            textField.placeholder = "IP:4420"
        }
//        http://192.168.39.4:4420
        let connectAction = UIAlertAction(title: "Connect", style: .default, handler: {
            action in
            self.server_ip = (alertController.textFields?[0].text)!
            print("IP：\(self.server_ip)")
            self.performSegue(withIdentifier: "showWeb", sender: self)
        })
        alertController.addAction(connectAction)
        self.present(alertController, animated: true, completion: nil)
    }
     
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue:UIStoryboardSegue,sender:Any?){
        let ip = "http://\(server_ip)"
        if segue.identifier=="showWeb"{
            if let destinationCoroller = segue.destination as? ViewController{
                destinationCoroller.targetIP = ip
            }
        }
    }

}
