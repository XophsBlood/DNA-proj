//
//  MoviePresenterOutput.swift
//  DNA proj
//
//  Created by Камиль Бакаев on 22.02.2021.
//

/// Протокол output'а для презентера страницы с фильмом
protocol MoviePresenterOutput: AnyObject {
    /// Запрашивает инфо о фильме
    func fetchMovieInfo()
}
