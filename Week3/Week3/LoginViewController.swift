//
//  LoginViewController.swift
//  Week3
//
//  Created by 오서영 on 2024/04/21.
//

import Foundation
import UIKit

final class LoginViewController_CustomView: UIViewController {
    
    private let rootView = LoginView()

    override func loadView() {
        self.view = rootView
    }
}
