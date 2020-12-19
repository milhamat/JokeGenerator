//
//  JokeMainController.swift
//  JokeGenerator
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 19/12/20.
//

import UIKit

class JokeMainController: UIViewController {

    private var jokeMainView: JokeMainView!
    private var jokeManager = JokeManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        jokeManager.delegate = self
        
        self.jokeMainView = JokeMainView.init(frame: self.view.frame)
        self.view = self.jokeMainView
        
        self.navigationController?.navigationBar.isHidden = true
        
        self.jokeMainView.generateButton.addTarget(self, action: #selector(buttonGetPressed), for: .touchUpInside)
        
    }
    
    @objc
    private func buttonGetPressed(){
        jokeManager.getData()
    }
}

extension JokeMainController: JokeManagerDelegate{
    func didUpdateJoke(_ jokeManager: JokeManager, jokeModel: JokeModel) {
        DispatchQueue.main.async {
            self.jokeMainView.detailQuestionLabel.text = jokeModel.questionStr
            self.jokeMainView.detailAnswerLabel.text = jokeModel.answerStr
        }
    }
    
    func didFailWithError(error: Error) {
        print(error)
    }
    
    
}
