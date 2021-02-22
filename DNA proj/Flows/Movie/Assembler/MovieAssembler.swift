//
//  MovieAssembler.swift
//  DNA proj
//
//  Created by Камиль Бакаев on 22.02.2021.
//

import UIKit

/// Данный ассемблер собирает контроллер для флоу инфо о фильме и связывает
/// вью контроллер, презентер и координатор вместе.
class MovieAssembler {
    /// Ссылка на координатор. Должна быть != nil, чтобы координатор присваивался output'ам презентеров
    weak var coordinator: MovieCoordinator?
}

extension MovieAssembler: MovieAssemblerInput {
    func makeMovieScene() -> UIViewController {
        let view = MovieViewController()
        let presenter = MoviePresenter()
        presenter.view = view
        view.output = presenter
        presenter.output = coordinator
        coordinator?.presenter = presenter

        return view
    }
}
