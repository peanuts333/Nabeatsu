//
//  ViewController.swift
//  Nabeatsu
//
//  Created by nagata on 2017/06/19.
//  Copyright © 2017年 Life is Tech!. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number: Int = 0
    @IBOutlet var countLabel: UILabel!
    @IBOutlet var faceLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func isAho() -> Bool {
        // 問題1: 3の倍数かどうか調べる
        if number % 3 == 0{
            return true //アホになる
        }
        
        
        var checkNumber: Int = number
        while checkNumber != 0{
            if checkNumber % 10 == 3 {
            return true
        }else{
            checkNumber = checkNumber / 10
        }
        }
            

        
        return false
    }
    @IBAction func plusButton(){
        number = number + 1
        countLabel.text = String(number)
        
        if isAho() == true {
            
            faceLabel.text = "😊"
        } else {
            
            faceLabel.text = "😠"
        }
    }
    
    //クリアボタンでカウントを0に戻す。
    @IBAction func clearButton(){
        number = 0
        countLabel.text = String(number)
        faceLabel.text = "😠"
    }


}

