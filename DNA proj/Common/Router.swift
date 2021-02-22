//
//  Router.swift
//  DNA proj
//
//  Created by Камиль Бакаев on 22.02.2021.
//

import UIKit

/// Описывает роутер
protocol Router {
    /// Устанавливает рут модуль
    ///
    /// - Parameters:
    ///   - module: Модуль
    func setRootModule(_ module: UIViewController)
}
