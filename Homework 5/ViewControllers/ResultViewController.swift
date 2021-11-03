//
//  ResultViewController.swift
//  Homework 5
//
//  Created by Tipachel on 02.11.2021.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var animalTypeLabel: UILabel!
    @IBOutlet var animalTypeDescriptionLabel: UILabel!
    
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
            
            if catAnswers.count > dogAnswers.count ||
                catAnswers.count > rabbitAnswers.count ||
                catAnswers.count > turtleAnswers.count{
                animalTypeLabel.text = "Вы \(AnimalType.cat)-\(AnimalType.cat.rawValue )"
                animalTypeDescriptionLabel.text = AnimalType.cat.definition
                
            }else if dogAnswers.count > catAnswers.count ||
                        dogAnswers.count > rabbitAnswers.count ||
                        dogAnswers.count > turtleAnswers.count{
                animalTypeLabel.text = "Вы \(AnimalType.dog)-\(AnimalType.dog.rawValue )"
                animalTypeDescriptionLabel.text = AnimalType.dog.definition
                
            }else if rabbitAnswers.count > dogAnswers.count ||
                        rabbitAnswers.count > catAnswers.count ||
                        rabbitAnswers.count > turtleAnswers.count{
                animalTypeLabel.text = "Вы \(AnimalType.rabbit)-\(AnimalType.rabbit.rawValue )"
                animalTypeDescriptionLabel.text = AnimalType.rabbit.definition
                
            }else if turtleAnswers.count > dogAnswers.count ||
                        turtleAnswers.count > rabbitAnswers.count ||
                        turtleAnswers.count > catAnswers.count{
                animalTypeLabel.text = "Вы \(AnimalType.turtle)-\(AnimalType.turtle.rawValue )"
                animalTypeDescriptionLabel.text = AnimalType.turtle.definition
            }
        }
        
    }
}






