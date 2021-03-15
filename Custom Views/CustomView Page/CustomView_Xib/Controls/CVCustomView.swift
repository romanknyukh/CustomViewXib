//
//  CVCustomView.swift
//  CustomView_Xib
//
//  Created by Ann Yank on 22.01.21.
//

import UIKit

@IBDesignable
class CVCustomView: UIView {
    // MARK: - Outlets
    @IBOutlet var userImage: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var arrowImage: UIImageView!

    // MARK: - Variables
    @IBInspectable
    var cornerRadius: CGFloat = 0.0 {
        didSet {
            self.layer.cornerRadius = self.cornerRadius
            self.clipsToBounds = true
        }
    }

    @IBInspectable
    var borderWigth: CGFloat = 0.0 {
        didSet {
            self.layer.borderWidth = self.borderWigth
        }
    }

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
