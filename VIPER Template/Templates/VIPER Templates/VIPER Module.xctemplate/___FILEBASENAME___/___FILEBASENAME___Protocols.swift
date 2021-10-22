//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___VARIABLE_moduleName___WireframeProtocol: AnyObject {
}

protocol ___VARIABLE_moduleName___ViewProtocol: AnyObject {
  var presenter: UserListPresenterProtocol! { get set }
}

protocol ___VARIABLE_moduleName___PresenterProtocol: AnyObject {
  var view: UserListViewProtocol? { get set }
}

protocol ___VARIABLE_moduleName___InteractorProtocol: AnyObject {
}
