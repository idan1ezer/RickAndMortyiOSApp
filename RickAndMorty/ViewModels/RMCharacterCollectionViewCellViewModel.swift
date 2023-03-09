//
//  RMCharacterCollectionViewCellViewModel.swift
//  RickAndMorty
//
//  Created by Liron Ezer on 09/03/2023.
//

import Foundation

final class RMCharacterCollectionViewCellViewModel {
    public let characterName: String
    public let characterStatusText: String
    private let characterImageUrl: URL?
    
    init(
        characterName: String,
        characterStatusText: String,
        characterImageUrl: URL?
    ) {
        self.characterName = characterName
        self.characterStatusText = characterStatusText
        self.characterImageUrl = characterImageUrl
    }
    
    public func fetchImage(completion: @escaping (Result<Data, Error>) -> Void) {
        //TOOD: Abstract to Image Manager
        
        guard let url = characterImageUrl else {
            completion(.failure(URLError(.badURL)))
            return
        }
        
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) {data, _, error in
            guard let data = data, error == nil else {
                completion(.failure(error ?? URLError(.badServerResponse)))
                return
            }
            completion(.success(data))
        }
        task.resume()
    }
}
