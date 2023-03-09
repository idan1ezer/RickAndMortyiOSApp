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
        
        RMService.shared.execute(.listCharactersRequest,
                                 expecting: RMGetAllCharactersResponse.self) { result in
            switch result {
            case .success(let model):
                print("Total: " + String(model.info.count))
                print("Page result counter: " + String(model.results.count))
            case .failure(let error):
                print(String(describing: error))
            }
        }
    }
    

}
