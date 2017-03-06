//
//  SubViewController.swift
//  Swift代理
//
//  Created by BaiYing on 2017/3/6.
//  Copyright © 2017年 BY. All rights reserved.
//

import UIKit

/// 创建一个协议，并附带一个方法
protocol SubViewDelegate {
    func backStr(str: String)
}

class SubViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    /// 设置代理属性
    var delegate: SubViewDelegate?
    
    @IBAction func backBtnTap(_ sender: Any) {
        
        /// 执行代理方法，将值回传
        delegate?.backStr(str: textField.text ?? "")
        
        /// pop
        _ = navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.becomeFirstResponder()
        
    }

}

