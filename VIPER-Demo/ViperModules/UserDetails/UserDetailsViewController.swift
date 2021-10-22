//
//  UserDetailsViewController.swift
//  VIPER-Demo
//
//  Created by Manav Prakash on 22/10/21.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//


import UIKit

final class UserDetailsViewController: UIViewController {
  
  // MARK: - Public properties -
  
  @IBOutlet weak var name: UILabel!
  @IBOutlet weak var email: UILabel!
  @IBOutlet weak var phone: UILabel!
  @IBOutlet weak var address: UILabel!
  @IBOutlet weak var company: UILabel!
  var presenter: UserDetailsPresenterProtocol!
  
  // MARK: - Lifecycle -
  
  override func viewDidLoad() {
    super.viewDidLoad()
    presenter.viewDidLoad()
  }
  
}

// MARK: - Extensions -

extension UserDetailsViewController: UserDetailsViewProtocol {
  func showUserDetail(user: UserEntity) {
    self.name.text = user.name
    self.email.text = user.email
    self.phone.text = user.phone
    self.address.text = user.address?.description
    self.company.text = user.company?.name
  }
  
}
