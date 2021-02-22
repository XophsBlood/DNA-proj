//
//  MovieInfoService.swift
//  DNA proj
//
//  Created by Камиль Бакаев on 22.02.2021.
//

import Foundation

/// Сервис для работы с информацией о фильме
class MovieInfoService {
    private let queue = DispatchQueue(label: "Service layer", qos: .userInitiated)
}

// MARK: - MovieInfoServiceProtocol

extension MovieInfoService: MovieInfoServiceProtocol {
    func getMovieInfo(
        completion: @escaping MovieInfoCompletionHandler
    ) {
        queue.async {
            // Имитация запроса на сервер
            sleep(4)
            let movieInfo = MovieInfo(
                id: 666,
                name: "Джентельмены",
                description: "Один ушлый американец ещё со студенческих лет приторговывал наркотиками, а теперь придумал схему нелегального обогащения с использованием поместий обедневшей английской аристократии и очень неплохо на этом разбогател.",
                imageName: "gentlemen"
            )
            completion(.success(movieInfo))
        }
    }
}
