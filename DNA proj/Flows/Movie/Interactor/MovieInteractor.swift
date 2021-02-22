//
//  MovieInteractor.swift
//  DNA proj
//
//  Created by Камиль Бакаев on 22.02.2021.
//

import Foundation

/// Интерактор для флоу с информацией о фильме
final class MovieInteractor {
    /// Ссылка на output
    weak var output: MovieInteractorOutput?

    /// Ссылка на сервис для работы с информацией о фильме
    var movieService: MovieInfoServiceProtocol?
}

// MARK: - MovieInteractorInput

extension MovieInteractor: MovieInteractorInput {
    func fetchMovieInfo() {
        movieService?.getMovieInfo { [weak self] result in
            guard let self = self else { return }
            DispatchQueue.main.async {
                switch result {
                case .success(let movieInfo):
                    self.output?.didGetMovieInfo(movieInfo: movieInfo)
                case .failure:
                    fatalError("В нашем приложении отсутствует обработка ошибок:(")
                }
            }
        }
    }
}
