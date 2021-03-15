//
//  ViewController.swift
//  CustomView_Xib
//
//  Created by Ann Yank on 22.01.21.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - Outlets
    @IBOutlet weak var topButton: CVBorderedButton!

    // MARK: - Life Cicle
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Methods
    private func printMessage() {
        print("I am topButton. I was pressed!")
    }
}
