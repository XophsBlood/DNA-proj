//
//  MovieViewInput.swift
//  DNA proj
//
//  Created by Камиль Бакаев on 22.02.2021.
//

/// Протокол input'а для вью с информацией о фильме
protocol MovieViewInput: AnyObject {
    /// Показать информацию о фильме
    /// - Parameters:
    ///  - name: Название
    ///  - description: Описание
    ///  - imageName: Название картинки
    func show(name: String, description: String, imageName: String)
}
