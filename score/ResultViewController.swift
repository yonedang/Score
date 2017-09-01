//
//  ResultViewController.swift
//  score
//
//  Created by 米田 央 on 2017/08/28.
//  Copyright © 2017年 ynd. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
      
      // 初期値設定
      games.text = String(totalGames)
      wins.text = String(totalWins)
      loses.text = String(totalLoses)
      draws.text = String(totalDraws)
      
      if totalMoney > 0{
        // 正の値の場合は、"+"を先頭に付加
        // 末尾に円を付加
        money.text = "+" + String(totalMoney) + "円"
      }else{
        // 末尾に円を付加
        money.text = String(totalMoney) + "円"
      }
      
      
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

  
  // プレイ数ラベル
  @IBOutlet weak var games: UILabel!
  
  // 勝利数ラベル
  @IBOutlet weak var wins: UILabel!
  
  // 敗北数ラベル
  @IBOutlet weak var loses: UILabel!
  
  // 引き分け数ラベル
  @IBOutlet weak var draws: UILabel!
  
  // 収支ラベル
  @IBOutlet weak var money: UILabel!
  
  
  
  // 「Topへ」ボタン押下時のアクション
  @IBAction func topButtonAction(_ sender: Any) {
    
    // Top画面へ遷移
    self.performSegue(withIdentifier: "topViewFromResult", sender: nil)
  }
}
