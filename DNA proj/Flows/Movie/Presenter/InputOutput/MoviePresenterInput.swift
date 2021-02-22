//
//  MoviePresenterInput.swift
//  DNA proj
//
//  Created by Камиль Бакаев on 22.02.2021.
//

/// Протокол input'а презентера для экрана с информацией о фильме
protocol MoviePresenterInput {
    /// Показать информацию о фильме
    /// - Parameter movieInfo: Модель с информацией о фильме
    func present(movieInfo: MovieInfo)
}
