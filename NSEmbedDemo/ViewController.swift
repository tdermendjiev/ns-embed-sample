//
//  ViewController.swift
//  NSEmbedDemo
//
//  Created by Teodor Dermendzhiev on 14.01.23.
//

import UIKit
import NativeScriptEmbedding

@objc class ViewController: UIViewController {
    
    var delegate: EmbedderDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = EmbedderDelegate()
        delegate?.vc = self
        NativeScriptEmbedder.sharedInstance().setDelegate(delegate)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    @IBAction func openNSApp(_ sender: Any) {
        DispatchQueue.global(qos: .userInitiated).async {
            let config = Config()
            config.logToSystemConsole = true
            config.baseDir = Bundle.main.resourcePath
            config.metadataPtr = self.delegate?.metadataPtr
            let ns = NativeScript(config: config)
            ns?.runMainApplication();
        }
        
    }
    

}

