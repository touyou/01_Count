//
//  BestLabel.swift
//  Count
//
//  Created by 藤井陽介 on 2019/04/23.
//  Copyright © 2019 nagata. All rights reserved.
//

import UIKit

@IBDesignable
public class BestLabel: UIView {
    @IBOutlet weak var numberLabel: UILabel!

    @IBInspectable var text: String? {
        didSet {
            numberLabel.text = text
        }
    }

    public override init(frame: CGRect) {
        super.init(frame: frame)
        initializeContentView()
    }

    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        initializeContentView()
    }

    public override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()

        backgroundColor = .clear
    }

    private func initializeContentView() {
        backgroundColor = .clear

        let nib = UINib(nibName: "BestLabel", bundle: Bundle(for: BestLabel.self))
        let contentView = nib.instantiate(withOwner: self, options: nil).first as! UIView
        contentView.frame = frame
        addSubview(contentView)
    }
}
