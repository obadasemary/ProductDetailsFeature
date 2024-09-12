//
//  ProductDetailsView.swift
//
//
//  Created by Abdelrahman Mohamed on 11/09/2024.
//

import SwiftUI
import AppDependencyModule
import BrandUI
import BrandRemoteImage
import BrandUseCase

public struct ProductDetailsView: View {
    
    // MARK: - Properties
    @StateObject private var viewModel: ProductDetailsViewModel
    
    // MARK: - Initialization
    init(viewModel: StateObject<ProductDetailsViewModel>) {
        self._viewModel = viewModel
    }
    
    public var body: some View {
        VStack {
            RemoteImageView(resource: viewModel.productAdapters.imageResource)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .cornerRadius(8)
        }
        .navigationTitle(viewModel.productAdapters.name)
    }
}

private extension ProductDetailsView {
    @ViewBuilder
    func makeLoadingStateView() -> some View {
        BrandUILoadingPlaceholderView()
            .padding(.top, BrandUIConstants.spacing8)
            .padding(.horizontal, BrandUIConstants.spacing16)
            .padding(.bottom, BrandUIConstants.spacing24)
    }
}

#Preview {
    let product = BrandUseCase.ProductAdapter.init(
        id: "599203108",
        imagePath: "https://cdn.salla.sa/ydZbx/8f14a689-99d5-4df7-bfe8-0f1568383963-500x341.83673469388-kmz8WtSQD5xNXY3SIhk4LG6ZvyQaWw6zyOmFO8MV.png",
        name: "توكة تنعيم",
        promotionTitle: "Gift",
        subtitle: "غطاء حماية مذهل للهاتف",
        price: 115.0,
        salePrice: 0,
        startingPrice: 11.5
    )
    
    let viewModel = StateObject(
        wrappedValue: ProductDetailsViewModel(
            productAdapters: product,
            navigationHandler: {
                _ in
            }
        )
    )
    
    return ProductDetailsView(viewModel: viewModel)
}
