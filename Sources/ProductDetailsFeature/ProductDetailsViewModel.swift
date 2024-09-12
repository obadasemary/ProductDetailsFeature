//
//  ProductDetailsViewModel.swift
//
//
//  Created by Abdelrahman Mohamed on 11/09/2024.
//

import Foundation
import BrandUseCase
import Combine

public final class ProductDetailsViewModel: ObservableObject {
    
//    private let productAdapters: ProductAdapter
    private let navigationHandler: NavigationActionHandler
    
    // Published property to store brand response and errors
    @Published var productAdapters: BrandUseCase.ProductAdapter
    @Published var isLoading: Bool = false
    
    public init(
        productAdapters: BrandUseCase.ProductAdapter,
        navigationHandler: @escaping ProductDetailsViewModel.NavigationActionHandler
    ) {
        self.productAdapters = productAdapters
        self.navigationHandler = navigationHandler
    }
}

extension ProductDetailsViewModel {
    
}

// MARK: - Navigation
extension ProductDetailsViewModel {
    
    public typealias NavigationActionHandler = (ProductDetailsViewModel.NavigationAction) -> Void
    
    public enum NavigationAction {}
}
