//
//  JokeMainView.swift
//  JokeGenerator
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 19/12/20.
//

import UIKit

class JokeMainView: UIView {
    
    let containerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.35, green: 0.34, blue: 0.84, alpha: 1.00)
        view.layer.cornerRadius = 20
        return view
    }()
    
    let questionLabel: UILabel = {
        let label = UILabel()
        label.text = "Question"
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textColor = .black
        return label
    }()
    
    let detailQuestionLabel: UILabel = {
        let label = UILabel()
        label.text = "A....."
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.textColor = .black
        return label
    }()
    
    let answerLabel: UILabel = {
        let label = UILabel()
        label.text = "Answer"
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textColor = .black
        return label
    }()
    
    let detailAnswerLabel: UILabel = {
       let label = UILabel()
        label.text = "A....."
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.textColor = .black
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView(){
        self.backgroundColor = UIColor(red: 0.23, green: 0.21, blue: 0.58, alpha: 1.00)
        
        self.addSubview(self.containerView)
        self.containerView.addSubview(self.questionLabel)
        self.containerView.addSubview(self.detailQuestionLabel)
        
        containerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            containerView.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            containerView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20),
            containerView.heightAnchor.constraint(equalToConstant: 419),
            containerView.widthAnchor.constraint(equalToConstant: 363)
        ])
        
        questionLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            questionLabel.leftAnchor.constraint(equalTo: self.containerView.leftAnchor, constant: 12),
            questionLabel.topAnchor.constraint(equalTo: self.containerView.topAnchor, constant: 20)
        ])
        
        detailQuestionLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            detailQuestionLabel.topAnchor.constraint(equalTo: questionLabel.bottomAnchor, constant: 12),
            detailQuestionLabel.leftAnchor.constraint(equalTo: self.containerView.leftAnchor, constant: 12),
            detailQuestionLabel.rightAnchor.constraint(equalTo: self.containerView.rightAnchor, constant: -12),
            detailQuestionLabel.heightAnchor.constraint(equalToConstant: 80)
        ])
    }
}
