//
//  CVCircledImageView.swift
//  CustomView_Xib
//
//  Created by Ann Yank on 22.01.21.
//

import UIKit

@IBDesignable
class CVCircledImageView: UIImageView {
    // MARK: - Variables
    @IBInspectable
    var isCircled: Bool = false {
        didSet {
            self.setupImageProperties()
        }
    }

    @IBInspectable
    var imageName: String = "Daenerys" {
        didSet {
            self.setupImageProperties()
        }
    }
    
    // MARK: - IB Methods
    override func prepareForInterfaceBuilder() {
        self.setupImageProperties()
    }

    // MARK: - View Methods
    override func layoutSubviews() {
        super.layoutSubviews()

        self.setupImageProperties()
    }

    // MARK: - Methods
    private func setupImageProperties() {
        self.contentMode = .scaleAspectFill
        self.image = UIImage(named: self.imageName)
        self.layer.cornerRadius = self.isCircled ? self.bounds.height / 2 : 0
    }
}

