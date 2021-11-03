//
//  ResultViewController.swift
//  Homework 5
//
//  Created by Tipachel on 02.11.2021.
//

import UIKit

class ResultViewController: UIViewController {
    
    var answers:[Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        
        for answer in answers {
            var catAnswers:[Answer] = []
            var dogAnswers:[Answer] = []
            var turtleAnswers:[Answer] = []
            var rabbitAnswers:[Answer] = []
            
            if answer.type == .cat{
                catAnswers.append(answer)
            }else if answer.type == .dog{
                dogAnswers.append(answer)
            }else if answer.type == .rabbit{
                rabbitAnswers.append(answer)
            }else{
                turtleAnswers.append(answer)
            }
            
        }
        
    }
}






