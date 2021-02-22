//
//  MovieInteractorOutput.swift
//  DNA proj
//
//  Created by Камиль Бакаев on 22.02.2021.
//

/// Протокол output'а для интерактора флоу информации о фильме
protocol MovieInteractorOutput: AnyObject {
    /// Вызывается, когда требуется отобразить полученную информацию о фильме
    ///
    /// - Parameter movieInfo: Модель информации о фильме
    func didGetMovieInfo(movieInfo: MovieInfo)
}
