//
//  CVBottomLinedButton.swift
//  CustomView_Xib
//
//  Created by Ann Yank on 22.01.21.
//

import UIKit

@IBDesignable
class CVBottomLinedButton: UIButton {
    // MARK: - Outlets
    @IBOutlet var mainButton: UIButton!
    @IBOutlet var bottomLine: UIView!

    // MARK: - Variables
    @IBInspectable
    var buttonTitle: String = "" {
        didSet {
            self.mainButton.setTitle(self.buttonTitle, for: .normal)
        }
    }

    @IBInspectable
    var buttonColor: UIColor = .red {
        didSet {
            self.mainButton.backgroundColor = self.buttonColor
        }
    }

    @IBInspectable
    var lineColor: UIColor = .yellow {
        didSet {
            self.bottomLine.backgroundColor = self.lineColor
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
