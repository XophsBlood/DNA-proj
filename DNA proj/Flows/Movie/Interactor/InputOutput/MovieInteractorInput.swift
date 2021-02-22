//
//  MovieInteractorInput.swift
//  DNA proj
//
//  Created by Камиль Бакаев on 22.02.2021.
//

/// Протокол input'а для интерактора экрана фильма
protocol MovieInteractorInput: AnyObject {
    /// Вызывается, когда требуется получить информацию о фильме
    func fetchMovieInfo()
}
