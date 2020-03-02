//
//  ViewController.swift
//  Chunithm_input
//
//  Created by ddcfv on 2020/3/1.
//  Copyright © 2020 ddcfv. All rights reserved.
//
import WebKit
import UIKit

class ViewController: UIViewController {

    @IBOutlet var webView: WKWebView!
    var targetIP = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Web")
        print(targetIP)
        navigationItem.largeTitleDisplayMode = .never
        if let url = URL(string:targetIP){
            let request = URLRequest(url:url)
            webView.load(request)
        }
   // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
   // Dispose of any resources that can be recreated.
    }


}

