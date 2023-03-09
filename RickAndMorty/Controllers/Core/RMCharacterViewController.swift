//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Liron Ezer on 09/03/2023.
//

import UIKit

/// Controller to show and search for Characters
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationItem.largeTitleDisplayMode = .automatic
        title = "Characters"
        
        let request = RMRequest(
            endpoint: .character,
            queryParamaters: [
            URLQueryItem(name: "name", value: "rick"),
            URLQueryItem(name: "status", value: "alive")
            ]
        )
        print(request.url)
        
        RMService.shared.execute(request, expecting: RMCharacter.self) {
            result in 
        }
    }
    

}
