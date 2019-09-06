//
//  ComicModel.swift
//  Images-Lab
//
//  Created by Eric Widjaja on 9/6/19.
//  Copyright © 2019 Eric Widjaja. All rights reserved.
//

import Foundation
import UIKit

struct XKCDComic: Codable {
    let num: Int
    let img: String
    let title: String
    
    init () {
        self.num = Int()
        self.img = String()
        self.title = String()
        
    }
    
    static func getComic(completionHandler: @escaping (Result<[XKCDComic],AppError>) -> () ) {
        let url = "http://xkcd.com/info.0.json"
        
        NetworkManager.shared.fetchData(urlString: url) { (result) in
            switch result {
            case .failure(let error):
                completionHandler(.failure(error))
            case .success(let data):
                do {
                    let comics = try JSONDecoder().decode([XKCDComic].self, from: data)
                    completionHandler(.success(comics))
                } catch {
                    completionHandler(.failure(.badJSONError))                }
            }
        }
    }
}
