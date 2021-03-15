//
//  CVBorderedButton.swift
//  CustomView_Xib
//
//  Created by Ann Yank on 22.01.21.
//

import UIKit

@IBDesignable
class CVBorderedButton: UIButton {
    // MARK: - Closures
    var action: (() -> Void)?

    // MARK: - Variables
    @IBInspectable
    var cornerRadius: CGFloat = 5 {
        didSet {
            self.layer.cornerRadius = self.cornerRadius
        }
    }

    @IBInspectable
    var borderWidth: CGFloat = 3 {
        didSet {
            self.layer.borderWidth = self.borderWidth
        }
    }

    @IBInspectable
    var borderColor: UIColor = .black {
        didSet {
            self.layer.borderColor = self.borderColor.cgColor
        }
    }

    @IBInspectable
    var isShadowEnabled: Bool = false {
        didSet {
            self.setupShadow()
        }
    }

    // MARK: - IB Methods
    override func prepareForInterfaceBuilder() {
        self.setupButtonProperties()
        self.setupShadow()
    }

    // MARK: - View Life Cicle
    override func layoutSubviews() {
        super.layoutSubviews()

        self.setupButtonProperties()
        self.setupShadow()

        self.addTarget(self,
                       action: #selector(self.buttonPressed),
                       for: .touchUpInside)
    }

    // MARK: - Methods
    private func setupButtonProperties() {
        self.layer.cornerRadius = self.cornerRadius
        self.layer.borderWidth = self.borderWidth
        self.layer.borderColor = self.borderColor.cgColor
    }

    private func setupShadow() {
        self.layer.shadowColor = self.isShadowEnabled
            ? UIColor.red.cgColor
            : UIColor.clear.cgColor
        self.layer.shadowRadius = self.isShadowEnabled ? self.cornerRadius : 0
        self.layer.shadowOpacity = self.isShadowEnabled ? 1 : 0
        self.layer.shadowOffset = CGSize(width: 5, height: 5)
    }

    // MARK: - Button Methods
    @objc private func buttonPressed() {
        self.action?()
    }
}

