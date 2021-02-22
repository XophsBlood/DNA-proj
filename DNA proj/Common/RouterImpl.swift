//
//  RouterImpl.swift
//  DNA proj
//
//  Created by Камиль Бакаев on 22.02.2021.
//

import UIKit

/// Роутер
class RouterImpl: Router {
    private let navigationController: UINavigationController

    /// Инициализатор роутера
    /// 
    /// - Parameters:
    ///   - navigationController: Навигейшн контроллер
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func setRootModule(_ module: UIViewController) {
        navigationController.setViewControllers([module], animated: false)
    }
}
