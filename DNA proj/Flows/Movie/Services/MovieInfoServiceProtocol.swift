//
//  MovieInfoServiceProtocol.swift
//  DNA proj
//
//  Created by Камиль Бакаев on 22.02.2021.
//

typealias MovieInfoCompletionHandler = (
    Result<MovieInfo, Error>
) -> Void

/// Протокол сервиса для работы с информацией о фильме
protocol MovieInfoServiceProtocol {
    /// Сервис для получения информации о фильме
    ///
    /// - Parameters:
    ///     - completion: Обработчик ответа запроса
    func getMovieInfo(
        completion: @escaping MovieInfoCompletionHandler
    )
}
