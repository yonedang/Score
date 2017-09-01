//
//  ViewController.swift
//  score
//
//  Created by 米田 央 on 2017/08/28.
//  Copyright © 2017年 ynd. All rights reserved.
//

import UIKit

// グローバル変数を定義

// 総プレイ数
var totalGames:Int16 = 0

// 総勝利数
var totalWins:Int16 = 0

// 総敗北数
var totalLoses:Int16 = 0

// 総引き分け数
var totalDraws:Int16 = 0

// 通算収支
var totalMoney:Int64 = 0



class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  @IBAction func backToTop(segue: UIStoryboardSegue){}


  // 「入力」ボタン押下時のアクション
  @IBAction func inputButtonAction(_ sender: Any) {
    
    // 入力画面へ遷移
    self.performSegue(withIdentifier: "inputView", sender: nil)
  }
  
  
  // 「結果」ボタン押下時のアクション
  @IBAction func resultButtonAction(_ sender: Any) {
    
    // 結果画面へ遷移
    self.performSegue(withIdentifier: "resultView", sender: nil)
  }
  
  
}

