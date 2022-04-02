//
//  CardActionView.swift
//  AppMusic
//
//  Created by Yago De Moura Silva on 02/04/22.
//

import UIKit

class CardActionView: UIView {
    
    lazy var stackView: UIStackView = {
       let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        return stack
    }()
    
    lazy var downloadView : UIView = {
    let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
