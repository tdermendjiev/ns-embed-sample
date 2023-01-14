//
//  ViewController.swift
//  NSEmbedDemo
//
//  Created by Teodor Dermendzhiev on 14.01.23.
//

import UIKit
import NativeScriptEmbedding

@objc class ViewController: UIViewController {
    
    weak var delegate: NativeScriptEmbedderDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let delegate = EmbedderDelegate()
        delegate.vc = self
        NativeScriptEmbedder.sharedInstance().setDelegate(delegate)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let config = Config()
        config.baseDir = Bundle.main.resourcePath
        let ns = NativeScript(config: config)
        ns?.runMainApplication();
    }

}

