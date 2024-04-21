//
//  ViewController.swift
//  Week2
//
//  Created by 오서영 on 2024/04/10.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)
        
        NSLayoutConstraint.activate([
            scrollView.leftAnchor.constraint(equalTo: view.leftAnchor),
            scrollView.rightAnchor.constraint(equalTo: view.rightAnchor),
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        
        let squareSize = CGSize(width: 187, height: 337)
        let colors: [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]
        var yOffset: CGFloat = 0
        
        for (index, color) in colors.enumerated() {
            let row = index / 2
            let column = index % 2
            
            let xPosition = CGFloat(column) * squareSize.width
            let yPosition = CGFloat(row) * squareSize.height
            
            let colorView = UIView(frame: CGRect(
                x: xPosition,
                y: yPosition,
                width: squareSize.width,
                height: squareSize.height)
            )
            colorView.backgroundColor = color
            scrollView.addSubview(colorView)
            
            yOffset = yPosition + squareSize.height
        }
        
        scrollView.contentSize = CGSize(width: squareSize.width * 2, height: yOffset)
    }
}
