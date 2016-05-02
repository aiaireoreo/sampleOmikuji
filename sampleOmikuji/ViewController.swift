//
//  ViewController.swift
//  sampleOmikuji
//
//  Created by AI Matsubara on 2016/04/29.
//  Copyright © 2016年 AI Matsubara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var omikuji = ["大吉","吉","中吉","小吉","末","末吉","凶","大凶",]
    
  
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        

        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func tapBtn(sender:
        UIButton) {
        print("占いボタン押された")
        //占いのどれか１つをランダムに選ぶ
        var r = Int(arc4random()) % omikuji.count
        print(r)
        
        
        //アラートをつくる
        var alertController =
            UIAlertController(
                title: "今日の運勢",
                message: omikuji[r],
                preferredStyle: .Alert)
        
        
        //OKボタン追加
        alertController .addAction(UIAlertAction(
            title: "OK",
            style: .Default,
            handler:{action in self.kekka(r)})) //ここにaction in...
        
        //アラート表示
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    

    
    
    
    
    //ヒント：引数をひとつ追加するとよいです
    func kekka(r:Int){
        
        
        imageView.image =
            UIImage(named:"\(r).png")

        
        
        
        print("結果表示")
        
        //ここに運勢ごとに表示する画像を変える処理を記述する！
        
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

