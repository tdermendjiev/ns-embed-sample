//
//  ViewController.swift
//  CoolApp
//
//  Created by Teodor Dermendzhiev on 12.01.23.
//

import UIKit

class ViewController: UIViewController, NativeScriptEmbedderDelegate {
    @objc func presentNativeScriptApp(_ vc: UIViewController!) -> Any! {
//        [self addChildViewController:vc];
//            [vc.view setFrame:_containerView.bounds];
//            [_containerView addSubview:vc.view];
//            [vc didMoveToParentViewController:self];
//            return 0;
        
        self.addChild(vc)
        vc.view.frame = self.view.bounds
        vc.didMove(toParent: self)
        return 0
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        NativeScriptEmbedder.sharedInstance()?.setDelegate(self)
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
        
        ns?.run("console.log(NativeScriptEmbedder.sharedInstance().delegate)", runLoop: false)
    }


}

