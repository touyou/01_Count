//
//  CountLabel.swift
//  Count
//
//  Created by 藤井陽介 on 2019/04/23.
//  Copyright © 2019 nagata. All rights reserved.
//

import UIKit

@IBDesignable
public class CountLabel: UILabel {
    public override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }

    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        configure()
    }

    public override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        configure()

        if let text = text {
            let attributes: [NSAttributedString.Key: Any] = [
                NSAttributedString.Key(kCTLanguageAttributeName as String): "ja",
            ]

            attributedText = NSAttributedString(string: text, attributes: attributes)
        }
    }

    private func configure() {
        font = UIFont(name: "Jost*", size: 42)
        textColor = #colorLiteral(red: 0.5141925812, green: 0.5142051578, blue: 0.5141984224, alpha: 1)
    }
}
