//
//  SwitchCell.swift
//  Yelp
//
//  Created by Dhruv Upadhyay on 2/6/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit

@objc protocol SwitchCellDelegate {
    
    optional func switchCell(switchCell: SwitchCell,didChangeValue value: Bool)
    
}

class SwitchCell: UITableViewCell {
    
    weak var delegate: SwitchCellDelegate!
    
    @IBOutlet weak var switchLabel: UILabel!

    
    @IBOutlet weak var onSwitch: UISwitch!


    override func awakeFromNib() {
        super.awakeFromNib()
      
        onSwitch.addTarget(self, action: "switchValueChanged", forControlEvents: UIControlEvents.ValueChanged)
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func switchValueChanged(){
        
        if delegate != nil {
            
            delegate?.switchCell?(self, didChangeValue: onSwitch.on)
            
        }
        
        
    }

}
