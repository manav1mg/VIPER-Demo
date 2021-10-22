//
//  UserListViewController.swift
//  VIPER-Demo
//
//  Created by Manav Prakash on 22/10/21.
//  Copyright (c) 2021 Manav. All rights reserved.
//


import UIKit

final class UserListViewController: UIViewController, UserListViewProtocol {
  
  // MARK: - Public properties -
  var presenter: UserListPresenterProtocol!
  
  @IBOutlet private weak var tableView: UITableView!
  
  // MARK: - Lifecycle -
  override func viewDidLoad() {
    super.viewDidLoad()
    configureTableView()
    presenter.viewDidLoad()
  }
  
  func configureTableView() {
    tableView.dataSource = self
    tableView.delegate = self
    tableView.tableFooterView = UIView(frame: CGRect.zero)
    tableView.tableHeaderView = UIView(frame: CGRect.zero)
    tableView.separatorStyle = .none
    tableView.register(cellType: UserTableViewCell.self)
  }
  
}

// MARK: - Extensions -

extension UserListViewController: UITableViewDataSource, UITableViewDelegate {
  
  func reloadTableView() {
    tableView.reloadData()
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return presenter?.numberOfRows() ?? 0
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cellModel = presenter.cellModelForRow(indexPath: indexPath)
    let cell = tableView.dequeueReusableCell(withIdentifier: cellModel.type.cellIdentifier, for: indexPath) as? UserTableViewCell
    cell?.configure(with: cellModel)
    return cell ?? UITableViewCell()
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    presenter.userSelected(at: indexPath)
  }
  
}
