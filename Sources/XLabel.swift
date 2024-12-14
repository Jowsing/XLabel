//
//  XLabel.swift
//  Pods
//
//  Created by jowsing on 2024/12/14.
//

import UIKit

public class XLabel: UILabel {

    public var hideOnTextEmpty = false {
        didSet {
            self.isHidden = hideOnTextEmpty && text?.isEmpty != false
        }
    }
    
    public var textInserts = UIEdgeInsets.zero
    
    public override var text: String? {
        didSet {
            if hideOnTextEmpty {
                self.isHidden = text?.isEmpty != false
            }
        }
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func drawText(in rect: CGRect) {
        super.drawText(in: rect.inset(by: textInserts))
    }
    
    public override func textRect(forBounds bounds: CGRect, limitedToNumberOfLines numberOfLines: Int) -> CGRect {
        var rect = super.textRect(forBounds: bounds.inset(by: textInserts), limitedToNumberOfLines: numberOfLines)
        rect.size.width += (textInserts.left + textInserts.right)
        rect.size.height += (textInserts.top + textInserts.bottom)
        return rect
    }

}
