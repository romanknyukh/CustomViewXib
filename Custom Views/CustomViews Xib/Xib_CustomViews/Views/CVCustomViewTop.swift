//
//  CVCustomViewTop.swift
//  Xib_CustomViews
//
//  Created by Ann Yank on 23.01.21.
//

import UIKit

@IBDesignable
class CVCustomViewTop: UIView {
    // MARK: - Outlets
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var centeredLine: UIView!
    @IBOutlet weak var descriptionLabel: UILabel!

    // MARK: - Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)

        self.loadFromNib()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)

        self.loadFromNib()
    }
}

