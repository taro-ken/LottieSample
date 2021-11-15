//
//  ViewController.swift
//  LottieSample
//
//  Created by 木元健太郎 on 2021/11/15.
//

import UIKit
import Lottie //①でインポート済

final class ViewController: UIViewController {
    
    //AnimationViewの宣言
    private  var animationView = AnimationView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //アニメーションの呼び出し
        addAnimationView()
    }
    
    //アニメーションの準備
    private  func addAnimationView() {
        
        //アニメーションファイルの指定
        animationView = AnimationView(name: "11629-plus-settings-email-and-heart") //ここに先ほどダウンロードしたファイル名を記述（拡張子は必要なし）
        
        //アニメーションの位置指定（画面中央）
        animationView.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height)
        
        //アニメーションのアスペクト比を指定＆ループで開始
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.play()
        
        //ViewControllerに配置
        view.addSubview(animationView)
    }
}
