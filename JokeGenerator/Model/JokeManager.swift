//
//  JokeManager.swift
//  JokeGenerator
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 19/12/20.
//

import Foundation

protocol JokeManagerDelegate {
    func didUpdateJoke(_ jokeManager: JokeManager, jokeModel: JokeModel)
    func didFailWithError(error: Error)
}

struct JokeManager {
    
    var delegate: JokeManagerDelegate?
    
    func getData(){
        let url = URL(string: "https://sv443.net/jokeapi/v2/joke/Any")
        
        let task = URLSession.shared.dataTask(with: url!) {(data,response,error) in
            if error != nil {
                self.delegate?.didFailWithError(error: error!)
                return
            }
            if let safeData = data {
                if let jok = self.parseJson(jokeData: safeData){
                    self.delegate?.didUpdateJoke(self, jokeModel: jok)
                }
            }
        }
        task.resume()
    }
    
    func parseJson(jokeData: Data) -> JokeModel? {
        let decoder = JSONDecoder()
        do{
            let decoderData = try decoder.decode(JokeData.self, from: jokeData)
            let question = decoderData.setup
            let answer = decoderData.delivery
            
            let joke = JokeModel(questionStr: question, answerStr: answer)
            
            return joke
        } catch {
            delegate?.didFailWithError(error: error)
            return nil
        }
    }
}
