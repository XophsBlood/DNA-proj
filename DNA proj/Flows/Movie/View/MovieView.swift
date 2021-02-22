//
//  MovieView.swift
//  DNA proj
//
//  Created by Камиль Бакаев on 22.02.2021.
//

import UIKit
import SnapKit

/// Компонент для отображения страницы с фильмом
class MovieView: UIView {
    /// Текст заголовка
    var titleText: String? {
        didSet {
            updateTitle()
            layoutIfNeeded()
        }
    }

    /// Текст подзаголовка
    var subtitleText: String? {
        didSet {
            updateSubtitle()
            layoutIfNeeded()
        }
    }

    /// Кастомное изображение
    var customImage: UIImage? {
        didSet {
            updateImage()
        }
    }

    private var imageView = UIImageView()

    private lazy var titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.numberOfLines = 1
        titleLabel.font = .boldSystemFont(ofSize: 32)
        titleLabel.textAlignment = .left
        return titleLabel
    }()

    private lazy var subtitleLabel: UILabel = {
        let subtitleLabel = UILabel()
        subtitleLabel.tintColor = .gray
        subtitleLabel.numberOfLines = 3
        return subtitleLabel
    }()

    // MARK: Initialization

    /// Инициализатор для отображения страницы с фильмом
    ///
    /// - Parameters:
    ///   - titleText: Текст заголовка
    ///   - subtitleText: Текст подзаголовка
    init(
        titleText: String? = nil,
        subtitleText: String? = nil
    ) {
        self.titleText = titleText
        self.subtitleText = subtitleText
        super.init(frame: .zero)

        setUpView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: Private

    private func setUpView() {
        setUpImageView()
        setUpTitle()
        setUpSubtitle()
    }

    private func setUpImageView() {
        addSubview(imageView)
        imageView.layer.cornerCurve = .continuous
        imageView.layer.cornerRadius = 8
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.snp.makeConstraints { make in
            make.top.left.right.equalToSuperview().inset(32)
            make.height.equalTo(Appearance.imageHeight)
        }
    }

    private func setUpTitle() {
        addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(20)
            make.right.left.equalToSuperview().inset(16)
        }
    }

    private func setUpSubtitle() {
        let subtitleOffset: CGFloat = 20

        addSubview(subtitleLabel)
        subtitleLabel.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(subtitleOffset)
            make.top.equalTo(titleLabel.snp.bottom).offset(subtitleOffset)
        }
    }

    private func updateImage() {
        guard let customImage = customImage else {
            imageView.isHidden = true
            return
        }
        imageView.image = customImage
        imageView.isHidden = false
    }

    private func updateTitle() {
        guard let titleText = titleText else {
            titleLabel.isHidden = true
            return
        }

        titleLabel.text = titleText
        titleLabel.isHidden = false
    }

    private func updateSubtitle() {
        guard let subtitleText = subtitleText else {
            subtitleLabel.isHidden = true
            return
        }

        subtitleLabel.text = subtitleText
        subtitleLabel.isHidden = false
    }
}

// MARK: - Appearance

extension MovieView {
    private enum Appearance {
        /// Высота изображения
        static let imageHeight: CGFloat = 300
    }
}
