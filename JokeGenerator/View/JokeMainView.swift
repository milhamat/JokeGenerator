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
        label.text = "....."
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.numberOfLines = 0
        label.textColor = .black
//        label.textAlignment = .left
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
        label.text = "....."
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.numberOfLines = 0
        label.textColor = .black
        return label
    }()
    
    let generateButton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.custom)
        let image = UIImage(named: "GenerateBut")
        button.setImage(image, for: .normal)
//        button.setTitle("gen", for: .normal)
        return button
    }()
    
    let answerButton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.custom)
        let image = UIImage(named: "AnswerBut")
        button.setImage(image, for: .normal)
//        button.setTitle("ans", for: .normal)
        return button
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
        self.containerView.addSubview(self.answerLabel)
        self.containerView.addSubview(self.detailAnswerLabel)
        self.addSubview(self.generateButton)
//        self.addSubview(self.answerButton)
        
        containerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            containerView.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            containerView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 50),
            containerView.heightAnchor.constraint(equalToConstant: self.frame.size.height * 0.47),
            containerView.widthAnchor.constraint(equalToConstant: self.frame.size.width * 0.88)
            // H: 419, W: 363
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
        
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            answerLabel.topAnchor.constraint(equalTo: detailQuestionLabel.bottomAnchor, constant: 20),
            answerLabel.leftAnchor.constraint(equalTo: self.containerView.leftAnchor,constant: 12)
        ])
        
        detailAnswerLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            detailAnswerLabel.topAnchor.constraint(equalTo: answerLabel.bottomAnchor, constant: 12),
            detailAnswerLabel.leftAnchor.constraint(equalTo: self.containerView.leftAnchor, constant: 12),
            detailAnswerLabel.rightAnchor.constraint(equalTo: self.containerView.rightAnchor, constant: -12),
            detailAnswerLabel.heightAnchor.constraint(equalToConstant: 80)
        ])
        
        generateButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            generateButton.topAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 150),
            generateButton.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor)
//            generateButton.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor, constant: 80)
        ])
        
//        answerButton.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            answerButton.topAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 150),
//            answerButton.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor, constant: -80)
//        ])
    }
}
