//
//  MenuRouter.swift
//  connect4
//
//  Created by Fernando Salom Carratala on 20/12/22.
//

import Foundation
import UIKit

final class MenuRouter {
    weak var viewController: UIViewController?

    init(viewController: UIViewController?) {
        self.viewController = viewController
    }

    func goToGame(){
        let storyboard = UIStoryboard(name: "GameView", bundle: nil)
        let gameController = storyboard.instantiateViewController(identifier: "GameView") as GameController
        gameController.modalPresentationStyle = .fullScreen
        viewController?.present(gameController, animated: true)
    }
}
