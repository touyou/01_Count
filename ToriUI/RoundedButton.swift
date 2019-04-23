//
//  RoundedButton.swift
//  ToriUI
//
//  Created by 藤井陽介 on 2019/04/23.
//  Copyright © 2019 nagata. All rights reserved.
//

import UIKit

@IBDesignable
public class RoundedButton: UIButton {
    public override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configure()
    }

    public override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        configure()

        if let title = title(for: state) {
            let attributes: [NSAttributedString.Key: Any] = [
                NSAttributedString.Key(kCTLanguageAttributeName as String): "ja",
            ]

            titleLabel?.attributedText = NSAttributedString(string: title, attributes: attributes)
        }
    }

    public override var intrinsicContentSize: CGSize {
        var size = super.intrinsicContentSize
        size.height = 72

        if let titleLabel = titleLabel {
            size.width = titleLabel.intrinsicContentSize.width + 48
        }

        return size
    }

    private func configure() {
        backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
        layer.cornerRadius = 36
        titleLabel?.font = UIFont(name: "Jost*", size: 38)
        setTitleColor(#colorLiteral(red: 0.5141925812, green: 0.5142051578, blue: 0.5141984224, alpha: 1), for: .normal)

        layer.shadowOpacity = 0.16
        layer.shadowOffset = CGSize(width: 0, height: 3)
        layer.shadowRadius = 6
        layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
}
