//
//  MovieAssemblerInput.swift
//  DNA proj
//
//  Created by Камиль Бакаев on 22.02.2021.
//

import UIKit

/// Протокол input'а для ассемблера сцены с инфо о фильме
protocol MovieAssemblerInput {
    /// Создаёт экран с инфо о фильме
    /// - Returns: Вью-контроллер
    func makeMovieScene() -> UIViewController
}
