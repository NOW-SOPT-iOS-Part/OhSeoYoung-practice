//
//  ContentView.swift
//  Week1-3
//
//  Created by 오서영 on 6/21/24.
//
import UIKit
import SnapKit

class ContentView: UIViewController {
    
    private let scrollView = UIScrollView()
    private var contentView = UIView()
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLayout()
    }
    
    private func setLayout() {
        self.view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        
        [greenView, blueView].forEach {
            contentView.addSubview($0)
        }

        scrollView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        contentView.snp.makeConstraints { make in
            make.edges.equalTo(scrollView)
            make.width.equalTo(scrollView)
            make.height.greaterThanOrEqualToSuperview().priority(.low) // contentView의 height가 scrollView의 height보다 크거나 같도록 설정합니다. 우선순위는 낮습니다.
        }
        
        greenView.snp.makeConstraints { make in
            make.top.leading.trailing.equalTo(contentView)
            make.height.equalTo(800)
        }
        
        blueView.snp.makeConstraints { make in
            make.top.equalTo(greenView.snp.bottom)
            make.leading.trailing.equalTo(contentView)
            make.height.equalTo(800)
            make.bottom.equalTo(contentView) // contentView의 마지막 요소로, bottom을 설정합니다.
        }
    }
}
