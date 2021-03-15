//
//  CVCustomViewBottom.swift
//  Xib_CustomViews
//
//  Created by Ann Yank on 23.01.21.
//

import UIKit

@IBDesignable
class CVCustomViewBottom: UIView {
    // MARK: - Outlets
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet var line: UIView!
    @IBOutlet weak var nameTextField: UILabel!
    @IBOutlet weak var surnameTextField: UILabel!
    
    // MARK: - Variables
    @IBInspectable
    var isCircled: Bool = true {
        didSet {
            self.setupProperties()
        }
    }

    @IBInspectable
    var imageName: String = "user" {
        didSet {
            self.setupProperties()
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
    
    // MARK: - IB Methods
    override func prepareForInterfaceBuilder() {
        self.setupProperties()
    }

    // MARK: - View Methods
    override func layoutSubviews() {
        super.layoutSubviews()

        self.setupProperties()
    }
    
    // MARK: - Methods
    private func setupProperties() {
        self.imageView.contentMode = .scaleAspectFill
        self.imageView.image = UIImage(named: self.imageName)
        self.imageView.clipsToBounds = true
        
        self.mainView.layer.cornerRadius = self.isCircled ? 100 : 0
        self.mainView.layer.borderWidth = 3
        self.mainView.layer.borderColor = UIColor.black.cgColor
        
        self.nameTextField.font = .systemFont(ofSize: 17)
        self.nameTextField.backgroundColor = #colorLiteral(red: 1, green: 0.357801795, blue: 0.2862297893, alpha: 1)
        self.nameTextField.textColor = .white
        
        self.surnameTextField.font = .systemFont(ofSize: 17)
        self.surnameTextField.backgroundColor = #colorLiteral(red: 1, green: 0.357801795, blue: 0.2862297893, alpha: 1)
        self.surnameTextField.textColor = .white
    }
}

