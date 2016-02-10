//
//  ResultViewController.swift
//  Quiz
//
//  Created by ohtatomotaka on 2015/02/10.
//  Copyright (c) 2015年 LifeisTech. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var correctAnswer:Int = 0
    
    @IBOutlet var quizScore: UILabel!
    @IBOutlet var comment: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewDidAppear(animated: Bool) {
        quizScore.text = String(correctAnswer)
        if correctAnswer == 5 {
            comment.text = "満点！素晴らしい！"
        } else if correctAnswer <= 4 && correctAnswer >= 3 {
            comment.text = "まあまあ"
        } else {
            comment.text = "残念もう一回"
        }
    }


}
