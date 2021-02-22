//
//  CoordinatorFactoryImpl.swift
//  DNA proj
//
//  Created by Камиль Бакаев on 22.02.2021.
//

import UIKit

/// Фабрика координаторов
class CoordinatorFactoryImpl {
    /// Создает координатор флоу экрана фильма
    /// - Parameters:
    ///     - navigationController: Навигейшн контроллер
    func makeMovieCoordinator(navigationController: UINavigationController) -> MovieCoordinator {
        let interactor = MovieInteractor()
        let service = MovieInfoService()
        interactor.movieService = service
        let assembler = MovieAssembler()
        let router = RouterImpl(navigationController: navigationController)
        let coordinator = MovieCoordinator(assembler: assembler, interactor: interactor, router: router)
        assembler.coordinator = coordinator
        interactor.output = coordinator
        return coordinator
    }
}
