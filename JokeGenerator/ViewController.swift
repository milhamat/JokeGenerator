//
//  ViewController.swift
//  JokeGenerator
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 19/12/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        fetchData()
    }
    
    @IBAction func answerPressed(_ sender: UIButton) {
        
    }
    func fetchData(){
       guard let url = URL(string: "https://sv443.net/jokeapi/v2/joke/Any")
       else {return}
        
        URLSession.shared.dataTask(with: url) {(data, response, error) in
            guard let data = data else {return}
            print(data)
            
            do{
                let getData = try JSONDecoder().decode(JokeGenerator.self, from: data)
                
                let questionUpdate = getData.setup
                let answerUpdate = getData.delivery
                
                DispatchQueue.main.async {
                    self.statusLabel.text = "\(questionUpdate)"
                    self.answerLabel.text = answerUpdate
                }
                
            }catch let err {
                print("error",err)
            }
        }.resume()
    }
}

struct JokeGenerator: Codable {
    let setup: String
    let delivery: String
}

