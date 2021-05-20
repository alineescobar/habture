//
//  GIFPlayerView.swift
//  habture
//
//  Created by Julia Alberti Maia on 19/05/21.
//

import SwiftUI
import UIKit

class GIFPlayerView: UIView {
    private let imageView = UIImageView()

    convenience init(gifName: String) {
       self.init()
       let gif = UIImage.gif(asset: gifName)
       imageView.image = gif
       imageView.contentMode = .scaleAspectFit
       self.addSubview(imageView)
    }

    override init(frame: CGRect) {
       super.init(frame: frame)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = bounds
    }
}

struct GIFView: UIViewRepresentable {
    var gifName: String

    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<GIFView>) {

    }

    func makeUIView(context: Context) -> UIView {
        return GIFPlayerView(gifName: gifName)
    }
}
