//
//  MovieCoordinator.swift
//  DNA proj
//
//  Created by Камиль Бакаев on 22.02.2021.
//

/// Координатор экрана с информацией о фильме
class MovieCoordinator {
    /// input Presenter'a экрана с инфо о фильме
    var presenter: MoviePresenterInput?

    private let assembler: MovieAssemblerInput
    private let interactor: MovieInteractorInput
    private let router: Router

    /// Инициализатор координатора
    ///
    /// - Parameters:
    ///   - assembler: Ассемблер
    ///   - interactor: Интерактор
    ///   - router: Роутер
    init(
        assembler: MovieAssemblerInput,
        interactor: MovieInteractorInput,
        router: Router
    ) {
        self.assembler = assembler
        self.interactor = interactor
        self.router = router
    }

    /// Запускает координатор
    func start() {
        let module = assembler.makeMovieScene()
        router.setRootModule(module)
    }
}

// MARK: - MoviePresenterOutput

extension MovieCoordinator: MoviePresenterOutput {
    func fetchMovieInfo() {
        interactor.fetchMovieInfo()
    }
}

// MARK: -

extension MovieCoordinator: MovieInteractorOutput {
    func didGetMovieInfo(movieInfo: MovieInfo) {
        presenter?.present(movieInfo: movieInfo)
    }
}
