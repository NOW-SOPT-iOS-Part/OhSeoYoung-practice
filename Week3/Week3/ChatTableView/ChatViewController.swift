//
//  ChatViewController.swift
//  Week3
//
//  Created by 오서영 on 2024/04/21.
//

import Foundation
import UIKit
import SnapKit

final class ChatViewController: UIViewController {
    
    private let chatList = ChatModel.dummy() // 더미 데이터 선언
    private let tableView = UITableView(frame: .zero, style: .plain)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setLayout()
        setDelegate()
        register()
    }
    
    private func setLayout() {
        self.view.addSubview(tableView)
        
        tableView.snp.makeConstraints { $0.edges.equalToSuperview() }
    }
    
    private func register() { // ChatTableViewCell의 셀을 등록함
        tableView.register(
            ChatTableViewCell.self, // 등록할 셀
            forCellReuseIdentifier: ChatTableViewCell.identifier // 셀의 식별자
        )
    }
    
    private func setDelegate() { // UIViewController에게 위임
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ChatViewController: UITableViewDelegate { // 선택사항 관리, header, footer 구성, 셀 삭제와 재정렬 등등의 테이블 뷰에서 일어나는 다양한 액션 등을 처리
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat { // 각 행의 높이를 반환
        return 72
    }
}

extension ChatViewController: UITableViewDataSource { // 데이터를 받아 뷰를 그려주는 역할
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { // 섹션(section)별로 해당 섹션의 행(row) 수를 반환하는 메소드
        return chatList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell { // 각 행의 셀(cell) 객체를 반환하는 메소드
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ChatTableViewCell.identifier, for: indexPath) as? ChatTableViewCell else { return UITableViewCell() }
        cell.dataBind(chatList[indexPath.row])
        return cell
    }
}
