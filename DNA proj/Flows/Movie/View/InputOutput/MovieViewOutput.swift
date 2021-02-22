//
//  MovieViewOutput.swift
//  DNA proj
//
//  Created by Камиль Бакаев on 22.02.2021.
//

/// Протокол output'а для вью с информацией о фильме
protocol MovieViewOutput: AnyObject {
    /// Вызывается, когда экран загрузился
    func didLoad()
}
