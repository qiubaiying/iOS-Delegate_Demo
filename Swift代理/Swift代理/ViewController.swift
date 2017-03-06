//
//  ViewController.swift
//  Swift代理
//
//  Created by BaiYing on 2017/3/6.
//  Copyright © 2017年 BY. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textF: UITextField!
    
    @IBAction func goSub(_ sender: Any) {
        performSegue(withIdentifier: "goSub", sender: nil)
    }
    
    /// storyboard 跳转处理
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goSub" {
            print("hi")
            let subVC = segue.destination as! SubViewController
            subVC.delegate = self
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

/// 使用扩展继承协议 实现协议方法 可以分离代码
extension ViewController: SubViewDelegate{
    /// 实现代理方法
    func backStr(str: String) {
        self.textF.text = str
    }
}

