//
//  ViewController.swift
//  ElementsQuiz
//
//  Created by Samuel ColvilleRea on 04/02/2019.
//  Copyright © 2019 Samuel ColvilleRea. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        updateElement()
        // Do any additional setup after loading the view, typically from a nib.
    }

    let elementsList = ["Carbon", "Gold", "Chlorine", "Sodium"]
    var currentElementIndex = 0
    
    func updateElement() {
        answerLabel.text = "?"
        let elementName = elementsList[currentElementIndex]
        let image = UIImage(named: elementName)
        imageView.image = image
    }
    
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func goToNextElement(_ sender: Any) {
        currentElementIndex += 1
        if(currentElementIndex >= elementsList.count){
            currentElementIndex = 0
        }
        updateElement()
    }
    @IBAction func showAnswer(_ sender: Any) {
        answerLabel.text = elementsList[currentElementIndex]
    }
    
    
}

