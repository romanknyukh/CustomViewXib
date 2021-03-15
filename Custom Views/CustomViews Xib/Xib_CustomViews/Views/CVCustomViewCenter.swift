//
//  CVCustomViewCenter.swift
//  Xib_CustomViews
//
//  Created by Ann Yank on 23.01.21.
//

import UIKit

@IBDesignable
class CVCustomViewCenter: UIView {
    // MARK: - Outlets
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var textField: UILabel!
    @IBOutlet var bottomLine: UIView!
    @IBOutlet weak var rightImageView: UIImageView!

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
