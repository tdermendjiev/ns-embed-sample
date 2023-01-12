//
//  ViewController.swift
//  CoolApp
//
//  Created by Teodor Dermendzhiev on 12.01.23.
//

import UIKit

class ViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if false {
            runNSWithDefaultMetadata()
        } else {
            runNSFromObjcViewController()
        }
    }
    
    func runNSFromObjcViewController() {
        let vc = SomeViewController()
        present(vc, animated: false)
    }
    
    func runNSWithDefaultMetadata() {
        let config = Config()
        config.logToSystemConsole = true
        config.isDebug = true
        config.baseDir = Bundle.main.resourcePath
        let ns = NativeScript(config: config)
//        ns?.runMainApplication()
        
        ns?.run("console.log(NSString.alloc().initWithString('HELLO FROM NATIVESCRIPT'))", runLoop: false)
    }


}

