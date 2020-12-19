//
//  JokeMainController.swift
//  JokeGenerator
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 19/12/20.
//

import UIKit

class JokeMainController: UIViewController {

    private var jokeMainView: JokeMainView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.jokeMainView = JokeMainView.init(frame: self.view.frame)
        self.view = self.jokeMainView
        
        self.navigationController?.navigationBar.isHidden = true
        
    }
}
