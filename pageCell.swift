//
//  pageCell.swift
//  AutoLayout
//
//  Created by Phi Hoang Huy on 2/17/19.
//  Copyright © 2019 Phi Hoang Huy. All rights reserved.
//

import UIKit

class pageCell: UICollectionViewCell {
    let imageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "bear_first"))
        // open auto layout for imageView
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    let Desciption: UITextView = {
        let textView = UITextView()
        let attributedText = NSMutableAttributedString(string: "Join us today in our fun and games!", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 15)])
        attributedText.append(NSAttributedString(string: "\n\nAre you ready for loads and loads of fun!\nDon't wait any longer,\nwe hope to see you in out store soon.", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray, NSMutableAttributedString.Key.font: UIFont.systemFont(ofSize: 12)]))
        textView.attributedText = attributedText
        textView.isEditable = false
        textView.isSelectable = false
        textView.isScrollEnabled = false
        // open autolayout for description text view
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        return textView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setUpLayout()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func setUpLayout() {
        // Create imageContainer
        let imageContainer = UIView()
        imageContainer.translatesAutoresizingMaskIntoConstraints = false
        addSubview(imageContainer)
        imageContainer.addSubview(imageView)
        imageContainer.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5).isActive = true
        imageContainer.topAnchor.constraint(equalTo:topAnchor).isActive = true
        imageContainer.leadingAnchor.constraint(equalTo:leadingAnchor).isActive = true
        imageContainer.trailingAnchor.constraint(equalTo:trailingAnchor).isActive = true
        // Auto Layout for imageView
        imageView.centerXAnchor.constraint(equalTo: imageContainer.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: imageContainer.centerYAnchor).isActive = true
        imageView.heightAnchor.constraint(equalTo: imageContainer.heightAnchor, multiplier: 0.7).isActive = true
        // Auto Layout for description text view
        addSubview(Desciption)
        Desciption.topAnchor.constraint(equalTo: imageContainer.bottomAnchor).isActive = true
        Desciption.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        Desciption.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
    }
}
