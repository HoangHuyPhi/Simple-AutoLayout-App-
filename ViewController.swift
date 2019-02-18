//
//  ViewController.swift
//  AutoLayout
//
//  Created by Phi Hoang Huy on 2/16/19.
//  Copyright © 2019 Phi Hoang Huy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
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
    let prevButton: UIButton = {
        let Button = UIButton()
        Button.setTitle("PREVIOUS", for: .normal)
        Button.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        Button.setTitleColor(.red, for: .normal)
        Button.translatesAutoresizingMaskIntoConstraints = false
        return Button
    }()
    let nextButton : UIButton = {
        let Button = UIButton()
        Button.setTitle("NEXT", for: .normal)
        Button.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        Button.setTitleColor(.blue, for: .normal)
        Button.translatesAutoresizingMaskIntoConstraints = false
        return Button
    }()
    let pageControl: UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.currentPage = 0
        pageControl.numberOfPages = 4
        pageControl.currentPageIndicatorTintColor = .yellow
        pageControl.pageIndicatorTintColor = .gray
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        return pageControl
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = .white
        view.addSubview(Desciption)
        setUpAutoLayout()
}
    func setUpAutoLayout() {
        // Create bottomContainer Stack View to stack prevButton, nextButton and pageControl
        let bottomContainer = UIStackView()
        bottomContainer.translatesAutoresizingMaskIntoConstraints = false
        bottomContainer.distribution = .fillEqually
        view.addSubview(bottomContainer)
        bottomContainer.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        bottomContainer.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        bottomContainer.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        bottomContainer.heightAnchor.constraint(equalToConstant: 50).isActive = true
        bottomContainer.addArrangedSubview(prevButton)
        bottomContainer.addArrangedSubview(pageControl)
        bottomContainer.addArrangedSubview(nextButton)
        // Create imageContainer
        let imageContainer = UIView()
        imageContainer.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageContainer)
        imageContainer.addSubview(imageView)
        imageContainer.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        imageContainer.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        imageContainer.leadingAnchor.constraint(equalTo:view.leadingAnchor).isActive = true
        imageContainer.trailingAnchor.constraint(equalTo:view.trailingAnchor).isActive = true
        // Auto Layout for imageView
        imageView.centerXAnchor.constraint(equalTo: imageContainer.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: imageContainer.centerYAnchor).isActive = true
        imageView.heightAnchor.constraint(equalTo: imageContainer.heightAnchor, multiplier: 0.7).isActive = true
        // Auto Layout for description text view
        Desciption.topAnchor.constraint(equalTo: imageContainer.bottomAnchor).isActive = true
        Desciption.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
        Desciption.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15).isActive = true
    }
}

