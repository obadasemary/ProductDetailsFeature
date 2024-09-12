//
//  ProductDetailsBuilder.swift
//  
//
//  Created by Abdelrahman Mohamed on 12/09/2024.
//

import SwiftUI
import BrandUseCase

public struct ProductDetailsBuilder {
    
    private init() { }
    
    public static func build(
        productAdapters: BrandUseCase.ProductAdapter,
        navigationHandler: @escaping ProductDetailsViewModel.NavigationActionHandler
    ) -> UIViewController {
        let viewModel = ProductDetailsViewModel(
            productAdapters: productAdapters,
            navigationHandler: navigationHandler
        )
        let view = ProductDetailsView(viewModel: .init(wrappedValue: viewModel))
        return UIHostingController(rootView: view)
    }
}
