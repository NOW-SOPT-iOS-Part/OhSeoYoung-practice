//
//  ContentViewTest.swift
//  Week1-3
//
//  Created by 오서영 on 6/21/24.
//

import UIKit
import SnapKit

class ContentViewTest: UIViewController {
    private let scrollView = UIScrollView()
    private var contentView = UIView()
    
    private let redView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    private let orangeView: UIView = {
        let view = UIView()
        view.backgroundColor = .orange
        return view
    }()
    
    private let yellowView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        return view
    }()
    
    private let greenView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        return view
    }()
    
    private let blueView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        return view
    }()
    
    private let purpleView: UIView = {
        let view = UIView()
        view.backgroundColor = .purple
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLayout()
    }
    
    private func setLayout() {
        self.view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        
        [redView, orangeView, yellowView, greenView, blueView, purpleView].forEach {
            contentView.addSubview($0)
        }

        scrollView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        contentView.snp.makeConstraints { make in
            make.edges.equalTo(scrollView)
            make.width.equalTo(scrollView)
            make.height.greaterThanOrEqualToSuperview().priority(.low)
        }
        
        redView.snp.makeConstraints { make in
            make.top.leading.equalTo(contentView)
            make.height.equalTo(337)
            make.width.equalTo(187)
        }
        
        orangeView.snp.makeConstraints { make in
            make.top.equalTo(contentView)
            make.leading.equalTo(redView.snp.trailing)
            make.height.equalTo(337)
            make.width.equalTo(187)
        }
        
        yellowView.snp.makeConstraints { make in
            make.top.equalTo(redView.snp.bottom)
            make.leading.equalTo(contentView)
            make.height.equalTo(337)
            make.width.equalTo(187)
        }
        
        greenView.snp.makeConstraints { make in
            make.top.equalTo(orangeView.snp.bottom)
            make.leading.equalTo(yellowView.snp.trailing)
            make.height.equalTo(337)
            make.width.equalTo(187)
        }
        
        blueView.snp.makeConstraints { make in
            make.top.equalTo(yellowView.snp.bottom)
            make.leading.equalTo(contentView)
            make.height.equalTo(337)
            make.width.equalTo(187)
            make.bottom.equalTo(contentView)
        }
        
        purpleView.snp.makeConstraints { make in
            make.top.equalTo(greenView.snp.bottom)
            make.leading.equalTo(blueView.snp.trailing)
            make.height.equalTo(337)
            make.width.equalTo(187)
            make.bottom.equalTo(contentView)
        }
    }
    
}
