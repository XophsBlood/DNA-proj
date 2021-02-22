//
//  MovieViewController.swift
//  DNA proj
//
//  Created by Камиль Бакаев on 22.02.2021.
//

import UIKit

/// Вью-контроллер контента на экране с информацией о фильме
class MovieViewController: UIViewController {
    /// Output
    weak var output: MovieViewOutput?

    private let movieView = MovieView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpBackground()
        setUpView()
        setUpNavigationBar()
        output?.didLoad()
    }

    private func setUpBackground() {
        view.backgroundColor = .gray
    }

    private func setUpView() {
        view.addSubview(movieView)
        movieView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.topMargin)
            make.left.bottom.right.equalToSuperview()
        }
    }

    private func setUpNavigationBar() {
        title = "Информация о фильме"
    }
}

// MARK: - MovieViewInput

extension MovieViewController: MovieViewInput {
    func show(name: String, description: String, imageName: String) {
        movieView.titleText = name
        movieView.subtitleText = description
        movieView.customImage = UIImage(named: imageName)
    }
}
