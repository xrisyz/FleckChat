//
//  SeperatorView.swift
//  Fleck
//
//  Created by Chris Karani on 3/22/18.
//  Copyright © 2018 Christopher Karani. All rights reserved.
//

import UIKit

/*
## Important Notes ##
1. Default height is 1.0
2. Default backgroundColor is UIColor.lightGray
*/
open class SeparatorLine: UIView {
    
    // MARK: - Properties
    
    /// The height of the line
    open var height: CGFloat = 1.0 {
        didSet {
            invalidateIntrinsicContentSize()
        }
    }
    
    open override var intrinsicContentSize: CGSize {
        return CGSize(width: super.intrinsicContentSize.width, height: height)
    }
    
    // MARK: - Initialization
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    /// Sets up the default properties
    open func setup() {
        backgroundColor = .lightGray
        translatesAutoresizingMaskIntoConstraints = false
        setContentHuggingPriority(.defaultHigh, for: .vertical)
    }
}

