//
//  UserTableViewCell.swift
//  VIPER-Demo
//
//  Created by Manav Prakash on 22/10/21.
//

import UIKit

class UserTableViewCell: UITableViewCell, NibIdentifiable, ClassIdentifiable {
  
  @IBOutlet weak var name: UILabel!
  var cellModel: UserTableCellModel?
  override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
  }
  
  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
    
    // Configure the view for the selected state
  }
  
  func configure(with cellModel: UserTableCellModel) {
    self.cellModel = cellModel
    name.text = cellModel.data.name
  }
  
}
