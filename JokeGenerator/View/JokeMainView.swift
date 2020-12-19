//
//  JokeMainView.swift
//  JokeGenerator
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 19/12/20.
//

import UIKit

class JokeMainView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView(){
        self.backgroundColor = UIColor(red: 0.23, green: 0.21, blue: 0.58, alpha: 1.00)
    }
}
