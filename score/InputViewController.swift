//
//  InputViewController.swift
//  score
//
//  Created by 米田 央 on 2017/08/28.
//  Copyright © 2017年 ynd. All rights reserved.
//

import UIKit

class InputViewController: UIViewController {
  
  // 収支
  var result:Int64 = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

  @IBOutlet weak var rateTxtbox: UITextField!
  
  @IBOutlet weak var resultTxtbox: UITextField!
  
  
  
  // 「登録」ボタン押下時のアクション
  @IBAction func registerButtonAction(_ sender: Any) {
    
    // 登録処理
    // テキストフィールドの値取得
    let rateTxt = rateTxtbox.text
    let resultTxt = resultTxtbox.text
    
    // 入力値をもとに収支を計算
    result = Int64(rateTxt!)! * Int64(resultTxt!)!
    
    // 通算成績を更新
    // 総プレイ数、通算収支を更新
    totalGames += 1
    totalMoney += result
    
    // 入力値をもとに勝敗を判定し、更新
    if result > 0 {
      totalWins += 1
    } else if result == 0{
      totalDraws += 1
    } else{
      totalLoses += 1
    }
    
    // Top画面へ遷移
    self.performSegue(withIdentifier: "topViewFromInput", sender: nil)
    
  }
  
  
  
  
}
