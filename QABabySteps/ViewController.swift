//
//  ViewController.swift
//  QABabySteps
//
//  Created by Erika Cristina Bueno on 08/09/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    var programmingLanguages = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupUI()
        loadProgrammingLanguages()
    }

    @IBAction func didPressButton(_ sender: Any) {
        
        let limit = self.programmingLanguages.count
        print("Array count: \(limit)")
        
        let index = Int.random(in: 0..<limit)
        print("Random index: \(index)")
        
        self.label.text = self.programmingLanguages[index]
        
    }
    
    private func setupUI() {
        self.label.text = "Click to show a programming language!"
        self.button.setTitle("Click me!", for: .normal)
    }
    
    private func loadProgrammingLanguages() {
        self.programmingLanguages = [
            "Swift",
            "C",
            "Ruby",
            "Java",
            "Objective-C",
            "Python",
            "JavaScript",
            "Fortran",
            "COBOL",
            "Basic",
            "PHP",
            "C#",
            "Elixir",
            "F#",
            "R",
            "Go Lang",
            "Lua",
            "Julia"
        ]
    }
    
}

