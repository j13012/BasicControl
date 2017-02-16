//
//  ViewController.swift
//  BasicControl
//
//  Created by teacher on 2016/11/11.
//  Copyright © 2016年 teacher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //サンプル用変数
        let scoreResult:[Int] = [75, 40, 45, 80, 90]
        var teamScore:Int = 0
        
        //計算処理
        for score in scoreResult{
            if score > 50{
                teamScore += 3
            }else{
                teamScore += 1
            }
        }
         
        //結果表示用ラベルの設定
        label.text = "チームの点数は" + String(teamScore)
        label.textAlignment = NSTextAlignment.center
        label.font = UIFont(name: "Meyrio", size: 20)

        //ビューに追加
        self.view.addSubview(label)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

