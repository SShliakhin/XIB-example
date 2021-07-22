//
//  TestView.swift
//  Xib2
//
//  Created by SERGEY SHLYAKHIN on 19.07.2021.
//

import UIKit

@IBDesignable class TestView: UIView {

    @IBOutlet var contentView: UIView!
    @IBOutlet weak var mainLabel: UILabel!
    
    @IBInspectable var textLabelText: String {
        get {
            return mainLabel.text!
        }
        set(textLabelText) {
            mainLabel.text = textLabelText
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        let bundle = Bundle(for: type(of: self)) // более универсально что ли
        //let bundle = Bundle(for: TestView.self)
        bundle.loadNibNamed(String(describing: TestView.self), owner: self, options: nil)
        //Bundle.main.loadNibNamed("TestView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }

}
