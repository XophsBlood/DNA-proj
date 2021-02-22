//
//  MoviePresenter.swift
//  DNA proj
//
//  Created by Камиль Бакаев on 22.02.2021.
//

/// Презентер для экрана просмотра информации о фильме
class MoviePresenter {
    /// Ссылка на output
    weak var output: MoviePresenterOutput?

    /// Вью презентера
    var view: MovieViewInput?
}

// MARK: - MovieViewOutput

extension MoviePresenter: MovieViewOutput {
    func didLoad() {
        output?.fetchMovieInfo()
    }
}

// MARK: - MoviePresenterInput

extension MoviePresenter: MoviePresenterInput {
    func present(movieInfo: MovieInfo) {
        let imageName = "Poster" + movieInfo.imageName
        view?.show(
            name: movieInfo.name,
            description: movieInfo.description,
            imageName: imageName
        )
    }
}
