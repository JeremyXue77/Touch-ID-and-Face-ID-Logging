//
//  ViewController.swift
//  Touch ID and Face ID Logging
//
//  Created by JeremyXue on 2019/3/31.
//  Copyright © 2019 JeremyXue. All rights reserved.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func logging(_ sender: UIButton) {
        // 創建 LAContext 實例
        let context = LAContext()
        // 設置取消按鈕標題
        context.localizedCancelTitle = "Cancel"
        var error: NSError?
        // 評估是否可以針對給定方案進行身份驗證
        if context.canEvaluatePolicy(.deviceOwnerAuthentication, error: &error) {
            let reason = "Log in to your account"
            // 評估指定方案
            context.evaluatePolicy(.deviceOwnerAuthentication, localizedReason: reason) { (success, error) in
                if success {
                    DispatchQueue.main.async { [unowned self] in
                        self.showMessage(title: "Login Successful", message: nil)
                    }
                } else {
                    DispatchQueue.main.async { [unowned self] in
                        self.showMessage(title: "Login Failed", message: error?.localizedDescription)
                    }
                }
            }
        } else {
            showMessage(title: "Failed", message: error?.localizedDescription)
        }
    }
    
    func showMessage(title: String?, message: String?) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
}

